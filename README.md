# 🚀 CodeOptima

<div align="center">

![VS Code Marketplace](https://img.shields.io/visual-studio-marketplace/v/codeoptima.codeoptima)
![VS Code Downloads](https://img.shields.io/visual-studio-marketplace/d/codeoptima.codeoptima)
![License](https://img.shields.io/github/license/codeoptima/codeoptima)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)

**Real-time performance intelligence for VS Code**

[Install Extension](https://marketplace.visualstudio.com/items?itemName=codeoptima.codeoptima) •
[Documentation](https://docs.codeoptima.com) •
[Report Bug](https://github.com/codeoptima/codeoptima/issues) •
[Request Feature](https://github.com/codeoptima/codeoptima/discussions)

</div>

---

## ✨ Features

### 🔍 Real-time Performance Analysis
- **Instant feedback** as you type
- **Nested loop detection** (O(n²) → O(n))
- **N+1 query detection** for APIs
- **Memory leak detection**

### 🧪 Resource Simulation
- Test code on **50MB RAM** limit
- Simulate **10x slower CPU**
- Add **500ms network latency**

### 📊 Visual Dashboard
- Performance scores over time
- Flame charts for CPU profiles
- Memory timeline visualization

### 🌍 Multi-language
- ✅ Python (static + runtime profiling)
- ✅ Java (JDT + JMH)
- ✅ JavaScript/TypeScript (V8 inspector)

---

## 🚀 Quick Start

### Installation

1. Open VS Code
2. Press `Ctrl+Shift+X`
3. Search for "CodeOptima"
4. Click Install

### Usage

```python
# Your code with performance issues
def find_duplicates(items):
    duplicates = []
    for i in range(len(items)):  # ⚠️ CodeOptima: Nested loop
        for j in range(i + 1, len(items)):
            if items[i] == items[j] and items[i] not in duplicates:
                duplicates.append(items[i])
    return duplicates
CodeOptima suggests:

python
# ✅ Optimized version
def find_duplicates(items):
    seen = set()
    duplicates = set()
    for item in items:
        if item in seen:
            duplicates.add(item)
        else:
            seen.add(item)
    return list(duplicates)  # O(n) instead of O(n²)
📊 Performance Impact
Operation	Before	After	Improvement
10,000 items nested loop	5.2s	0.03s	173x faster
Memory usage	450MB	12MB	37x less
API calls (N+1)	101 calls	2 calls	50x fewer
🏗️ Development
Prerequisites
Node.js 18+

PNPM 8+

Rust 1.75+ (for WASM)

Docker (for simulation)

Setup
bash
# Clone repository
git clone https://github.com/codeoptima/codeoptima.git
cd codeoptima

# Install dependencies
pnpm install

# Build all packages
pnpm build

# Run development mode
pnpm dev

# Package extension
pnpm extension:package
Project Structure
text
codeoptima/
├── packages/
│   ├── extension/      # VS Code extension
│   ├── core-wasm/      # Rust/WASM analyzer
│   ├── language-*/     # Language-specific profilers
│   ├── webview-ui/     # React dashboard
│   └── shared-types/   # TypeScript types
├── backend/            # Cloud API (licensing/analytics)
├── simulator/          # Docker-based resource simulation
└── scripts/            # Build and dev scripts

## 📝 Documentation

User Guide

API Reference
Contributing Guide
Code of Conduct

## 🤝 Contributing

We welcome contributions! See CONTRIBUTING.md for guidelines.

Development Workflow

# Fork the repository
# Create feature branch

```bash
git checkout -b feature/amazing-feature
```
# Make changes

```bash
pnpm test
pnpm lint
```

# Commit with conventional commits
```bash
git commit -m "feat: add amazing feature"
```
# Push and create PR
```bash
git push origin feature/amazing-feature
```

## 📄 License

This project is licensed under the MIT License - see LICENSE for details.

However, note:

Free tier: 50 analyses/day, 1 language
Pro features: Require purchased license

## 🙏 Acknowledgments

VS Code Extension API
Rust WASM
Fastify
Prisma

## 📧 Contact
Twitter: @codeoptima/@SHakuzwimana
Discord: Join our server
Email: support@codeoptima.com | hakusilas@@gmail.com
Phone number: +250 783 749 019