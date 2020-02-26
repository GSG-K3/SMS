window.addEventListener('load', () => {
    getgradesdata()
})


function getgradesdata(event) {
    apicall('GET', '/api/home/grades', res => {
        console.log(res)

    })
}