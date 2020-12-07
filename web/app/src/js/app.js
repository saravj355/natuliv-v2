// show/hide button back navbar
$(document).ready(function () {
    const windowURL = window.location.href;

    if (windowURL.indexOf('Natuliv/app/') > -1) {
        $('#hide-this').css('display', 'block');
    } else {
        $('#hide-this').css('display', 'none');
        $('#logo').css('margin-left', '8em');
    }

    $('.star-calification').click(function () {
        $('.calification-message').removeClass('d-none').hide().fadeIn(250);
        $('.star-calification').attr('disabled', true);
    });


});
