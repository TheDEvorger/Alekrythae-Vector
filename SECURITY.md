# Security Policy

## Supported Versions

Alekrythae Vector is currently in early public development. Security fixes are applied to the latest public release only.

| Version | Supported |
| --- | --- |
| 0.1.x | ✅ |
| Older / development builds | ❌ |

## Reporting a Vulnerability

Please **do not open a public GitHub issue** for a suspected security vulnerability.

Report security issues privately to the project maintainer through a private GitHub communication channel or another private contact method published by the maintainer.

When possible, include:

- affected version
- operating system and Node.js version
- reproduction steps
- expected and actual behavior
- relevant logs with secrets, personal paths and tokens removed
- whether the issue can be triggered by an untrusted local process, browser page or remote input

Please avoid publishing proof-of-concept exploit code until a fix is available.

## Security Model

Alekrythae Vector performs raster-to-vector conversion locally. The vectorization engine is intended to:

- bind only to the loopback interface (`127.0.0.1`)
- avoid accepting connections from LAN or WAN interfaces
- process image pixel data locally
- avoid uploading user images to a remote service
- run the vectorization workload in a worker thread rather than in the UI process
- limit accepted image dimensions and request body size
- keep runtime files under the current user's local application-data directory

The local engine is **not designed to be exposed to a network** and must never be configured to listen on `0.0.0.0`, a LAN address, or a public interface.

## Localhost Security

A localhost service is not automatically trusted merely because it uses `127.0.0.1`.

The engine must treat requests originating from browsers, embedded web views, extensions, and other local applications as potentially untrusted. Public releases should therefore enforce all of the following:

1. **Strict origin validation**
   - Do not reflect arbitrary `Origin` values.
   - Allow only the application origins that are actually required by Alekrythae Core / Vector.
   - Reject unknown origins rather than returning permissive CORS headers.

2. **Request authentication / per-session secret**
   - A fixed localhost port alone is not an authentication mechanism.
   - The UI and engine should use a random per-installation or per-session token for privileged endpoints such as `/vectorize`.
   - Tokens must not be committed to the repository.

3. **Private Network Access restrictions**
   - Do not grant private-network access to arbitrary web origins.
   - Preflight requests should be accepted only for explicitly trusted application origins.

4. **Port ownership validation**
   - Do not silently accept an already-occupied engine port as success.
   - Verify that the service answering the health endpoint is the expected Alekrythae Vector engine and expected version before using it.

5. **HTTP method and content-type validation**
   - Accept only the methods and content types required by the application.
   - Reject malformed or unexpected requests early.

## Input and Resource Limits

Image conversion can consume significant CPU and memory, especially at high fidelity.

The engine must retain explicit limits for:

- image width and height
- total decoded RGBA byte count
- request body size
- worker concurrency
- execution time where practical

These limits are security controls as well as stability controls. "Maximum fidelity" must not mean unlimited memory allocation or unbounded request sizes.

## Dependency Security

The project currently depends on the VisionCortex VTracer package.

For public releases:

- pin dependency versions exactly
- commit the appropriate lockfile when dependencies are installed from npm
- review dependency updates before merging them
- run `npm audit` or an equivalent dependency review during release preparation
- never commit `node_modules/`
- avoid install scripts or additional dependencies unless necessary
- verify package provenance and package name before changing dependencies

A dependency update should be treated as a code change, not as a routine automatic refresh.

## Secrets and Sensitive Files

The repository must never contain:

- API keys
- access tokens
- passwords
- private keys or certificates
- `.env` files containing secrets
- local authentication tokens
- user images or private test datasets without explicit permission
- crash dumps containing user data
- local logs containing personal filesystem paths or image names
- generated runtime PID files

The repository `.gitignore` provides defense in depth, but `.gitignore` is **not** a secret-management system. If a secret is committed, assume it is compromised even if the commit is later deleted.

## Logs and Error Messages

Logs intended for bug reports should avoid exposing:

- usernames
- full personal filesystem paths
- environment variables
- session tokens
- image contents
- unnecessary request bodies

Public-facing errors should provide enough information to diagnose failures without dumping internal state or stack traces to untrusted callers.

## SVG Output Safety

Alekrythae Vector is intended to export generated vector geometry rather than embedded raster content.

Export validation should continue to reject unexpected embedded raster `<image>` elements. When SVG files are later imported from external sources, they must be treated as untrusted active document content because SVG can contain links, scripts, external references and other browser-relevant features.

Generated SVG should not inherit arbitrary script, event-handler, external URL or foreign-object content from untrusted input.

## Release Checklist

Before publishing a release:

- [ ] application and engine version numbers match
- [ ] localhost server binds only to `127.0.0.1`
- [ ] CORS / Origin policy is restrictive
- [ ] privileged engine requests require an application secret/token
- [ ] occupied-port behavior verifies the responding service identity
- [ ] request size and image dimension limits are enabled
- [ ] worker concurrency is bounded
- [ ] no secrets or personal files are present in Git history
- [ ] `node_modules`, logs, PID files and local runtime files are ignored
- [ ] dependencies are pinned and lockfile is reviewed
- [ ] dependency security review has been run
- [ ] SVG output contains no unexpected raster embedding or executable content
- [ ] installation scripts do not require administrator privileges unless explicitly documented
- [ ] release archive has been tested on a clean Windows user profile

## Scope

Security reports concerning the Alekrythae Vector application, its local engine, installer scripts, SVG export pipeline, or integration with Alekrythae Core are in scope.

Issues that require intentionally modifying the local source code or operating system after installation, with no privilege or trust-boundary impact, may be treated as hardening suggestions rather than vulnerabilities.
