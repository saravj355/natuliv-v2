/**
 * Validate empty fields
 */
$(document).ready(function () {
    $('form[name="form"]').on("submit", function (e) {
        //** verified empty inputs file **//
        var inputFile = document.getElementById("inputFile");
        var empty = true;
        //** for each empty input type="text" **//
        $('input[type="text"]').each(function () {
            if ($(this).val() === "") {
                empty = false;
                e.preventDefault();
                $("#formAlert").removeClass('d-none').show().slideDown(400);    // Show the Alert
                return;
            }
        });
        if ($(".textarea").val().trim().length < 1 || inputFile.files.length == 0) {
            e.preventDefault();
            $("#formAlert").removeClass('d-none').show().slideDown(400);    // Show the Alert
            return;
        }
    });

    //** hide alert message **//
    $(".alert").find(".close").on("click", function (e) {
        e.stopPropagation();
        e.preventDefault();
        $(this).closest(".alert").slideUp(400);
    });
});







