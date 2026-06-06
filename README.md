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
