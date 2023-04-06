document.addEventListener('DOMContentLoaded', () => {
    const postForm = document.querySelector('#post-form');
    postForm.addEventListener('submit', (e) => {
        e.preventDefault();

        const formData = new FormData(postForm);

        fetch('lumen/public/posts', {
            method: 'POST',
            body: formData
        })
            .then(response => response.json())
            .then(data => {
                console.log(data);
            })
            .catch(error => {
                console.log(error);
            });
    });
});