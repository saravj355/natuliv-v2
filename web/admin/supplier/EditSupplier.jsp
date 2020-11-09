<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../../shared/head.jsp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/navbar.css">

<body>
    <jsp:include page="../shared/navbar/navbar.jsp"/>
    <div class="container">
        <div class="row">
            <div class="card mx-auto w-50 mt-4 bg-light border-dark">
                <div class="card-header bg-dark text-white">
                    <h5 class="card-title mt-4 text-center">Editar Proveedor</h5>
                </div>
                <c:choose>
                    <c:when test="${ !empty sessionScope.supplier}">
                        <form action="${pageContext.servletContext.contextPath}/admin/suppliers/edit" method="post" class="p-4">
                            <input name="supplierId" value="${supplier.getId()}" type="hidden">
                            <div class="form-group">                                            
                                <label >Nombre Proveedor:</label>
                                <input type="text" name="name" value="${supplier.getName()}" class="form-control" readonly>
                            </div> 
                            <div class="form-group">
                                <label>Dirección:</label>
                                <input type="text" name="address" value="${supplier.getAddress()}" class="form-control">
                            </div>  
                            <div class="form-group">                                            
                                <label>Número de Contacto:</label>
                                <input type="text" name="contactNumber" value="${supplier.getContactNumber()}" class="form-control">
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </div>
                        </form>  
                    </c:when>
                </c:choose>
            </div>
        </div>
        <a href="${pageContext.servletContext.contextPath}/admin/suppliers" class="text-dark"><i class="fas fa-arrow-circle-left arrow mr-1"></i>Volver</a>
    </div>
    <jsp:include page="../../shared/footer.jsp"/>
</body>
