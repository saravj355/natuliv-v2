// show/hide password text
$(".toggle-password").click(function () {
    $(this).toggleClass("fa-eye fa-eye-slash");

    const password = $(".password");
    password.attr('type') === 'password' ? password.attr('type', 'text') : password.attr('type', 'password')
});


var loadFile = function (event) {
    var imageRender = document.getElementById('image-render');
    imageRender.src = URL.createObjectURL(event.target.files[0]);
};










