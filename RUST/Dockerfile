FROM rust:1.75-slim as builder
WORKDIR /app
# b. Package Manager & c. Dependency File
COPY Cargo.toml Cargo.lock ./
COPY src src
# d. App Package (OS Executable)
RUN cargo build --release

FROM debian:bookworm-slim
WORKDIR /app
COPY --from=builder /app/target/release/swp_project ./server
# d. App Runtime
CMD ["./server"]
