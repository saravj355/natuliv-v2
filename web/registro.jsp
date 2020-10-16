<%-- 
    Document   : singUp
    Created on : Oct 15, 2020, 10:52:05 AM
    Author     : sarav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
        <h1>Registro</h1>
        <form action="registrar" method="POST">
            <input type="text" placeholder="Nombre" name="name"/><br>
            <input type="text" placeholder="Apellido" name="lastName"/><br>
            <input type="email" placeholder="Correo Electrónico" name="email"/><br>
            <input type="password" placeholder="Contraseña" name="password"/><br>
            <input type="password" placeholder="Confrimar Contraseña" name="confirmPassword"/><br>
            <input type="submit" value="Crear Cuenta"/>
        </form>
    </body>
</html>
