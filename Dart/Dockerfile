FROM dart:stable
WORKDIR /app
# b. Package Manager & c. Dependency File
COPY pubspec.* ./
RUN dart pub get
# a. Source Code
COPY . .
# d. App Package (OS Executable)
RUN dart compile exe bin/main.dart -o bin/server
# d. App Runtime
CMD ["./bin/server"]
