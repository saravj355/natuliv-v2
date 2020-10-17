<%-- 
    Document   : index
    Created on : Oct 15, 2020, 10:28:30 AM
    Author     : sarav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Iniciar Sesión</title>
        <link rel="stylesheet" href="./assets/css/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        <!--Navbar component -->
        <header>
            <nav class="navbar stroke">
                <a class="navbar-brand" href="#">
                    <img src="./assets/img/logo.png" class="d-inline-block align-top logo" alt="logo" loading="lazy">
                </a>
                <ul class="nav justify-content-center">
                    <li class="nav-item">
                        <a class="nav-link active fill" href="#">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link fill" href="#">Nosotros</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link fill" href="#">Comunícate</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link fill" href="#">Trabaja con nosotros</a>
                    </li>
                </ul>
                <ul class="nav justify-content-end">
                    <li class="nav-item">
                        <a class="nav-link account" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                           href="#">Cuenta<img class="icon" src="./assets/img/iconUser.png"></a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="#" class="dropdown-item">Iniciar Sesión</a></li>
                            <div class="dropdown-divider"></div>
                            <li><a href="#" class="dropdown-item">Crear Cuenta</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </header>
        <div class="container">
            <div class="card">
                <div class="row">
                    <div class="col">
                        1 of 2
                    </div>
                    <div class="col">
                        <h1>BIENVENIDO</h1>
                        <form action="login" method="POST">
                            <input type="email" placeholder="Correo Electrónico" name="email"/><br>
                            <input type="password" placeholder="Contraseña" name="password"/><br>
                            <input type="submit" value="Iniciar Sesión"/>
                        </form>
                        <a href="registro.jsp">Aún no tienes cuenta? Regístrate</a>
                    </div>
                </div>
            </div>
        </div>


        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>