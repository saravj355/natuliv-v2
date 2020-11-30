$(document).ready(function () {


    $('.product_container').click(function () {
        const productId = $(this).attr('product-id');
        getProductInfo(productId);
    });

    function renderProductInfoModal(product) {
        const template = '<div class="modal-header">' +
                '<h5 class="modal-title">' + product.name + '</h5>' +
                '<button type="button" class="close" data-dismiss="modal" aria-label="Close">' +
                '<span aria-hidden="true">&times;</span>' +
                '</button>' +
                '</div>' +
                '<div class="modal-body">' +
                '<p>' + product.description + '</p>' +
                '<p> PRECIO:' + product.price + '.000</p>' +
                '<img src="http://localhost:8080/Natuliv/' + product.imagePath + '"/>'
        '</div>' +
                '<div class="modal-footer">' +
                '<button type="button" class="btn btn-primary">Save changes</button>' +
                '<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>' +
                '</div>';

        $('#productInfoModalContent').html(template);
        $('#productInfoModal').modal('show');


    }
    function getProductInfo(productId) {
        const request = doRequest({
            'url': './api/GetProductInformation?productId=' + productId
        });

        request.done(function (response) {
            renderProductInfoModal(response);
            ;
        });
    }

    function doRequest(args) {
        if (!args.method)
            args.method = "POST";
        if (!args.async)
            args.async = false;

        if (args.send_file) {
            return $.ajax({
                method: args.method,
                url: args.url,
                async: args.async,
                data: args.data,
                processData: false,
                contentType: false,
                cache: false,
                enctype: 'multipart/form-data',
            });
        }
        return $.ajax({
            method: args.method,
            url: args.url,
            async: args.async,
            data: {data: args.data}
        });
    }
});


