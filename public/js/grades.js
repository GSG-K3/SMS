
let button = document.getElementById("btn")
let gradesTableDiv = document.querySelector('.gradesTable')

button.addEventListener('click', () => {
    let child = gradesTableDiv.lastElementChild;
    while (child) {
        gradesTableDiv.removeChild(child)
        child = gradesTableDiv.lastElementChild
    }
    let inputText = document.getElementById('inputText');
    let studentIdValue = inputText.value;
    console.log(studentIdValue)

    getGradesData(studentIdValue);

})



function  getGradesData(studentIdValue) {
    apicall('GET', `/api/grades/${studentIdValue}`, res => {
       let item = res;
        console.log(res)
        gradesTableDiv.appendChild(createItems(item));
        studentIdValue = "";
    })
}

function createItems(item) {
    let div =  document.createElement('div');
    let table = document.createElement('table');
    table.className = 'gradesTable_std';

    let coursesTh = document.createElement('th');
    let GradesTh = document.createElement('th'); // static

    let courseTd = document.createElement('td'); // database
    let gradesTd = document.createElement('td');


    let row = table.insertRow(0);
    coursesTh= row.insertCell(0);
    GradesTh = row.insertCell(1);
    coursesTh.innerHTML = "Courses";
    GradesTh.innerHTML = "Grades";


    for(let i=0; i<7; i++){
    row = table.insertRow(1);

    courseTd= row.insertCell(0);
    gradesTd = row.insertCell(1);
   
   
    courseTd.innerHTML = item[i].course_title;
    gradesTd.innerHTML = item[i].grade_mark;
    
   
    }

    

    return div.appendChild(table);

}

