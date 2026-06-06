#!/bin/bash
# scripts/setup-dev.sh

# Install PNPM if not present
if ! command -v pnpm &> /dev/null; then
    npm install -g pnpm@8
fi

# Install dependencies (fast!)
pnpm install

# Build WASM module (requires Rust)
if command -v cargo &> /dev/null; then
    cd packages/core-wasm
    wasm-pack build --target web --out-dir pkg
    cd ../..
else
    echo "⚠️ Rust not found. Install from https://rustup.rs/"
fi

# Generate Prisma client
cd backend
pnpm prisma generate
cd ..

# Build all TypeScript packages
pnpm build

# Open in VS Code
code .

echo "✅ Development environment ready!"
echo "Run 'pnpm dev' to start all services"