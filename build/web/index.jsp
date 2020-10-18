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
        <script src="https://kit.fontawesome.com/7adac5a862.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <!-- navbar component -->
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
        <!-- login component -->
        <div class="container">
            <div class="row justify-content-center">
                <div class="col">
                    <div class="card-group">
                        <div class="card">
                            <div class="card-body">
                                <img class="img-fluid brand-img mx-auto d-block" src="./assets/img/logo.png">
                            </div>
                        </div>
                        <div class="card text-center">
                            <h5 class="card-title mx-auto">BIENVENIDO</h5>
                            <div class="card-body">
                                <form action="login" method="POST">
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                                        </div>
                                        <input type="email" class="form-control" name="email" placeholder="Correo Electrónico" required>
                                        <div class="line-box">
                                            <div class="line"></div>
                                        </div>
                                    </div>
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                                        </div>
                                        <input type="password" class="form-control password" name="password" placeholder="Contraseña" required>
                                        <div class="line-box">
                                            <div class="line"></div>
                                        </div>
                                        <div class="input-group-append">
                                            <span class="input-group-text">
                                                <span toggle="#password-field" class="fa fa-fw fa-eye field_icon toggle-password"></span>  
                                            </span>
                                        </div>
                                        
                                    </div>
                                    <button type="submit" class="btn-submit">Iniciar Sesión</button>
                                </form>
                                <p>¿Aún no tienes cuenta? <a href="registro.jsp">Regístrate</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
            <script src="./assets/js/app.js"></script>  
    </body>
</html>