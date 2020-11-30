// show/hide password text
$(".toggle-password").click(function () {
    $(this).toggleClass("fa-eye fa-eye-slash");

    const password = $(".password");
    password.attr('type') === 'password' ? password.attr('type', 'text') : password.attr('type', 'password')
});
