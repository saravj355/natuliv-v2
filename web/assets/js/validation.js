
$(document).ready(function () {
    $('#survey').modal('toggle');

    $('form[name="survey"]').on("submit", function (e) {
        var blank = false;
        $("input:radio").each(function () {
            var val = $('input:radio[name=' + this.name +']:checked').val();
            if (val === undefined) {
                blank = true;
                e.preventDefault();    // Stop the form from submitting
                $("#formAlert").removeClass('d-none').show().slideDown(400);    // Show the Alert
                return;
            } 
        });
    });

    $(".alert").find(".close").on("click", function (e) {
        e.stopPropagation();
        e.preventDefault();
        $(this).closest(".alert").slideUp(400);
    });
});





