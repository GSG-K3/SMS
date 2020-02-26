const ancherStudent = document.getElementById("student_pic")
const ancherGrades = document.getElementById("grades_pic")
ancherStudent.addEventListener('click', () => {
    getstudentdata()
})


function getstudentdata(event) {
    window.location = "/home/student";
}
ancherGrades.addEventListener('click', () => {
    getgradesdata()
})


function getgradesdata(event) {
    window.location = "/home/grades";
}