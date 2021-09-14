<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<body>
    <jsp:include page="../navbar.jsp" /> 
    <div class="container">
        <div class="row">
            <div class="card mx-auto mt-4 bg-light border-dark">
                <div class="card-header bg-dark text-white">
                    <h5 class="card-title mt-4 text-center fz-100">Crear Ticket</h5>
                </div>
                <div class="card-body">
                    <div id="main_area" class="row-fluid">
                        <div class="span10 offset1">
                            <div id="formAlert" class="alert alert-danger hide d-none">  
                                <h5 class="animate__animated animate__headShake text-center validation">Porfavor llena todos los campos</h5>
                            </div>
                        </div>
                    </div>
                    <form action="${pageContext.servletContext.contextPath}/admin/tickets/add" method="post" name="form" class="p-4">
                        <div class="row">
                            <div class="col">
                                <div class="form-group">                                            
                                    <label>Persona Responsable: </label>
                                    <c:choose>
                                        <c:when test="${ !empty sessionScope.responsiblePersonList}">
                                            <select name="responsiblePersonId" class="form-control">
                                                <option value="">No asignar</option>
                                                <c:forEach var="responsiblePerson" items="${sessionScope.responsiblePersonList}">
                                                    <option value="${responsiblePerson.getId()}">${responsiblePerson.getFirstName()} ${responsiblePerson.getLastName()}</option>
                                                </c:forEach>  
                                            </select>
                                        </c:when>
                                        <c:otherwise>
                                            <a class="btn btn-info" href="${pageContext.servletContext.contextPath}/admin/users/add">Crear Usuario</a>
                                        </c:otherwise>
                                    </c:choose>
                                    </select> 
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-group">                                            
                                    <label >Cliente:</label>
                                    <c:choose>
                                        <c:when test="${ !empty sessionScope.usersList}">
                                            <select name="userId" class="form-control">
                                                <option value="" disabled></option>
                                                <c:forEach var="user" items="${sessionScope.usersList}">
                                                    <option value="${user.getId()}">${user.getFirstName()} ${user.getLastName()}</option>
                                                </c:forEach>  
                                            </select>
                                        </c:when>
                                        <c:otherwise>
                                            <a class="btn btn-info" href="${pageContext.servletContext.contextPath}/admin/users/add">Crear Usuario</a>
                                        </c:otherwise>
                                    </c:choose>
                                </div> 
                            </div>     
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">                                            
                                    <label >Prioridad</label>
                                    <c:choose>
                                        <c:when test="${ !empty sessionScope.ticketPriorityList}">
                                            <select name="priorityId" class="form-control">
                                                <option value="" disabled></option>
                                                <c:forEach var="priority" items="${sessionScope.ticketPriorityList}">
                                                    <option value="${priority.getId()}">${priority.getName()}</option>
                                                </c:forEach>  
                                            </select>
                                        </c:when>
                                    </c:choose>
                                </div> 
                            </div>  
                            <div class="col-md-6">
                                <div class="form-group">                                            
                                    <label>Estado</label>
                                    <c:choose>
                                        <c:when test="${ !empty sessionScope.ticketStatusList}">
                                            <select name="statusId" class="form-control">
                                                <option value="" disabled></option>
                                                <c:forEach var="status" items="${sessionScope.ticketStatusList}">
                                                    <option value="${status.getId()}">${status.getName()}</option>
                                                </c:forEach>  
                                            </select>
                                        </c:when>
                                    </c:choose>
                                </div> 
                            </div>  
                        </div>
                        <div class="mt-3">
                            <label>Descripción:</label>
                            <textarea class="c-form-control c-with-editor textarea" name="description"></textarea>
                        </div>
                        <div class="text-center m-3">
                            <button type="submit" class="btn btn-success w-50">Crear Ticket</button>
                        </div>
                    </form>  
                </div>
            </div>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/src/portal-admin/src/js/inputValidation.js"></script>
    <script src="https://cdn.tiny.cloud/1/qxpccojfx2fvc6uw6de4zqx3phn2ga60ynh45tvvycj0vov3/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
        tinymce.init({
            selector: 'textarea',
            height: 250,
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



