<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../../shared/head.jsp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/navbar.css">

<body>
    <jsp:include page="../navbar/navbar.jsp"/>
    <div class="container">
        <div class="row">
            <div class="card mx-auto w-50 mt-5 bg-light border-dark">
                <div class="card-header bg-dark text-white">
                    <h5 class="card-title mt-4 text-center fz-100">Registrar Proveedor</h5>
                </div>
                <form action="${pageContext.servletContext.contextPath}/admin/suppliers/add" method="post" class="p-4">
                    <div class="form-group">                                            
                        <label >Nombre Proveedor:</label>
                        <input type="text" name="name" class="form-control">
                    </div> 
                    <div class="form-group">
                        <label>Dirección:</label>
                        <input type="text" name="address" class="form-control">
                    </div>  
                    <div class="form-group">                                            
                        <label>Número de Contacto:</label>
                        <input type="text" name="contactNumber" class="form-control">
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-success">Registrar Proveedor</button>
                    </div>
                </form>  
            </div>
        </div>
        <a href="${pageContext.servletContext.contextPath}/admin/suppliers" class="text-dark"><i class="fas fa-arrow-circle-left arrow mr-1"></i>Volver</a>
    </div>
    <jsp:include page="../../shared/footer.jsp"/>
</body>



