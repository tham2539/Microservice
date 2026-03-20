# PHP Minimal API

### a. Source Code
- `server.php` (Entry point using Workerman)

### b. Package Manager
- **Composer** (Standard PHP package manager)

### c. Dependency File
- `composer.json` (Defines the Workerman requirement)
- `composer.lock` (Lockfile for precise versions)

### d. App Runtime & App Package / OS Executable
- **Runtime**: PHP CLI Interpreter
- **Package**: Executes the active script constantly in memory rather than via PHP-FPM.

To build and run:
```bash
composer install
php server.php
```
