const fs = require("fs");
const path = require("path");

const dbConnection = require("./connection.js");


const dbBuild = () => {
    const sqlPath = readFileSync(join(__dirname, "build.sql")).toString();
    return dbConnection.query(sql, (err, res) => {
        if (err) throw new Error('error build.js');
        else console.log('build sucsess');

    });
};



module.exports = { dbBuild };