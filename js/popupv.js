const popupLink = document.getElementById("popup2-link");
const popupBox = document.getElementById("popup2-box");
const popupOverlay = document.getElementById("popup2-overlay");
const popupClose = document.getElementById("popup2-close");
const form = document.getElementById("volunteer-form");

const volunteerdata = sessionStorage.getItem('volunteerdata');
if (!volunteerdata) {
    popupLink.addEventListener("click", event => {
        event.preventDefault();
        popupBox.style.display = "block";
        popupOverlay.style.display = "block";
    });
}

popupClose.addEventListener("click", () => {
    popupBox.style.display = "none";
    popupOverlay.style.display = "none";
});

popupOverlay.addEventListener("click", () => {
    popupBox.style.display = "none";
    popupOverlay.style.display = "none";
});

form.addEventListener("submit", event => {
    event.preventDefault();

    const formData = new FormData(form);

    fetch('lumen/public/volunteers', {
        method: 'POST',
        body: formData
    })
        .then(response => {
            if (response.ok) {
                sessionStorage.setItem('volunteerdata', true);
                popupBox.style.display = "none";
                const successMessage = document.getElementById("subscribe-modal");
                successMessage.style.display = "block";
                form.reset();
                setTimeout(() => {
                    successMessage.style.display = "none";
                }, 3000);
            }
        })
        .catch(error => {
            console.log(error);
        });
});