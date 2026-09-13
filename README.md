<div align="center">

# Ałek’ryŧhæ Vector

**High-fidelity, local raster-to-SVG vectorization for Ałek’ryŧhæ Core.**

![Release](https://img.shields.io/badge/release-v0.1.0-2ea44f?style=flat-square)
![Platform](https://img.shields.io/badge/platform-Windows-0078D4?style=flat-square)
![Engine](https://img.shields.io/badge/engine-VTracer%201.0-5b8def?style=flat-square)
![Runtime](https://img.shields.io/badge/runtime-Node.js-339933?style=flat-square&logo=nodedotjs&logoColor=white)
![Output](https://img.shields.io/badge/output-path--based%20SVG-ffb13b?style=flat-square&logo=svg&logoColor=white)

Convert **PNG, JPG, WEBP and BMP** images into real, editable SVG paths using the official VisionCortex VTracer engine.

</div>

---

## ✨ What it does

Ałek’ryŧhæ Vector is a desktop raster-to-vector tool designed for **local processing, high-detail color tracing and true path-based SVG export**.

- Color photo tracing with **VisionCortex VTracer 1.0** (`photo` + `stacked`)
- Real **2–1024 `maxColors`** control
- High-fidelity **1024 / RAW** mode with no hidden color cap
- Detail, curve, cleanup and quality controls
- Black-and-white tracing with adjustable threshold
- Optional background removal
- Large SVG handling
- SVG validation that rejects embedded raster `<image>` nodes
- Local processing after the engine dependency is installed

> [!IMPORTANT]
> Ałek’ryŧhæ Vector exports **vector geometry**, not a PNG/JPG hidden inside an SVG container. Exported files are checked for embedded raster `<image>` elements.

## 🚀 Quick start

### Requirements

- **Windows**
- **Node.js + npm** installed
- **Ałek’ryŧhæ Core** with `.alek` application support

> [!NOTE]
> The first engine setup requires an internet connection so npm can install the official VTracer dependency. Image vectorization itself is performed locally afterward.

### Installation

1. Download or clone this repository.
2. Run **`INSTALL_ENGINE.cmd`** once.
3. Wait until the local engine health check reports success.
4. Optional: run **`CHECK_ENGINE.cmd`** whenever you want to verify the engine.
5. Open **`Alekrythae-Vector.alek`** with Ałek’ryŧhæ Core.

The local vector engine is installed under:

```text
%LOCALAPPDATA%\Alekrythae\VectorEngine
```

and listens on the loopback interface:

```text
127.0.0.1:17324
```

## 🎛️ Controls

| Control | Purpose |
|---|---|
| **Color** | Sets the VTracer color limit from `2` to `1024`. |
| **Detail** | Controls how strongly small shapes and fine regions are preserved. |
| **Curves** | Adjusts Bézier smoothing and curve behaviour. |
| **Cleanup** | Removes or merges very small regions for a cleaner result. |
| **Quality** | Controls the overall fidelity / processing profile. |
| **Threshold** | Sets the black/white split point in monochrome mode. |
| **Remove Background** | Attempts to remove a dominant edge-connected background region. |

### Maximum fidelity

Setting **Color = 1024** or **Quality = 1024** activates the high-fidelity profile.

In this mode the application prioritizes detail over speed and file size. Large images can therefore produce very large SVG files and may take considerably longer to process.

<details>
<summary><strong>Technical 1024 / RAW profile</strong></summary>

The current high-fidelity profile uses:

```text
maxColors       = 1024
filterSpeckle   = 0
gradient step   = 0
simplify        = 0
pathPrecision   = 8
maxIterations   = 32
optimize        = 0
```

The intention is simple: **1024 means maximum fidelity, not maximum efficiency.**

</details>

## 🧭 Basic workflow

```text
Select image
    ↓
Choose Color or Black / White mode
    ↓
Adjust tracing controls
    ↓
Preview the vector result
    ↓
Save SVG
```

For extremely large SVG outputs, the application may skip rendering the preview to avoid locking the UI. The generated SVG can still be saved unchanged.

## 🧩 Architecture

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
Worker Thread
        │
        ▼
@visioncortex/vtracer
        │
        ▼
Path-based SVG
```

<details>
<summary><strong>Why a local engine?</strong></summary>

VTracer processing runs outside the UI through a small local Node.js service and worker thread. This keeps the vectorization engine isolated from the interface and allows expensive tracing work to be handled without sending the source image to a remote conversion service.

</details>

## 📁 Repository structure

```text
Alekrythae-Vector.alek        Main application
INSTALL_ENGINE.cmd            Installs and starts the local VTracer engine
CHECK_ENGINE.cmd              Verifies engine health
engine/
  package.json                Engine dependency definition
  server.cjs                  Local HTTP service
  vector-worker.cjs           VTracer worker
CHANGELOG.md                  Public release history
SECURITY.md                   Security policy
THIRD_PARTY_NOTICES.md        Third-party attribution and licenses
.gitignore                    Local/build files excluded from Git
```

## 🛠️ Troubleshooting

If the vector engine does not respond:

```bat
CHECK_ENGINE.cmd
```

To inspect the engine log:

```bat
type "%LOCALAPPDATA%\Alekrythae\VectorEngine\engine.log"
```

If the local engine installation becomes corrupted, remove:

```text
%LOCALAPPDATA%\Alekrythae\VectorEngine
```

then run `INSTALL_ENGINE.cmd` again.

## 🔐 Privacy & security

Source images are processed through the local vectorization service rather than uploaded to an external image-conversion service.

For security reports, please follow [`SECURITY.md`](SECURITY.md) instead of opening a public issue containing vulnerability details.

## 📦 Versioning

Public releases follow [Semantic Versioning](https://semver.org/).

Current public release: **`v0.1.0`**

See [`CHANGELOG.md`](CHANGELOG.md) for release notes.

## 🧱 Third-party software

Ałek’ryŧhæ Vector uses the official **VisionCortex VTracer** engine through `@visioncortex/vtracer`.

See [`THIRD_PARTY_NOTICES.md`](THIRD_PARTY_NOTICES.md) for attribution and third-party license information.

## 📄 License

A project license has not yet been declared. Third-party components retain their respective licenses as documented in `THIRD_PARTY_NOTICES.md`.

---

<div align="center">

**Ałek’ryŧhæ Vector · v0.1.0**

Local raster → real vector paths.

</div>
