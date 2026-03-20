# Rust Minimal API

### a. Source Code
- `src/main.rs` (Entry point using Axum and Tokio)

### b. Package Manager
- **Cargo** (Rust's official package manager)

### c. Dependency File
- `Cargo.toml` (Defines dependencies like `axum` and `tokio`)
- `Cargo.lock` (Deterministic build tree)

### d. App Runtime & App Package / OS Executable
- **Runtime**: Native OS Execution (Compiled Binary)
- **Executable**: `target/release/swp_project.exe` (Generates standalone machine code)

To build and run:
```bash
cargo run --release
```
