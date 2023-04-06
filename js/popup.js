var popupLink = document.getElementById("popup-link");
var popupBox = document.getElementById("popup-box");
var popupOverlay = document.getElementById("popup-overlay");
var popupClose = document.getElementById("popup-close");

var subscribed = sessionStorage.getItem('subscribed');
if (!subscribed) {
    popupLink.addEventListener("click", function (event) {
        event.preventDefault();
        popupBox.style.display = "block";
        popupOverlay.style.display = "block";
    });
}

popupClose.addEventListener("click", function () {
    popupBox.style.display = "none";
    popupOverlay.style.display = "none";
});

popupOverlay.addEventListener("click", function () {
    popupBox.style.display = "none";
    popupOverlay.style.display = "none";
});

function subscribe() {
    sessionStorage.setItem('subscribed', true);
    setTimeout(function () {
        popupBox.style.display = "none";
        popupOverlay.style.display = "none";
    }, 5000);
}