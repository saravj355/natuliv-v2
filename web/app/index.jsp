<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<jsp:include page="./imports/navbar/index.jsp"/>
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
            <p>Natuliv te ofrece la virtud mas esencial del producto natural,
                y es que no hay nada mejor que acudir a la naturaleza para cuidarnos, y proteger nuestra piel con eficacia.
            </p>
        </div>
    </div>
</div>

<!-- imports -->
<jsp:include page="./imports/categories/index.jsp"/>
<jsp:include page="./imports/tips/index.jsp"/>

<div class="modal" tabindex="-1" role="dialog" id="productInfoModal">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content" id="productInfoModalContent">
        </div>
    </div>
</div>


<jsp:include page="./imports/footer/index.jsp"/>
<script src="${pageContext.request.contextPath}/app/src/js/productInfo.js"></script>




