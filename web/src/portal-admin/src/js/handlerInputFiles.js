$(document).ready(function () {
    const randomPassword = generatePassword();
    $(".randomPassword").attr("value", randomPassword);
});

const loadFile = function (event) {
    const imageRender = document.getElementById('image-render');
    imageRender.src = URL.createObjectURL(event.target.files[0]);
};

function generatePassword() {
    return Math.random().toString(36).slice(-8);
}