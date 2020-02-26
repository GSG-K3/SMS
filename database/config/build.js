const fs = require('fs');
const buildDatabase = () => {
    const dbconnection = require('./connection.js');
    const sql = fs.readFileSync(`${__dirname}/build.sql`).toString();
    dbconnection.query(sql, (err, result) => {
        if (err) {
            console.log(err, "error");
        } else {
            console.log("database created");
            dbconnection.end(() => {
                console.log('connection closed')
            })
        }
    });
};

buildDatabase();

module.exports = buildDatabase;