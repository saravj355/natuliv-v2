$(document).ready(function () {

    $('.product_container').click(function () {
        const productId = $(this).attr('product-id');
        getProductInfo(productId);
    });

    function renderProductInfoModal(product) {
        const template = 
                '<div class="modal-header">' +
                    '<h5 class="modal-title">' + product.supplier.name + '</h5>' +
                    '<button type="button" class="close" data-dismiss="modal" aria-label="Close">' +
                        '<span aria-hidden="true">&times;</span>' +
                    '</button>' +
                '</div>' +
                '<div class="modal-body">' +
                    '<div class="row">' +
                        '<div class="col text-center">' +
                            '<img class="w-100 rounded" src="http://localhost:8080/Natuliv/' + product.imagePath + '"/>' +
                        '</div>' +
                        '<div class="col">' +
                            '<h5 class="modal-title text-center mb-4">' + product.name + '</h5>' +
                            '<p>' + product.description + '</p>' +
                            '<nav>' +
                                '<div class="nav nav-tabs" id="nav-tab" role="tablist">' +
                                    '<a class="nav-item nav-link active bg-info text-white" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Información</a>' +
                                    '<a class="nav-item nav-link bg-success text-white" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Modo de Uso</a>' +
                                '</div>' +
                            '</nav>' +
                            '<div class="tab-content" id="nav-tabContent">' +
                              '<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">' +
                              '<h6 class="font-weight-bold m-3">Precio: <span class="font-weight-light">'+ product.price +'.000</span></h6>' +
                              '<h6 class="font-weight-bold m-3">Empresa: <span class="font-weight-light">'+ product.supplier.name +'</span></h6>' +
                              '<h6 class="font-weight-bold m-3">Dirección: <span class="font-weight-light">'+ product.supplier.address +'</span></h6>' +
                                    '<h6 class="font-weight-bold m-3">Número Contacto: <span class="font-weight-light">'+ product.supplier.contactNumber +'</span></h6>' +
                                    '<h6 class="font-weight-bold m-3">Sitio Web: <span class="font-weight-light">'+ product.supplier.websiteUrl +'</span></h6>' +
                               '</div>' +
                              '<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">' +
                                '<p class="m-3">Puedes lavar tu rostro frotándolo suavemente directamente en el rostro.' +
                                    'También puedes empapar tus manos del jabón y masajear tu rostro con las yemas de tus dedos.' + 
                                    'Opcional puedes usar algún producto masajeador, pero no diariamente.' +
                                '</p>'+
                              '</div>' +
                              '<div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">...</div>' +
                            '</div>' +
                        '</div>' +
                    '</div>' +
                '</div>' +
                '<div class="modal-footer">' +
                    '<button type="button" class="btn btn-primary" data-dismiss="modal" aria-label="Close">Aceptar</button>' 
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


