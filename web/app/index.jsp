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
                                        <a class="btn btn-primary" href="${pageContext.request.contextPath}/app?name=${product.getName()}#product">Insert1</a>
                                        <div class="card">
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

                <div class="modal fade" id="product" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel1"><c:out value="${param['name']}"/></h5>
                                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&#215;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                Are you sure you want to clear scrap for this table.
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                                <a class="btn btn-danger" href="#">Clear</a>
                            </div>
                        </div>
                    </div>
                </div>
                <jsp:include page="../shared/footer.jsp"/>
                <script src="${pageContext.request.contextPath}/app/js/app.js"></script>
