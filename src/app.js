const express = require("express")
const path = require("path")
const bodyParser = require("body-parser")
const app = express();
app.setPort(3000)
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: false }))
app.get("/home")
app.listen(getPort())