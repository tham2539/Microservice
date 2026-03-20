<?php
require_once __DIR__ . '/vendor/autoload.php';
use Workerman\Worker;
use Workerman\Protocols\Http\Request;
use Workerman\Protocols\Http\Response;

$worker = new Worker("http://0.0.0.0:3000");

$worker->onMessage = function($connection, Request $request) {
    $start = microtime(true);
    if ($request->path() === '/api') {
        $connection->send(new Response(200, [], "hello world"));
        $status = 200;
    } else {
        $connection->send(new Response(404, [], "Not Found"));
        $status = 404;
    }
    $duration = round((microtime(true) - $start) * 1000, 2);
    echo "[" . date('Y-m-d H:i:s') . "] {$request->method()} {$request->path()} {$status} - {$duration}ms\n";
};

Worker::runAll();
