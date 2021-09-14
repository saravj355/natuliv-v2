<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../navbar.jsp" />
<body>
    <div class="m-5">
        <a href="${pageContext.request.contextPath}/admin/suppliers/add" class="btn btn-primary float-right ml-3">+ Crear</a>
        <form class="form-inline float-right mb-5" action="${pageContext.request.contextPath}/admin/suppliers/search">
            <input type="text" name="search" class="form-control mr-2" placeholder="Busca un proveedor">
            <input type="submit" value="Buscar" class="btn btn-dark">
        </form>
    </div>
    <div class="container mt-5">
        <table class="table table-striped text-center ">
            <thead class="thead-dark">
                <tr>
                    <th>#</th>
                    <th>Logo</th>
                    <th>Nombre Proveedor</th>
                    <th>Dirección</th>
                    <th>Número de contacto</th>
                    <th>Acción</th>
                </tr>
            </thead>
            <tbody>
                <c:choose>
                    <c:when test="${ !empty sessionScope.LIST_ALL_SUPPLIERS}">
                        <c:forEach var="supplier" items="${sessionScope.LIST_ALL_SUPPLIERS}" varStatus="loop">
                            <tr>
                                <td><c:out value="${ loop.index }"/></td>
                                <td> <img src="${pageContext.request.contextPath}/${supplier.getLogoPath()}" width="100" height="50" alt="supplier-image"/></td>
                                <td><c:out value="${ supplier.getName() }"/></td>
                                <td><c:out value="${ supplier.getAddress() }"/></td>
                                <td><c:out value="${ supplier.getContactNumber()}"/></td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/admin/suppliers/edit?id=${supplier.getId()}" class="btn btn-info">Editar</a>
                                    <a href="${pageContext.request.contextPath}/admin/suppliers/delete?id=${supplier.getId()}" class="btn btn-danger">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>                                           
                    </c:when>
                    <c:otherwise>
                        <tr>
                            <td class="alert alert-danger text-center mx-auto" colspan="10" >No hay proveedores registrados</td>
                        </tr>
                    </c:otherwise>
                </c:choose>
            </tbody>
        </table>
    </div>
</body>
