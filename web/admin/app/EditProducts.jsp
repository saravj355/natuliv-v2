<%-- 
    Document   : EditProducts
    Created on : Nov 2, 2020, 1:56:25 PM
    Author     : sarav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../../shared/head.jsp" />
    <body>
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <div class="card mx-auto justify-content-center">
                        <div class="card-body bg-light">
                            <form action="${pageContext.request.contextPath}/admin/app/list-products/edit" method="POST">
                                <input type="text" class="form-control" name="name" placeholder="Nombre del Producto">   
                                <textarea class="form-control password input" name="description" id="password" placeholder="Descripción"></textarea>
                                <input type="text" class="form-control" name="price" placeholder="Precio">  
                                <select name="isActive">
                                    <option value="true">Si</option>
                                    <option value="false">No</option>
                                </select>
                            <h5 class="errorMessage animate__animated animate__headShake">${errorMessage}</h5>
                            <input type="submit" class="btn mt-4 btn-dark" value="Ingresar">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>  
    <jsp:include page="../../shared/footer.jsp" />
</body>
</html>
