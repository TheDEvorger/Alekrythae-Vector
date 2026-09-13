# Ałek’ryŧhæ Vector

A local raster-to-vector desktop tool that converts PNG/JPG/WEBP/BMP images into true path-based SVG output using the official VisionCortex VTracer engine.

**Current public release: v0.1.0**

## Features

- Color photo tracing with VisionCortex VTracer 1.0 (`photo` + `stacked`)
- True 2–1024 `maxColors` control
- High-fidelity 1024 mode with no hidden color cap
- Detail, curve, cleanup and quality controls
- Black-and-white tracing mode
- Optional background removal
- Local/offline processing after the engine dependency is installed
- SVG validation that rejects embedded raster `<image>` nodes
- Large path-based SVG export

## Requirements

- Windows
- Node.js + npm
- Ałek’ryŧhæ Core with `.alek` application support

## Install

1. Clone or download this repository.
2. Run `INSTALL_ENGINE.cmd` once.
3. Wait for the engine health check to report success.
4. Optionally run `CHECK_ENGINE.cmd` at any time.
5. Open `Alekrythae-Vector.alek` with Ałek’ryŧhæ Core.

The local engine is installed under `%LOCALAPPDATA%\Alekrythae\VectorEngine` and listens only on `127.0.0.1:17324`.

## Architecture

```text
Alekrythae-Vector.alek
        │
        │ local HTTP
        ▼
127.0.0.1:17324
        │
        ▼
Node.js server.cjs
        │
        ▼
Worker Thread → @visioncortex/vtracer
        │
        ▼
Path-based SVG
```

## Versioning

Public releases use Semantic Versioning. The first public release is `v0.1.0`.

## Third-party software

Ałek’ryŧhæ Vector uses the official `@visioncortex/vtracer` package. See `THIRD_PARTY_NOTICES.md` for attribution and license information.

## License

No project license has been declared yet. Third-party components retain their own licenses as documented in `THIRD_PARTY_NOTICES.md`.
