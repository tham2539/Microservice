FROM golang:1.21-alpine
WORKDIR /app
# b. Package Manager & c. Dependency File
COPY go.mod ./
RUN go mod download
# a. Source Code
COPY . .
# d. App Package (OS Executable)
RUN go build -o main .
# d. App Runtime
CMD ["./main"]
