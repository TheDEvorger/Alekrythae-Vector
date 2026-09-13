
'use strict';
const http = require('node:http');
const path = require('node:path');
const fs = require('node:fs');
const { Worker } = require('node:worker_threads');

const HOST = '127.0.0.1';
const PORT = Number(process.env.ALEK_VECTOR_PORT || 17324);
const ROOT = __dirname;
const PID_FILE = path.join(ROOT, 'engine.pid');
let activeWorker = null;
let activeRequestId = 0;

function cors(req, res) {
  const origin = String(req.headers.origin || '');
  res.setHeader('Access-Control-Allow-Origin', origin || '*');
  res.setHeader('Vary', 'Origin, Access-Control-Request-Private-Network');
  res.setHeader('Access-Control-Allow-Methods', 'GET,POST,OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Accept, Origin');
  res.setHeader('Access-Control-Max-Age', '600');
  res.setHeader('Access-Control-Allow-Private-Network', 'true');
  res.setHeader('Cross-Origin-Resource-Policy', 'cross-origin');
}
function send(res, code, text, type='text/plain; charset=utf-8') {
  if (res.writableEnded) return;
  res.statusCode = code;
  res.setHeader('Content-Type', type);
  res.setHeader('Cache-Control', 'no-store');
  res.end(text);
}
function clamp(v, lo, hi, fallback=0) {
  v = Number(v); if (!Number.isFinite(v)) v = fallback;
  return Math.max(lo, Math.min(hi, v));
}
function int(v, lo, hi, fallback=0) { return Math.round(clamp(v, lo, hi, fallback)); }
function readBody(req, maxBytes) {
  return new Promise((resolve, reject) => {
    const chunks=[]; let size=0;
    req.on('data', chunk => {
      size += chunk.length;
      if (size > maxBytes) { reject(new Error('Input is too large')); req.destroy(); return; }
      chunks.push(chunk);
    });
    req.on('end', () => resolve(Buffer.concat(chunks)));
    req.on('error', reject);
  });
}
function normalizeConfig(url) {
  const q=url.searchParams;
  return {
    mode: q.get('mode') === 'mono' ? 'mono' : 'color',
    maxColors: int(q.get('maxColors'), 2, 1024, 768),
    filterSpeckle: int(q.get('filterSpeckle'), 0, 128, 4),
    colorPrecision: int(q.get('colorPrecision'), 1, 8, 8),
    layerDifference: int(q.get('layerDifference'), 0, 255, 6),
    cornerThreshold: int(q.get('cornerThreshold'), 0, 180, 60),
    lengthThreshold: clamp(q.get('lengthThreshold'), 3.5, 10, 4),
    maxIterations: int(q.get('maxIterations'), 1, 32, 10),
    spliceThreshold: int(q.get('spliceThreshold'), 0, 180, 45),
    simplify: clamp(q.get('simplify'), 0, 8, 1.0),
    pathPrecision: int(q.get('pathPrecision'), 0, 8, 4),
    optimize: int(q.get('optimize'), 0, 2, 1),
    binaryThreshold: int(q.get('binaryThreshold'), 0, 255, 128),
    hierarchical: 'stacked'
  };
}

const server = http.createServer(async (req,res) => {
  cors(req,res);
  if (req.method === 'OPTIONS') { res.statusCode=204; res.end(); return; }
  const url = new URL(req.url, `http://${HOST}:${PORT}`);
  if (url.pathname === '/health') {
    send(res,200,JSON.stringify({ok:true,engine:'@visioncortex/vtracer',vtracer:'1.0.0-alpha.3',pipeline:'photo/stacked',transport:'local-node-worker',pid:process.pid,version:'0.1.0'}),'application/json; charset=utf-8');
    return;
  }
  if (url.pathname !== '/vectorize' || req.method !== 'POST') { send(res,404,'not_found'); return; }

  const width=int(url.searchParams.get('width'),1,32768,0);
  const height=int(url.searchParams.get('height'),1,32768,0);
  if (!width || !height) { send(res,400,'invalid_dimensions'); return; }
  const expected=width*height*4;
  if (!Number.isSafeInteger(expected) || expected > 1024*1024*1024) { send(res,413,'image_too_large'); return; }

  let body;
  try { body=await readBody(req, expected+1024); }
  catch(e) { send(res,413,String(e.message||e)); return; }
  if (body.length !== expected) { send(res,400,`rgba_size_mismatch:${body.length}/${expected}`); return; }

  if (activeWorker) { try { await activeWorker.terminate(); } catch(_){} activeWorker=null; }
  const requestId=++activeRequestId;
  const pixels=Uint8Array.from(body);
  const config=normalizeConfig(url);
  const worker=new Worker(path.join(ROOT,'vector-worker.cjs'), {
    workerData:{pixels:pixels.buffer,width,height,config,mock:process.env.ALEK_VECTOR_MOCK==='1'},
    transferList:[pixels.buffer]
  });
  activeWorker=worker;
  let settled=false;
  const finish=()=>{ if(activeWorker===worker) activeWorker=null; };
  res.on('close',()=>{ if(!settled && !res.writableEnded){ try{worker.terminate()}catch(_){} finish(); } });
  worker.once('message', msg => {
    if (activeWorker!==worker || requestId!==activeRequestId) return;
    settled=true; finish();
    if (!msg || !msg.ok) { send(res,500,String(msg?.error||'vectorizer_failed')); return; }
    const svg=String(msg.svg||'');
    if (!svg.includes('<svg')) { send(res,500,'vectorizer_empty_svg'); return; }
    send(res,200,svg,'image/svg+xml; charset=utf-8');
  });
  worker.once('error', err => { settled=true; finish(); send(res,500,String(err?.stack||err)); });
  worker.once('exit', code => { if(!settled && code!==0){ settled=true; finish(); send(res,500,`vectorizer_worker_exit:${code}`); } });
});

server.on('error', err => {
  if (err && err.code === 'EADDRINUSE') process.exit(0);
  console.error(err); process.exit(1);
});
server.listen(PORT, HOST, () => {
  try { fs.writeFileSync(PID_FILE,String(process.pid)); } catch(_){}
  console.log(`[Ałek’ryŧhæ Vector Engine 0.1.0] ${HOST}:${PORT} pid=${process.pid} VTracer=1.0.0-alpha.3 photo/stacked`);
});
function cleanup(){ try{fs.unlinkSync(PID_FILE)}catch(_){} }
process.on('exit',cleanup);
process.on('SIGTERM',()=>{cleanup();process.exit(0)});
process.on('SIGINT',()=>{cleanup();process.exit(0)});
