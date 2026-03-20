using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Http;
using System;

var builder = WebApplication.CreateBuilder(args);
builder.WebHost.UseUrls("http://127.0.0.1:3000");
var app = builder.Build();

app.Use(async (context, next) =>
{
    var start = DateTime.UtcNow;
    await next.Invoke();
    var duration = DateTime.UtcNow - start;
    Console.WriteLine($"[{DateTime.UtcNow:O}] {context.Request.Method} {context.Request.Path} {context.Response.StatusCode} - {duration.TotalMilliseconds:0.00}ms");
});

app.MapGet("/api", () => "hello world");

app.Run();
