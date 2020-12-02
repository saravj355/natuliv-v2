<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../../imports/navbar/navbar.jsp" />
<body>
    <h1 class="text-center mt-5 text-dark">Usuarios</h1>
    <hr>
    <div class="m-3">
        <form class="form-inline float-right" action="${pageContext.request.contextPath}/admin/users/search">
            <input type="text" name="search" class="form-control mr-3" placeholder="Busca un usuario">
            <input type="submit" value="Buscar" class="btn btn-success">
        </form>
    </div>
    <div class="container mt-5">
        <table class="table table-striped text-center">
            <thead class="thead-dark">
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Correo Electrónico</th>
                    <th>Género</th>
                    <th>Acción</th>
                </tr>
            </thead>
            <tbody>
                <c:choose>
                    <c:when test="${ !empty sessionScope.LIST_ALL_USERS}">
                        <c:forEach var="user" items="${sessionScope.LIST_ALL_USERS}">
                            <tr>
                                <td><c:out value="${ user.getId() }"/></td>
                                <td><c:out value="${ user.getName() }"/></td>
                                <td><c:out value="${ user.getLastName() }"/></td>
                                <td><c:out value="${ user.getEmail() }"/></td>
                                <td><c:out value="${ user.getGender() }"/></td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/admin/users/edit?id=${user.getId()}" class="btn btn-info">Editar</a>
                                    <a href="${pageContext.request.contextPath}/admin/users/delete?id=${user.getId()}" class="btn btn-danger">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>                                           
                    </c:when>
                    <c:otherwise>
                    <div class="alert alert-danger w-50 text-center mx-auto">
                        No hay usuarios registrados
                    </div>
                </c:otherwise>
            </c:choose>
            </tbody>
        </table>
    </div>
    <jsp:include page="../../../shared/scripts.jsp" />
    <script src="${pageContext.request.contextPath}/admin/src/js/validation.js"></script>
</body>
