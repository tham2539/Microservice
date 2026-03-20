const express = require('express');
const app = express();

app.use((req, res, next) => {
  const start = Date.now();
  res.on('finish', () => {
    console.log(`[${new Date().toISOString()}] ${req.method} ${req.url} ${res.statusCode} - ${Date.now() - start}ms`);
  });
  next();
});

app.get('/api', (req, res) => {
  res.send('hello world');
});

const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`Listening on http://127.0.0.1:${port}`);
});
