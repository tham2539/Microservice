@echo off
setlocal

echo ==========================================
echo Polyglot Load Balancer - Startup Menu
echo ==========================================
echo 1. Rust         (Compiled .exe)
echo 2. Javascript   (Node.js)
echo 3. Python       (FastAPI)
echo 4. Go           (Go run)
echo 5. C#           (.NET Minimal API)
echo 6. Java         (Built-in Sun HTTP)
echo 7. Dart         (Shelf)
echo 8. PHP          (Workerman)
echo 9. Bash         (Netcat port proxy)
echo ==========================================
set /p lang="Enter the number of the language to run (1-9): "

if "%lang%"=="1" goto rust
if "%lang%"=="2" goto js
if "%lang%"=="3" goto py
if "%lang%"=="4" goto go
if "%lang%"=="5" goto cs
if "%lang%"=="6" goto java
if "%lang%"=="7" goto dart
if "%lang%"=="8" goto php
if "%lang%"=="9" goto bash
echo Invalid selection.
pause
exit /b

:rust
echo.
echo Starting Rust Load Balancer...
cd RUST
cargo run --release --quiet
pause
exit /b

:js
echo.
echo Starting Javascript Load Balancer...
cd Javascript
node index.js
pause
exit /b

:py
echo.
echo Starting Python Load Balancer...
cd Python
python main.py
pause
exit /b

:go
echo.
echo Starting Go Load Balancer...
cd GO
go run main.go
pause
exit /b

:cs
echo.
echo Starting C# Load Balancer...
cd C#
dotnet run
pause
exit /b

:java
echo.
echo Starting Java Load Balancer...
cd Java
java Main.java
pause
exit /b

:dart
echo.
echo Starting Dart Load Balancer...
cd Dart
dart bin\main.dart
pause
exit /b

:php
echo.
echo Starting PHP Load Balancer...
cd PHP
php server.php
pause
exit /b

:bash
echo.
echo Starting Bash Load Balancer...
cd Bash
echo Warning: This requires 'nc' (netcat) installed in your Git Bash or WSL PATH.
./server.sh
pause
exit /b
