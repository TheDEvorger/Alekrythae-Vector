
'use strict';
const { parentPort, workerData } = require('node:worker_threads');
function run(){
  const {pixels,width,height,config,mock}=workerData;
  if(mock){
    return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 ${width} ${height}"><path fill="#123456" d="M0 0H${width}V${height}H0Z"/></svg>`;
  }
  const V=require('@visioncortex/vtracer');
  const rgba=Buffer.from(pixels);
  let cfg;
  if(config.mode==='mono'){
    cfg={
      preset:'bw',
      clustering:'bw',
      mode:'spline',
      filterSpeckle:config.filterSpeckle,
      binaryThreshold:config.binaryThreshold,
      simplify:config.simplify,
      pathPrecision:config.pathPrecision,
      optimize:config.optimize
    };
  }else{
    cfg={
      preset:'photo',
      clustering:'color-cluster',
      hierarchical:'stacked',
      mode:'spline',
      maxColors:config.maxColors,
      filterSpeckle:config.filterSpeckle,
      colorPrecision:config.colorPrecision,
      layerDifference:config.layerDifference,
      cornerThreshold:config.cornerThreshold,
      lengthThreshold:config.lengthThreshold,
      maxIterations:config.maxIterations,
      spliceThreshold:config.spliceThreshold,
      simplify:config.simplify,
      pathPrecision:config.pathPrecision,
      optimize:config.optimize
    };
  }
  const svg=V.convertPixels(rgba,width,height,cfg);
  return String(svg||'');
}
try{ parentPort.postMessage({ok:true,svg:run()}); }
catch(e){ parentPort.postMessage({ok:false,error:String(e?.stack||e)}); }
