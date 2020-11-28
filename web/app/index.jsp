<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../shared/head.jsp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/css/app.index.css">
<body>
    <jsp:include page="public/navbar/app.navbar.jsp"/>
    <div class="m-5">
        <h4 class="text-center mt-5 font-weight-light text-uppercase"><span class="font-weight-normal">${name}</span>! estos productos son para ti</h4>
        <hr class="mb-5 bg-dark w-50 mx-auto">
        <div id="carouselProducts" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="row">
                        <c:choose>
                            <c:when test="${ !empty sessionScope.LIST_ALL_PRODUCTS}">
                                <c:forEach var="product" items="${sessionScope.LIST_ALL_PRODUCTS}" end="3">
                                    <div class="col">
                                        <div class="card product_container" product-id="${product.getId()}">
                                            <div class="card-body p-0">
                                                <div class="content">
                                                    <div class="content-overlay"></div>
                                                    <img src="https://thumbs.dreamstime.com/b/fondo-de-madera-del-color-verde-claro-la-menta-textura-modelo-150938907.jpg" class="w-100">
                                                    <div class="content-details fadeIn-bottom">
                                                        <h3 class="content-title"> ${product.getName()}</h3>
                                                        <hr class="bg-white mx-auto mb-4">
                                                        <p class="content-text">
                                                            ${product.getDescription()}<br>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-footer text-center">
                                                ${product.getName()}
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </c:forEach>
                            </c:when>
                        </c:choose>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="row">
                        <c:choose>
                            <c:when test="${ !empty sessionScope.LIST_ALL_PRODUCTS}">
                                <c:forEach var="product" items="${sessionScope.LIST_ALL_PRODUCTS}" begin="4" end="7">
                                    <div class="col">
                                        <div class="card product_container" product-id="${product.getId()}">
                                            <div class="card-body p-0">
                                                <div class="content">
                                                    <div class="content-overlay"></div>
                                                    <img src="https://thumbs.dreamstime.com/b/fondo-de-madera-del-color-verde-claro-la-menta-textura-modelo-150938907.jpg" class="w-100">
                                                    <div class="content-details fadeIn-bottom">
                                                        <h3 class="content-title"> ${product.getName()}</h3>
                                                        <hr class="bg-white mx-auto mb-4">
                                                        <p class="content-text">
                                                            ${product.getDescription()}<br>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-footer text-center">
                                                ${product.getName()}
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </c:forEach>
                            </c:when>
                        </c:choose>
                    </div>
                </div>
            </div>
            <div class="controller">
                <a class="carousel-control-prev carousel-control" href="#carouselProducts" role="button" data-slide="prev">
                    <img src="" width="40">
                </a>
                <a class="carousel-control-next carousel-control" href="#carouselProducts" role="button" data-slide="next">
                    <img src="" width="40">
                </a>
            </div>
            <div class="text text-center mx-auto w-50 m-5">
                <p class="">Natuliv te ofrece la virtud mas esencial del producto natural,
                    y es que no hay nada mejor que acudir a la naturaleza para cuidarnos, y proteger nuestra piel con eficacia.
                </p>
            </div>
        </div>
    </div>


    <div class="modal" tabindex="-1" role="dialog" id="productInfoModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content" id="productInfoModalContent">

            </div>
        </div>
    </div>


    <jsp:include page="./public/categories/categories.jsp"/>
    <jsp:include page="./public/tips/app.tips.jsp"/>
    <jsp:include page="./public/footer.jsp"/>
    <script src="${pageContext.request.contextPath}/app/js/app.js"></script>
    <jsp:include page="../shared/footer.jsp"/>


    <script>
        $(document).ready(function () {


            $('.product_container').click(function () {
                const productId = $(this).attr('product-id');
                getProductInfo(productId);
            });

            function renderProductInfoModal(product) {
                const template = '<div class="modal-header">'+
                                '<h5 class="modal-title">'+ product.name +'</h5>'+
                                '<button type="button" class="close" data-dismiss="modal" aria-label="Close">'+
                                    '<span aria-hidden="true">&times;</span>'+
                                '</button>'+
                            '</div>'+
                            '<div class="modal-body">'+
                                '<p>' + product.description + '</p>'+
                                '<p> PRECIO:' + product.price + '</p>'+
                                '<img src="http://localhost:8080/Natuliv/'+ product.imagePath +'"/>'
                            '</div>'+
                            '<div class="modal-footer">'+
                                '<button type="button" class="btn btn-primary">Save changes</button>'+
                                '<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>'+
                            '</div>';
    
                $('#productInfoModalContent').html(template);
                $('#productInfoModal').modal('show');
                
                
            }
            function getProductInfo(productId) {
                const request = doRequest({
                    'url': './api/GetProductInformation?productId='+productId
                });

                request.done(function (response) {
                    renderProductInfoModal(response);;
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

    </script>
