<%-- 
    Document   : singUp
    Created on : Oct 15, 2020, 10:52:05 AM
    Author     : sarav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="./shared/root_head.jsp"/>
    <link rel="stylesheet" href="./assets/css/register.css">
    <body>
        <jsp:include page="./shared/navbar.jsp"/>   
        
        <h1>Registro</h1>
        <form action="signUp" method="POST">
            <input type="text" placeholder="Nombre" name="name"/><br>
            <input type="text" placeholder="Apellido" name="lastName"/><br>
            <input type="email" placeholder="Correo Electrónico" name="email"/><br>
            <input type="password" placeholder="Contraseña" name="password"/><br>
            <input type="password" placeholder="Confrimar Contraseña" name="confirmPassword"/><br>
            <input type="submit" value="Crear Cuenta"/>
            
            <h5 class="invalidLogin">${errorMessage}</h5>
        </form>
        <jsp:include page="./shared/footer.jsp"/>  
    </body>
</html>
