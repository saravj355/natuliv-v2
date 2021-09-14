$(document).ready(function () {
// show/hide button back navbar
    const windowURL = window.location.href;

    if (windowURL.indexOf('Natuliv/admin/') > -1) {
        $('.btn-back').css('display', 'block');
    } else {
        $('.btn-back').css('display', 'none');
    }

// stars calification
    $('.star-calification').click(function () {
        $('.calification-message').removeClass('d-none').hide().fadeIn(250);
        $('.star-calification').attr('disabled', true);
    });
});
