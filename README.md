# 🌍 Polyglot Minimal API Project

Welcome to the Polyglot Minimal API! This repository contains **9 different backend implementations** of a core web server, each stripped down to its absolute essentials.

Every implementation features a minimal HTTP web server that listens on port `3000`, implements per-request access logging, and returns `hello world` on the `/api` endpoint.

---

## 🏗️ Architecture Pillars
Each language directory is rigorously structured to demonstrate the 4 core pillars of an application in that specific ecosystem:

1. 💻 **Source Code**: The application entry point script.
2. 📦 **Package Manager**: The ecosystem's tool for fetching dependencies.
3. 📄 **Dependency File**: The manifest tracking the required libraries.
4. ⚙️ **App Runtime / OS Executable**: The engine required to run the code, or the standalone compiled binary.

*(Check the `README.md` inside each language's folder for its specific structural breakdown!)*

---

## 🚀 The 9 Languages Included

| Language | Framework / Tooling | Execution Type |
| :--- | :--- | :--- |
| **Rust** | `axum` + `tokio` | Compiled Binary |
| **Go** | Standard `net/http` | Compiled Binary |
| **C#** | `.NET 8` Minimal APIs | Compiled Binary (CLR) |
| **Java** | Built-in `HttpServer` | JVM Bytecode |
| **JavaScript** | `Node.js` + `Express` | Interpreted (V8) |
| **Python** | `FastAPI` + `Uvicorn` | Interpreted |
| **Dart** | `shelf` | Compiled VM |
| **PHP** | `Workerman` | Interpreted |
| **Bash** | `netcat` (nc) | Interpreted Shell |

---

## 🎮 Quick Start
You can easily launch any of the 9 servers using the interactive Windows batch script included in the root directory!

```cmd
.\run.bat
```
