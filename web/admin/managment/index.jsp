<%-- 
    Document   : index
    Created on : Oct 30, 2020, 1:50:37 PM
    Author     : sarav
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../../shared/head.jsp" />
    <body>
        <h1 class="text-center">Listado Usuarios</h1>
        <div class="container">
            <table class="table table-striped text-center
                   ">
                <thead class="thead-dark">
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Correo Electrónico</th>
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
        <jsp:include page="../../shared/footer.jsp" />
    </body>
</html>
