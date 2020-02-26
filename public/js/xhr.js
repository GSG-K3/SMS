const xhr = new XMLHttpRequest();
const apicall = (method, url, callback) => {
    xhr.onreadystatechange = () => {
        if (xhr.readyState == 4 && xhr.status == 200) {
            let response = JSON.parse(xhr.responseText)
            if (typeof callback === "function") callback(response)
            else { console.log("error:", xhr.status, "|", xhr.readyState) }
        }
    }
    xhr.open(method, url)
    xhr.send()
}