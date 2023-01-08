async function SendMail(targetForm) {
    let formData = new FormData(targetForm),
        formFieldErrors = false;

    let result = await fetch(`./${targetForm.getAttribute("action")}`, {
        method: targetForm.method,
        body: formData,
    }).then(response => {
        if (response.status !== 200) {
            formFieldErrors = true;
        }

        return response;
    })

    let mailStatus = await result.json();

    if (formFieldErrors) {
        throw new Error(JSON.stringify(mailStatus));
    }    
    
    return mailStatus;
}

export { SendMail };