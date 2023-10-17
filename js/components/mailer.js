async function SendMail(targetForm) {
    let formData = new FormData(targetForm),
        formFieldErrors = false;

    try {
        let result = await fetch(`./${targetForm.getAttribute("action")}`, {
            method: targetForm.method,
            body: formData,
        });

        if (result.status !== 200) {
            formFieldErrors = true;
        }

        let mailStatus = await result.json();

        if (formFieldErrors) {
            throw new Error(JSON.stringify(mailStatus));
        }

        return mailStatus;
    } catch (error) {
        console.error("An error occurred:", error);
        throw error;
    }
}

export { SendMail };
