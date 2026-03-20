#!/bin/bash
PORT=3000
echo "Listening on http://127.0.0.1:$PORT"

while true; do
    echo "[$(date -u +"%Y-%m-%dT%H:%M:%SZ")] Request received"
    echo -e "HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\nhello world" | nc -l -p $PORT -q 1
done
