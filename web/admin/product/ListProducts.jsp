<%-- 
    Document   : ListProducts
    Created on : Nov 2, 2020, 12:53:40 PM
    Author     : sarav
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../../shared/head.jsp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/navbar.css">
<body>
    <jsp:include page="../navbar/navbar.jsp"/>
    <h1 class="text-center">Listado Productos</h1>
    <div class="container">
        <a href="${pageContext.request.contextPath}/admin/products/add" class="btn btn-success float-right mb-3">+ Agregar Producto</a>
        <table class="table table-striped text-center ">
            <thead class="thead-dark">
                <tr>
                    <th>Id</th>
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
                    <c:when test="${ !empty sessionScope.LIST_ALL_PRODUCTS}">
                        <c:forEach var="product" items="${sessionScope.LIST_ALL_PRODUCTS}">
                            <tr>
                                <td><c:out value="${ product.getId() }"/></td>
                                <td><c:out value="${ product.getName() }"/></td>
                                <td><c:out value="${ product.getDescription() }"/></td>
                                <td><c:out value="${ product.getProductCategory().getName() }"/></td>
                                <td>$ <c:out value="${ product.getPrice() }"/>00</td>
                                <td><c:out value="${ product.getSupplier().getName() }"/></td>
                                <td><c:out value="${ (product.isActive()) ? 'Disponible':'No disponible'}"/></td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/admin/products/edit?id=${product.getId()}" class="btn btn-info">Editar</a>
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
    <jsp:include page="../../shared/footer.jsp"/>
</body>
</html>
