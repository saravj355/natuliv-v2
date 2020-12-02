<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../../imports/navbar/navbar.jsp" />
<body>
    <h1 class="text-center mt-5 text-dark">Productos</h1>
    <hr>
    <div class="ml-5 mr-5">
        <a href="${pageContext.request.contextPath}/admin/products/add" class="btn btn-success float-right mb-3">+ Agregar Producto</a>
    </div>
    <table class="table table-striped text-center">
        <thead class="thead-dark">
            <tr>
                <th>Id</th>
                <th>Imágen</th>
                <th>Nombre Producto</th>
                <th>Descripción</th>
                <th>Categoría</th>
                <th>$ Precio</th>
                <th>Proveedor</th>
                <th>Disponibilidad</th>
                <th>Acción</th>
            </tr>
        </thead>
        <tbody>
            <c:choose>
                <c:when test="${!empty sessionScope.LIST_ALL_PRODUCTS}">
                    <c:forEach var="product" items="${sessionScope.LIST_ALL_PRODUCTS}">
                        <tr>
                            <td><c:out value="${ product.getId() }"/></td>
                            <td> <img src="${pageContext.request.contextPath}/${product.getImagePath()}" width="100" height="100" alt="product-image"/></td>
                            <td width="200"><c:out value="${ product.getName() }"/></td>
                            <td width="300"><c:out value="${ product.getDescription() }"/></td>
                            <td><c:out value="${ product.getProductCategory().getName()}"/></td>
                            <td>$ <c:out value="${ product.getPrice() }"/>00</td>
                            <td><c:out value="${ product.getSupplier().getName() }"/></td>
                            <td><c:out value="${ (product.isActive()) ? 'Disponible':'No disponible'}"/></td>
                            <td>
                                <a href="${pageContext.request.contextPath}/admin/products/edit?id=${product.getId()}" class="btn btn-info">Editar</a>
                                <a href="${pageContext.request.contextPath}/admin/products/delete?id=${product.getId()}" class="btn btn-danger">Eliminar</a>
                            </td>
                        </tr>
                    </c:forEach>                                           
                </c:when>
                <c:otherwise>
                <div class="alert alert-danger w-50 text-center mx-auto">
                    No hay productos registrados
                </div>
            </c:otherwise>
        </c:choose>
    </tbody>
</table>
</div>
<br>
<br>
<br>
<jsp:include page="../../../shared/scripts.jsp" />
<script src="${pageContext.request.contextPath}/admin/src/js/validation.js"></script>
</body>
