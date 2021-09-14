<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../navbar.jsp" />

<style>
    .card-success{
        background-color: #ace6c7;
    }
</style>
<body>
    <div class="container">
        <c:choose>
            <c:when test="${ !empty sessionScope.ticket}">
                <div class="card mx-auto mt-4 bg-light border-dark">
                    <div class="card-header">
                        <h2>Detalles del ticket</h2>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <strong>Usuario Afectado:</strong>
                            </div>
                            <div class="col">
                                <span>${ticket.getUser().getFirstName()} ${ticket.getUser().getLastName()}</span>
                            </div>
                            <div class="col">
                                <strong>Usuario Responsable:</strong>
                            </div>
                            <div class="col">
                                <span>${ticket.getResponsiblePerson().getFirstName()} ${ticket.getResponsiblePerson().getLastName()}</span>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col">
                                <strong>Fecha de creación:</strong>
                            </div>
                            <div class="col">
                                <span>${ticket.getCreatedAt()}</span>
                            </div>
                            <div class="col">
                                <strong>Fecha de última actualización:</strong>
                            </div>
                            <div class="col">
                                <span>${ticket.getUpdatedAt()}</span>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col">
                                <strong>Prioridad:</strong>
                            </div>
                            <div class="col">
                                <span>${ticket.getPriority().getName()}</span>
                            </div>
                            <div class="col">
                                <strong>Estado:</strong>
                            </div>
                            <div class="col">
                                <span>${ticket.getStatus().getName()}</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="c-form-group mt-5">
                    <textarea class="c-form-control c-with-editor">
                        ${ticket.getDescription()}
                    </textarea>
                </div>
                <div class="card mx-auto m-4 bg-light border-dark">
                    <div class="card-header">
                        <div class="row">
                            <div class="col">
                                <h3>Soluciones</h3>
                            </div>
                            <div class="col">
                                <button type="button" class="btn btn-primary float-right" data-toggle="modal" data-target="#exampleModal">
                                    +
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <c:choose>
                            <c:when test="${!empty sessionScope.LIST_ALL_COMMENTS}">
                                <c:forEach var="comment" items="${sessionScope.LIST_ALL_COMMENTS}" varStatus="loop">
                                    <c:choose>
                                        <c:when test="${comment.user.getUserRoleId() == 1 || comment.user.getUserRoleId() == 3}">
                                            <div class="card card-success float-left d-block">
                                                <div class="card-header">
                                                    <b>Soporte</b> 
                                                    ${comment.user.getFirstName()}  ${comment.user.getLastName()}
                                                </div>
                                                <div class="card-body bg-white">
                                                    ${comment.getDescription()}
                                                </div>
                                                <div class="card-footer">
                                                    ${comment.getCreatedAt()}
                                                </div>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="card card-primary float-left d-block">
                                                <div class="card-header">
                                                    <b>Usuario</b> 
                                                    ${comment.user.getFirstName()}  ${comment.user.getLastName()}
                                                </div>
                                                <div class="card-body bg-white">
                                                    ${comment.getDescription()}
                                                </div>
                                                <div class="card-footer">
                                                    ${comment.getCreatedAt()}
                                                </div>
                                            </div>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>                                           
                            </c:when>
                            <c:otherwise>
                                <div class="alert alert-danger text-center w-50 mx-auto mt-5">No hay comentarios</div>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Comentario</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <form action="${pageContext.servletContext.contextPath}/admin/tickets/add/comment" name="form" method="post">
                                <input type="hidden" name="ticketId" value="${ticket.getId()}">
                                <div class="modal-body">
                                    <div class="c-form-group mt-5">
                                        <textarea class="c-form-control c-with-editor" name="description"></textarea>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-primary">Save changes</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </c:when>
        </c:choose>
    </div>

    <script src="https://cdn.tiny.cloud/1/qxpccojfx2fvc6uw6de4zqx3phn2ga60ynh45tvvycj0vov3/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
        tinymce.init({
            selector: 'textarea',
            height: 300,
            menubar: false,
            plugins: [
                'advlist autolink lists link image charmap print preview anchor',
                'searchreplace visualblocks code fullscreen',
                'insertdatetime media table paste code help wordcount'
            ],
            toolbar: 'undo redo | formatselect | ' +
                    'bold italic backcolor | alignleft aligncenter ' +
                    'alignright alignjustify | bullist numlist outdent indent | ' +
                    'removeformat | help',
            content_style: 'body { font-family:Helvetica,Arial,sans-serif; font-size:14px }'
        });
    </script>
</body>
