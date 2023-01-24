function getData(targetUrl, callback) {
    console.log("fired from the data miner module");

    fetch(targetUrl)
        .then(res => res.json())
        .then(data => { 
            console.log(data);
            callback(data);
        })
    .catch(error => console.error(error));
}
export {getData}