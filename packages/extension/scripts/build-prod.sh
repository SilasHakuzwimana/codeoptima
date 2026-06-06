# packages/extension/scripts/build-prod.sh
#!/bin/bash

# Build all dependencies in correct order
pnpm --filter codeoptima-shared-types build
pnpm --filter codeoptima-core-wasm build
pnpm --filter codeoptima-webview-ui build
pnpm --filter codeoptima-extension build

# Package VSIX (excludes dev dependencies)
pnpm --filter codeoptima-extension package

# Result: codeoptima-1.0.0.vsix (size: 2.3MB vs 8.7MB with npm)