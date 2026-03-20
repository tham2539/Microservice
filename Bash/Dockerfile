FROM alpine:latest
WORKDIR /app
# b. Package Manager & c. Dependency File
COPY dependencies.txt ./
RUN apk add --no-cache $(cat dependencies.txt)
# a. Source Code
COPY server.sh .
RUN chmod +x server.sh
# d. App Runtime / OS Executable
CMD ["./server.sh"]
