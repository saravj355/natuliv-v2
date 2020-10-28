<%-- 
    Document   : index
    Created on : Oct 24, 2020, 9:38:16 AM
    Author     : sarav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../shared/root_head.jsp"/>
    <link rel="stylesheet" href="style.css">
    <!-- login component -->
    <div class="container">
        <div class="row">
            <div class="col text-center">
                <div class="card mx-auto justify-content-center">
                    <h5 class="card-title mx-auto">ADMINISTRACIÓN</h5>
                    <small>Ingrese sus credenciales de administrador</small>
                    <div class="card-body">
                        <form action="admin" method="POST" class="form">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                </div>
                                <input type="text" class="form-control" name="name" placeholder="Nombre de Usuario">   
                            </div>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input type="password" class="form-control" name="password" placeholder="Código Administrador">
                            </div>
                            <h5 class="errorMessage animate__animated animate__headShake">${errorMessage}</h5>
                            <button type="submit" id="btn" class="btn-submit">Ingresar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>  
    <jsp:include page="../shared/footer.jsp"/>
</body>
</html>