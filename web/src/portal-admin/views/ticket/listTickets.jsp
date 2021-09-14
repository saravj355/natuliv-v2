<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../navbar.jsp" />
<body>
    <div class="m-5">
        <a href="${pageContext.request.contextPath}/admin/tickets/add" class="btn btn-primary float-right ml-3">+ Crear</a>
        <form class="form-inline float-right mb-5" action="${pageContext.request.contextPath}/admin/tickets/search">
            <input type="text" name="search" class="form-control mr-2" placeholder="Busca un ticket">
            <input type="submit" value="Buscar" class="btn btn-dark">
        </form>
    </div>
    <div class="container">
        <table class="table table-striped text-center">
            <thead class="thead-dark">
                <tr>
                    <th>#</th>
                    <th>Responsable</th>
                    <th>Usuario</th>
                    <th>Prioridad</th>
                    <th>Fecha de creación</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:choose>
                    <c:when test="${!empty sessionScope.LIST_ALL_TICKETS}">
                        <c:forEach var="ticket" items="${sessionScope.LIST_ALL_TICKETS}" varStatus="loop">
                            <tr>
                                <td><c:out value="${ lopp.index }"/></td>
                                <td><c:out value="${ ticket.getResponsiblePerson().getFirstName()} ${ ticket.getResponsiblePerson().getLastName()}"/></td>
                                <td><c:out value="${ ticket.getUser().getFirstName()} ${ ticket.getUser().getLastName()}"/></td>
                                <td><c:out value="${ ticket.getPriority().getName()}"/></td>
                                <td><c:out value="${ ticket.getCreatedAt()}"/></td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/admin/tickets/edit?id=${ticket.getId()}" class="btn btn-info">Editar</a>
                                    <a href="${pageContext.request.contextPath}/admin/tickets/delete?id=${ticket.getId()}" class="btn btn-danger">Eliminar</a>
                                    <a href="${pageContext.request.contextPath}/admin/tickets/view?id=${ticket.getId()}" class="btn btn-warning">ver</a>
                                </td>
                            </tr>
                        </c:forEach>                                           
                    </c:when>
                    <c:otherwise>
                        <tr>
                            <td class="alert alert-danger text-center mx-auto" colspan="10" >No hay Tickets registrados</td>
                        </tr>
                    </c:otherwise>
                </c:choose>
            </tbody>
        </table>
    </div>
</body>
