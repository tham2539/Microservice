# Bash Minimal API

### a. Source Code
- `server.sh` (Entry point using bash variables and a loop)

### b. Package Manager
- **OS Package Manager** (`apt`, `yum`, or `brew`)

### c. Dependency File
- Relies on system-level `nc` (netcat). No formal dependency file.

### d. App Runtime & App Package / OS Executable
- **Runtime**: Bash shell and GNU coreutils.
- **Package**: The raw `.sh` text file.

To run:
```bash
chmod +x server.sh
./server.sh
```
