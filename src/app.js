const express = require("express");
const path = require("path");
const app = express();
const request = require("request");
const bodyParser = require("body-parser")
const getData = require("../database/queries/getData")
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: false }))

app.use(express.static(path.join(__dirname, "..", "public")));
app.set("port", process.env.PORT || 5000);

app.get("/home", (req, res) => {
    res.sendFile(path.join(__dirname, "..", "public", "index.html"))
})

app.get("/home/student", (request, response) => {
    getData.getdataStudent((err, res) => {
        if (err) console.log(err, "connection error")
        else response.send(res)
    });
});
// we don't know _______________________ll
// app.get("/home/grades", (request, response) => {
//     getData.getdataCourses((err, res) => {
//         if (err) console.log(err, "connection error")
//         else response.send(res)
//     });
// });

app.listen(app.get("port"), () => {
    console.log("The server is working ....");
});

module.exports = app;