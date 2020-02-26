// let studentpic = document.getElementById('student_pic');
// studentpic.addEventListener('click', getstudentdata);

window.addEventListener('load', () => {
    getstudentdata()
})

let inputText = document.getElementById('inputText');
let studentIdValue = inputText.nodeValue;

function getstudentdata(event) {
    apicall('GET', '/api/home/student', res => {
                let studentProfile = document.querySelector('.student_profolio')
                res.rows.forEach(element => {
                    if (studentIdValue === res.student_id) {
                        createItems(element)
                    } else { window.alert('Invalid ID'); }
                })
            }

            function createItems(item) {
                let divFirst = document.createElement('div');
                let img = document.createElement('img');
                let divSecond = document.createElement('div');
                let studentName = document.createElement('h2');
                let studentID = document.createElement('h3');
                let divThird = document.createElement('div');
                let address = document.createElement('h3');
                let birthday = document.createElement('h3');
                let sex = document.createElement('h3');
                let email = document.createElement('h3');


                img.src = item.student_img;
                img.alt = "student picture";

                studentName = item.student_name;
                studentID = item.student_id;
                address = item.student_address;
                birthday = item.student_birth;
                sex = item.student_sex;
                email = item.student_EMAIL;

                divFirst.appendChild(img);
                divFirst.appendChild(divSecond);
                divSecond.appendChild(studentName);
                divSecond.appendChild(studentID);



            }


            // <div class="student_profolio">
            // <img src="/imges/student.png" class="student_img" />
            // <div class="student_profolio_name">
            //     <h2>Ali</h2>
            //     <h3>ID:134223</h3>
            // </div>
            // </div>
            // <div class="student_info">
            // <h3>location:</h3>
            // <h3>birthday:</h3>
            // <h3>sex:</h3>
            // <h3>phone:</h3>