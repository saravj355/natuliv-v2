<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../shared/head.jsp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/mainApp/assets/css/style.css">
<body>
    <jsp:include page="shared/navbar/navbar.jsp"/>
    <h5 class="text-center m-">Recomendados para ti</h5>
    <div class="m-5">
        <div id="carouselProducts" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="row">
                        <c:choose>
                            <c:when test="${ !empty sessionScope.LIST_ALL_PRODUCTS}">
                                <c:forEach var="product" items="${sessionScope.LIST_ALL_PRODUCTS}" end="3">
                                    <div class="col">
                                        <div class="card">
                                            <div class="card-body p-0">
                                                <div class="content">
                                                    <div class="content-overlay"></div>
                                                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARwAAACxCAMAAAAh3/JWAAAAA1BMVEUbqPBsarW2AAAASElEQVR4nO3BMQEAAADCoPVPbQ0PoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIALA8UNAAFusnLHAAAAAElFTkSuQmCC" class="w-100">
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
                                        <div class="card">
                                            <div class="card-body p-0">
                                                <div class="content">
                                                    <div class="content-overlay"></div>
                                                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARwAAACxCAMAAAAh3/JWAAAAA1BMVEUbqPBsarW2AAAASElEQVR4nO3BMQEAAADCoPVPbQ0PoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIALA8UNAAFusnLHAAAAAElFTkSuQmCC" class="w-100">
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
                                    </div>
                                </c:forEach>
                            </c:when>
                        </c:choose>
                    </div>
                </div>
            </div>
            <div class="controller">
                <a class="carousel-control-prev carousel-control" href="#carouselProducts" role="button" data-slide="prev">
                    <img src="${pageContext.request.contextPath}/mainApp/assets/img/arrow-circle-left.png" width="50">
                </a>
                <a class="carousel-control-next carousel-control" href="#carouselProducts" role="button" data-slide="next">
                    <img src="${pageContext.request.contextPath}/mainApp/assets/img/arrow-circle-right.png" width="50">
                </a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="card">
                hola
            </div>
        </div>
    </div>

    <jsp:include page="../shared/footer.jsp"/>
    <script src="${pageContext.request.contextPath}/mainApp/assets/js/app.js"></script>
</body>
