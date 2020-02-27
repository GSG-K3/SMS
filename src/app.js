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

app.get("/api/student/:id", (request, response) => {
    let stdid = request.params.id;
    getData.getdataStudent(stdid, (err, res) => {
        if (err) console.log(err, "connection error")
        else response.send(res)
    });
});
app.get("/student", (req, res) => {
    res.sendFile(path.join(__dirname, "..", "public", "student.html"))
})

app.get("/api/grades", (request, response) => {
    getData.getdataStudent((err, res) => {
        if (err) console.log(err, "connection error")
        else response.send(res)
    });
});


app.get("/grades", (req, res) => {
    res.sendFile(path.join(__dirname, "..", "public", "grades.html"))
})

app.get('*', (req, res) => {
    res.status(404).send("<h1> 404 Page Not Found</h1>")
})
app.use((error, req, res, next) => {
    res.status(500).send("<h1> Server Error</h1>")

})
app.listen(app.get("port"), () => {
    console.log("The server is working ....");
});

module.exports = app;