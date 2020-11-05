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
    <body>
        <div class="container">
            <div class="row">
                <div class="card mx-auto w-50 mt-4">
                    <h5 class="card-title mt-4 text-center">Registrar Empresa</h5>
                    <form action="${pageContext.servletContext.contextPath}/admin/suppliers/add" method="post" class="p-4">
                        <div class="form-group">                                            
                            <label >Nombre Empresa:</label>
                            <input type="text" name="name" class="form-control">
                        </div> 
                        <div class="form-group">
                            <label>Address:</label>
                            <input type="text" name="address" class="form-control">
                        </div>  
                        <div class="form-group">                                            
                            <label >Número de contácto:</label>
                            <input type="text" name="contactNumber" class="form-control">
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-warning">Registrar</button>
                        </div>
                    </form>  
                </div>
            </div>
        </div>
    </body>
</html>
