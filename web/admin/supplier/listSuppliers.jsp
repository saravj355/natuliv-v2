<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../public/navbar/admin.navbar.jsp" />
<body>
    <h1 class="text-center mt-5 text-dark">Proveedores</h1>
    <hr>
    <div class="container mt-5">
        <a href="${pageContext.request.contextPath}/admin/suppliers/add" class="btn btn-success float-right mb-3">+ Agregar Proveedor</a>
        <table class="table table-striped text-center ">
            <thead class="thead-dark">
                <tr>
                    <th>Id</th>
                    <th>Nombre Proveedor</th>
                    <th>Dirección</th>
                    <th>Número de contacto</th>
                    <th>Acción</th>
                </tr>
            </thead>
            <tbody>
                <c:choose>
                    <c:when test="${ !empty sessionScope.LIST_ALL_SUPPLIERS}">
                        <c:forEach var="supplier" items="${sessionScope.LIST_ALL_SUPPLIERS}">
                            <tr>
                                <td><c:out value="${ supplier.getId() }"/></td>
                                <td><c:out value="${ supplier.getName() }"/></td>
                                <td><c:out value="${ supplier.getAddress() }"/></td>
                                <td><c:out value="${ supplier.getContactNumber()}"/></td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/admin/suppliers/edit?id=${supplier.getId()}" class="btn btn-info">Editar</a>
                                </td>
                            </tr>
                        </c:forEach>                                           
                    </c:when>
                    <c:otherwise>
                    <div class="alert alert-danger w-50 text-center mx-auto">
                        No hay proveedores registrados
                    </div>
                </c:otherwise>
            </c:choose>
            </tbody>
        </table>
    </div>
    <jsp:include page="../public/footer/admin.footer.jsp" />
</body>
