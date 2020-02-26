const express = require("express");
const path = require("path");
const app = express();
const request = require("request");

app.use(express.static(path.join(__dirname, "..", "public")));
app.set("port", process.env.PORT || 5000);
app.get("/home", (request, response) => {
  getdata();
});
app.listen(app.get("port"), () => {
  console.log("The server is working ....");
});

module.exports = app;
