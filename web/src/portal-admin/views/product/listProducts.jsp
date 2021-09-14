<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../navbar.jsp" />
<body>
    <div class="m-5">
        <a href="${pageContext.request.contextPath}/admin/products/add" class="btn btn-primary float-right ml-3">+ Crear</a>
        <form class="form-inline float-right mb-5" action="${pageContext.request.contextPath}/admin/products/search">
            <input type="text" name="search" class="form-control mr-2" placeholder="Busca un producto">
            <input type="submit" value="Buscar" class="btn btn-dark">
        </form>
    </div>
    <div class="container">
        <table class="table table-striped text-center">
            <thead class="thead-dark">
                <tr>
                    <th>#</th>
                    <th>Imágen</th>
                    <th>Nombre Producto</th>
                    <th>Categoría</th>
                    <th>Precio</th>
                    <th>Disponibilidad</th>
                    <th>Acción</th>
                </tr>
            </thead>
            <tbody>
                <c:choose>
                    <c:when test="${!empty sessionScope.LIST_ALL_PRODUCTS}">
                        <c:forEach var="product" items="${sessionScope.LIST_ALL_PRODUCTS}" varStatus="loop">
                            <tr>
                                <td><c:out value="${loop.index + 1}"/></td>
                                <td> <img src="${pageContext.request.contextPath}/${product.getImagePath()}" width="100" height="100" alt="product-image"/></td>
                                <td width="200"><c:out value="${ product.getName() }"/></td>
                                <td><c:out value="${ product.getProductCategory().getDisplayName()}"/></td>
                                <td>$ <c:out value="${ product.getPrice() }"/></td>
                                <td><c:out value="${ (product.isActive()) ? 'Disponible':'No disponible'}"/></td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/admin/products/edit?id=${product.getId()}" class="btn btn-info">Editar</a>
                                    <a href="${pageContext.request.contextPath}/admin/products/delete?id=${product.getId()}" class="btn btn-danger">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>                                           
                    </c:when>
                    <c:otherwise>
                        <tr>
                            <td class="alert alert-danger text-center mx-auto" colspan="10" >No hay productos registrados</td>
                        </tr>
                </c:otherwise>
            </c:choose>
            </tbody>
        </table>
    </div>
</body>
