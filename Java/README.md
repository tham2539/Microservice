# Java Minimal API

### a. Source Code
- `Main.java` (Entry point using built-in `HttpServer`)

### b. Package Manager
- **None (Standard Library)** (Could use Maven/Gradle if external dependencies were needed)

### c. Dependency File
- Built-in Java 11+ execution does not require a `pom.xml` dependency file for standard library APIs.

### d. App Runtime & App Package / OS Executable
- **Runtime**: JVM (Java Virtual Machine)
- **Package**: Directly executes the `.java` source file (JEP 330) or compiles to `Main.class` bytecode.

To run:
```bash
java Main.java
```
