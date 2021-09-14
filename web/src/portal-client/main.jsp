<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<style>
    .carousel-control img{
        width:70px;
        position:relative;
        bottom:70px;
    }
    .carousel-control-prev {
        left: -40px !important;
    }
    .carousel-control-next {
        right: -40px !important;
    }
    .carousel-control{
        opacity:10 !important;
        width:6% !important;
    }

</style>
<jsp:include page="./views/navbar.jsp"/>
<div class="m-5">
    <h4 class="text-center mt-5 font-weight-light text-uppercase"><span class="font-weight-normal">${firstName}</span>! estos productos son para ti</h4>
    <hr class="mb-5 bg-dark w-50 mx-auto">
    <div id="carouselProducts" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="row">
                    <c:choose>
                        <c:when test="${ !empty sessionScope.LIST_ALL_PRODUCTS}">
                            <c:forEach var="product" items="${sessionScope.LIST_ALL_PRODUCTS}" begin="0" end="4">
                                <div class="col">
                                    <div class="card product_container" product-id="${product.getId()}">
                                        <div class="content">
                                            <div class="content-overlay"></div>
                                            <img src="${pageContext.request.contextPath}/${product.getImagePath()}" height="400" class="card-img w-100" alt="image-product">
                                            <div class="content-details fadeIn-bottom">
                                                <h3 class="content-title"> ${product.getName()}</h3>
                                                <hr class="bg-white mx-auto mb-4">
                                                <p class="content-text">
                                                    ${product.getDescription()}<br>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="card-footer text-center">
                                            ${product.getName()}
                                        </div>
                                    </div>
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
                            <c:forEach var="product" items="${sessionScope.LIST_ALL_PRODUCTS}" begin="5" end="9">
                                <div class="col">
                                    <div class="card product_container" product-id="${product.getId()}">
                                        <div class="content">
                                            <div class="content-overlay"></div>
                                            <img src="${pageContext.request.contextPath}/${product.getImagePath()}" height="400" class="card-img w-100" alt="image-product">
                                            <div class="content-details fadeIn-bottom">
                                                <h3 class="content-title"> ${product.getName()}</h3>
                                                <hr class="bg-white mx-auto mb-4">
                                                <p class="content-text">
                                                    ${product.getDescription()}<br>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="card-footer text-center">
                                            ${product.getName()}
                                        </div>
                                    </div>
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
                            <c:forEach var="product" items="${sessionScope.LIST_ALL_PRODUCTS}" begin="19" end="22">
                                <div class="col">
                                    <div class="card product_container" product-id="${product.getId()}">
                                        <div class="content">
                                            <div class="content-overlay"></div>
                                            <img src="${pageContext.request.contextPath}/${product.getImagePath()}" height="400" class="card-img w-100" alt="image-product">
                                            <div class="content-details fadeIn-bottom">
                                                <h3 class="content-title"> ${product.getName()}</h3>
                                                <hr class="bg-white mx-auto mb-4">
                                                <p class="content-text">
                                                    ${product.getDescription()}<br>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="card-footer text-center">
                                            ${product.getName()}
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:when>
                    </c:choose>
                </div>
            </div>
        </div>
        <div class="controller">
            <a class="carousel-control-prev carousel-control" href="#carouselProducts" role="button" data-slide="prev">
                <img src="${pageContext.request.contextPath}/src/portal-client/src/img/arrow-circle-left.png">
            </a>
            <a class="carousel-control-next carousel-control" href="#carouselProducts" role="button" data-slide="next">
                <img src="${pageContext.request.contextPath}/src/portal-client/src/img/arrow-circle-right.png">
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
<jsp:include page="./views/category-cards.jsp"/>
<jsp:include page="./views/tips/index.jsp"/>

<div class="modal" tabindex="-1" role="dialog" id="productInfoModal">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content" id="productInfoModalContent">
        </div>
    </div>
</div>

<jsp:include page="./views/footer.jsp"/>
<jsp:include page="../../public/bubble-chat.jsp" />
<script src="${pageContext.request.contextPath}/src/portal-client/src/js/productInfo.js"></script>




