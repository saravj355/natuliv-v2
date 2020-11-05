<%-- 
    Document   : EditProducts
    Created on : Nov 2, 2020, 1:56:25 PM
    Author     : sarav
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../../shared/head.jsp"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/navbar.css">
    <body>
        <jsp:include page="../navbar/navbar.jsp"/>
        <h1 class="text-center">Listado Empresas</h1>
        <div class="container">
            <a href="${pageContext.request.contextPath}/admin/suppliers/add" class="btn btn-info float-right mb-3">+ Agregar Empresa</a>
            <table class="table table-striped text-center ">
                <thead class="thead-dark">
                    <tr>
                        <th>Id</th>
                        <th>Nombre Empresa</th>
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
                            No hay empresas registrados
                        </div>
                    </c:otherwise>
                </c:choose>
                </tbody>
            </table>
        </div>
        <jsp:include page="../../shared/footer.jsp"/>
    </body>
</html>
