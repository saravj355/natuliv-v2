// show/hide button back navbar
$(document).ready(function () {
    const windowURL = window.location.href;

    if (windowURL.indexOf('Natuliv/app/') > -1) {
        $('#hide-this').css('display', 'block');
    } else {
        $('#hide-this').css('display', 'none');
    }
});