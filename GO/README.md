# Go Minimal API

### a. Source Code
- `main.go` (Entry point using standard `net/http`)

### b. Package Manager
- **Go Modules** (`go mod`)

### c. Dependency File
- `go.mod` (Defines module path and dependencies)

### d. App Runtime & App Package / OS Executable
- **Runtime**: Native OS Execution (Compiled Binary) or Go Compiler
- **Executable**: `go build` generates a standalone architecture-specific executable.

To build and run:
```bash
go mod tidy
go run main.go
```
