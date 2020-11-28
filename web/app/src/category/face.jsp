<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../../../shared/head.jsp" />
<body>
    <jsp:include page="../../public/navbar/app.navbar.jsp" />
    <style>
        .bg-pink{
            background:#ebddea;
        }
    </style>

    <h4 class="text-center mt-5 font-weight-light text-uppercase"><span class="font-weight-normal">${name}</span>! Mira todos los productos de rostro que tenemos para ti!</h4>
    <div class="row row-cols-3">
        <c:choose>
            <c:when test="${ !empty sessionScope.LIST_ALL_PRODUCTS}">
                <c:forEach var="product" items="${sessionScope.LIST_ALL_PRODUCTS}">
                    <div class="card">
                        <div class="row no-gutters">
                            <div class="col-4 bg-pink">
                                <img src="${pageContext.request.contextPath}/${product.getImagePath()}" class="card-img" alt="...">
                            </div>
                            <div class="col-8">
                                <div class="card-body">
                                    <h5 class="card-title"><c:out value="${product.getName()}"/></h5>
                                    <p class="text-success"><c:out value="${ (product.isActive()) ? 'Disponible':'No disponible'}"/></p>
                                    <p class="card-text"><c:out value="${product.getDescription()}"/></p>
                                    <p class="card-text">Precio: $<c:out value="${ product.getPrice() }"/>00</p>
                                    <p class="card-text">Proveedor: <c:out value="${ product.getSupplier().getName() }"/></p>
                                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <div class="alert alert-danger w-50 text-center mx-auto">
                    No hay productos registrados
                </div>
            </c:otherwise>
        </c:choose>
    </div>


    <jsp:include page="../../public/footer.jsp"/>
    <script src="${pageContext.request.contextPath}/app/js/app.js"></script>
    <jsp:include page="../../../shared/footer.jsp"/>

