const dbConnection = require("../config/connection")

// students, teachers, grades, courses


const getdataStudent = (stdid, callback) => {
    dbConnection.query(`select * from students where student_id =${stdid}`, (err, res) => {
        if (err) console.log(err);
        else {
            // console.log(rows);
            callback(err, res.rows);
        }
    });
}
const getdataGrades = (stdid, callback)  => {
    dbConnection.query(`SELECT grade_mark,course_title  FROM grades JOIN courses on courses.course_id = grades.course_id WHERE student_id =${stdid}`, (err, res) => {
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