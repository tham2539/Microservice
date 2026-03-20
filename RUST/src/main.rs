use axum::{
    extract::Request,
    middleware::{self, Next},
    response::IntoResponse,
    routing::get,
    Router,
};
use tokio::net::TcpListener;
use std::time::Instant;

async fn logging_middleware(req: Request, next: Next) -> impl IntoResponse {
    let start = Instant::now();
    let method = req.method().clone();
    let path = req.uri().path().to_owned();
    
    let res = next.run(req).await;
    
    println!(
        "{} {} {} - {:?}",
        method,
        path,
        res.status(),
        start.elapsed()
    );
    res
}

#[tokio::main]
async fn main() {
    let app = Router::new()
        .route("/api", get(|| async { "hello world" }))
        .layer(middleware::from_fn(logging_middleware));

    let listener = TcpListener::bind("0.0.0.0:3000").await.unwrap();
    println!("Listening on http://127.0.0.1:3000");
    axum::serve(listener, app).await.unwrap();
}
