var popupLink = document.getElementById("popup-link");
var popupBox = document.getElementById("popup-box");
var popupOverlay = document.getElementById("popup-overlay");
var popupClose = document.getElementById("popup-close");
var form = document.getElementById("subscribe-form");

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

form.addEventListener("submit", function (event) {
    event.preventDefault();

    var formData = new FormData(form);

    var xhr = new XMLHttpRequest();
    xhr.open(form.method, form.getAttribute("action"));
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            alert("Thank you for subscribing!");
            sessionStorage.setItem('subscribed', true);
            setTimeout(function () {
                popupBox.style.display = "none";
                popupOverlay.style.display = "none";
            }, 2000);
        }
    };
    xhr.send(formData);
});