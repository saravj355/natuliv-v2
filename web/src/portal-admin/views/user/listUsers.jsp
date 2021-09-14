<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../navbar.jsp" />
<body>
    <div class="m-5">
        <a href="${pageContext.request.contextPath}/admin/users/add" class="btn btn-primary float-right ml-3">+ Crear</a>
        <form class="form-inline float-right mb-5" action="${pageContext.request.contextPath}/admin/users/search">
            <input type="hidden" name="role" value="${sessionScope.role}" class="btn btn-dark">
            <input type="text" name="search" class="form-control mr-2" placeholder="Busca un usuario">
            <input type="submit" value="Buscar" class="btn btn-dark">
        </form>
    </div>
    <div class="container"> 
        <table class="table table-striped text-center">
            <thead class="thead-dark">
                <tr>
                    <th>#</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Correo Electrónico</th>
                    <th>Acción</th>
                </tr>
            </thead>
            <tbody>
                <c:choose>
                    <c:when test="${ !empty sessionScope.LIST_ALL_USERS}">
                        <c:forEach var="user" items="${sessionScope.LIST_ALL_USERS}" varStatus="loop">
                            <tr>
                                <td><c:out value="${loop.index + 1}"/></td>
                                <td><c:out value="${ user.getFirstName() }"/></td>
                                <td><c:out value="${ user.getLastName() }"/></td>
                                <td><c:out value="${ user.getEmail() }"/></td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/admin/users/edit?id=${user.getId()}" class="btn btn-primary">Editar</a>
                                    <a href="${pageContext.request.contextPath}/admin/users/delete?id=${user.getId()}" class="btn btn-danger">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>                                           
                    </c:when>
                    <c:otherwise>
                        <tr>
                            <td class="alert alert-danger text-center mx-auto" colspan="10" >No hay usuarios registrados</td>
                        </tr>
                    </c:otherwise>
                </c:choose>
            </tbody>
        </table>
    </div>
</body>
