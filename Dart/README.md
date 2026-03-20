# Dart Minimal API

### a. Source Code
- `bin/main.dart` (Entry point using Shelf)

### b. Package Manager
- **pub** (Dart Package Manager)

### c. Dependency File
- `pubspec.yaml` (Defines project settings and `shelf` dependencies)

### d. App Runtime & App Package / OS Executable
- **Runtime**: Dart VM
- **Executable**: `dart compile exe bin/main.dart` generates a native OS executable.

To build and run:
```bash
dart pub get
dart bin/main.dart
```
