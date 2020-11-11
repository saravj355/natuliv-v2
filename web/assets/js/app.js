// show/hide password text
$(".toggle-password").click(function () {
    $(this).toggleClass("fa-eye fa-eye-slash");

    const password = $(".password");
    password.attr('type') === 'password' ? password.attr('type', 'text') : password.attr('type', 'password')
});


// show/hide icon back navbar administration
$(document).ready(function () {
    var windowURL = window.location.href;

    if (windowURL.indexOf('Natuliv/admin/') > -1) {
        $('#hide-this').css('display', 'block');
    } else {
        $('#hide-this').css('display', 'none');
        $('#logo-margin').css('margin-left', '6.5em');

    }
});

var loadFile = function(event) {
	var imageRender = document.getElementById('image-render');
	imageRender.src = URL.createObjectURL(event.target.files[0]);
};








