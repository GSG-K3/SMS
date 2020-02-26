const dbConnection = require("../connection.js");
const postStudent=(student_name,student_birth, student_sex,student_address, student_Email, student_img, cb) => {

  dbConnection.query(
    'INSERT INTO users (student_name,student_birth, student_sex,student_address, student_Email, student_img) values ($1,$2,$3,$4,$5,$6)',
    [student_name,student_birth, student_sex,student_address, student_Email, student_img],(err,res) => {
      if (err) {
            cb(err);        
        }
        else
      cb(null, {msg:'success'})

    }
  );
};
module.exports = postStudent;