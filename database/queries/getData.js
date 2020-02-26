const dbConnection = require("../config/connection")

// students, teachers, grades, courses

const sqlStudent = "select * from students"
const sqlGrades = "select * grades"
const sqlCourses = "select * courses"
    // const sqlStudent = "select * students"
    //'select * from sudent where student_id =1'


const getdataStudent = (stdid, callback) => {
    dbConnection.query(`select * from students where student_id =${stdid}`, (err, res) => {
        if (err) console.log(err);
        else {
            // console.log(rows);
            callback(err, res.rows);
        }
    });
}
const getdataGrades = callback => {
    dbConnection.query(sqlGrades, (err, res) => {
        if (err) console.log(err);
        else {
            // console.log(rows);
            callback(err, res.rows);
        }
    });
}
const getdataCourses = callback => {
    dbConnection.query(sqlCourses, (err, res) => {
        if (err) console.log(err);
        else {
            // console.log(rows);
            callback(err, res.rows);
        }
    });
}
module.exports = { getdataStudent, getdataGrades, getdataCourses }