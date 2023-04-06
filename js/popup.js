const popupLink = document.getElementById("popup-link");
const popupBox = document.getElementById("popup-box");
const popupOverlay = document.getElementById("popup-overlay");
const popupClose = document.getElementById("popup-close");
const form = document.getElementById("subscribe-form");

const subscribed = sessionStorage.getItem('subscribed');
if (!subscribed) {
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

    fetch('lumen/public/subscribers', {
        method: 'POST',
        body: formData
    })
        .then(response => {
            if (response.ok) {
                sessionStorage.setItem('subscribed', true);
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