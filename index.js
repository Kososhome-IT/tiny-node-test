// index.js
const express = require("express");
const app = express();

const PORT = process.env.PORT || 8080;

// root route
app.get("/", (req, res) => {
  res.send("Hello from tiny Node app on Cloud Run!");
});

app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});
