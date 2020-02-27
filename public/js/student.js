// let studentpic = document.getElementById('student_pic');
// studentpic.addEventListener('click', getstudentdata);

// window.addEventListener('load', () => {
//     getstudentdata()
// })



let button = document.getElementById("btn")
let studentProfile = document.querySelector('.student_content')

button.addEventListener('click', () => {
    let child = studentProfile.lastElementChild;
    while (child) {
        studentProfile.removeChild(child)
        child = studentProfile.lastElementChild
    }
    let inputText = document.getElementById('inputText');
    let studentIdValue = inputText.value;
    console.log(studentIdValue)

    getstudentdata(studentIdValue);

})



function getstudentdata(studentIdValue) {
    apicall('GET', `/api/student/${studentIdValue}`, res => {

        let item = res[0];
        console.log(res)
        studentProfile.appendChild(createItems(item));
        studentIdValue = "";
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
    img.className = "student_img"
    img.alt = "student picture";

    studentID.innerHTML = "ID: " + item.student_id;
    studentName.innerHTML = "Name: " + item.student_name;
    address.innerHTML = "Address: " + item.student_address;
    birthday.innerHTML = "Day of Birth: " + item.student_birth;
    sex.innerHTML = "Gender : " + item.student_sex;
    email.innerHTML = "Email :" + item.student_email;

    divFirst.className = "student_profolio";
    divSecond.className = "student_profolio_name";
    divThird.className = "student_info";


    divFirst.appendChild(img);
    divFirst.appendChild(divSecond);
    divSecond.appendChild(studentID);
    divSecond.appendChild(studentName);
    divFirst.appendChild(divThird);

    divThird.appendChild(address);
    divThird.appendChild(birthday);
    divThird.appendChild(sex);
    divThird.appendChild(email);

    return divFirst

}