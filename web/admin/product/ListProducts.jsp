<%-- 
    Document   : ListProducts
    Created on : Nov 2, 2020, 12:53:40 PM
    Author     : sarav
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../../shared/head.jsp"/>
<body>
    <h1 class="text-center">Listado Productos</h1>
    <div class="container">
        <table class="table table-striped text-center
               ">
            <thead class="thead-dark">
                <tr>
                    <th>Id</th>
                    <th>Nombre Producto</th>
                    <th>Descripción</th>
                    <th>$ Precio</th>
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
                                <td><c:out value="${ product.getPrice() }"/>00</td>
                                <td><c:out value="${ product.isIsActive() }"/></td>
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
