<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../../imports/navbar/index.jsp"/>
<style>
    .bg-pink{
        background:#ebddea;
    }
    .card{
        width:520px;
        margin:10px;
    }
</style>

<h4 class="text-center mt-5 font-weight-light text-uppercase"><span class="font-weight-normal">${name}</span>! Mira todos los productos de rostro que tenemos para ti!</h4>
<div class="container-products m-5">
    <div class="row">
        <c:choose>
            <c:when test="${ !empty sessionScope.LIST_ALL_FACE_PRODUCTS}">
                <c:forEach var="product" items="${sessionScope.LIST_ALL_FACE_PRODUCTS}">
                    <div class="card">
                        <div class="w-100 bg-pink text-center">
                            <img src="${pageContext.request.contextPath}/${product.getImagePath()}" height="300" class="card-img w-50">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title"><c:out value="${product.getName()}"/></h5>
                            <div class="row">
                                <div class="col">
                                    <p
                                        <c:choose>
                                            <c:when test="${product.isActive()}">
                                                class="text-success">Disponible
                                            </c:when>
                                            <c:otherwise>
                                                class="text-danger">No Disponible
                                            </c:otherwise>
                                        </c:choose>
                                    </p>
                                </div>
                                <div class="col">
                                    <a href="https://pielperfectta.com" target="_blank" class="card-text float-right"><c:out value="${ product.getSupplier().getName() }"/></a>
                                </div>
                            </div>
                            <p class="card-text"><c:out value="${product.getDescription()}"/></p>

                            <p class="card-text font-weight-bold">Dirección: <span class="font-weight-light"><c:out value="${ product.getSupplier().getAddress() }"/></span></p>
                            <p class="card-text font-weight-bold">Número de contacto: <span class="font-weight-light"><c:out value="${ product.getSupplier().getContactNumber() }"/></span></p>
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
</div>
<jsp:include page="../../imports/footer/index.jsp"/>


