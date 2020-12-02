<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="./shared/head.jsp"/>
<style>
    body{
        background-image: url('public/img/contact-bg.png');
        background-repeat: no-repeat;
        background-size:100%;
    }
</style>

<body>
    <jsp:include page="shared/navbar.jsp"/>

    <div class="container text-center mt-3">
        <h1>Contáctanos</h1>
        <p>¡Hola! Gracias por comunicarte con nosotros, por favor déjanos tu pregunta, novedad o problema. <br>
            Realiza el formulario con tus datos. <br>
            La respuesta por este medio puede tardar entre 1-5 días hábiles sin contar sábados, domingos y festivos, 
            responderemos lo más pronto posible, y entre más concreto seas con la información de la novedad será más fácil 
            y rápido darte solución. 
        <div class="card mx-auto">
            <div class="card-body">
                <form>
                    <div class="form-group">
                        <input class="form-control" type="text" placeholder="Nombre" required>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="email" placeholder="Correo Electrónico" required>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" placeholder="Ingresa el mensaje" required ></textarea>
                    </div>
                    <button class="btn btn-info" type="submit">Enviar</button></p>
                </form>
            </div>
        </div>
    </div>
    <div class="container-center text-center mt-4">
        <h3 class="m-2">También puedes encontrarnos como: </h3>
        <div class="container">
            <div class="card-deck mb-3 text-center">
                <div class="card mb-4 shadow-sm">
                    <div class="card-body">
                        <i class="fas fa-user"></i>
                        <p>Juan Diego Hernández</p>
                        <i class="fas fa-phone"></i>
                        <p>+57 311 413 59 44</p>
                        <i class="fas fa-envelope"></i>
                        <p>juan_hernandez23182@elpoli.edu.co </p>
                        <button type="button" class="btn btn-info">Administrador</button>
                    </div>
                </div>
                <div class="card mb-4 shadow-sm">
                    <div class="card-body">
                        <i class="fas fa-user"></i>
                        <p>Sara Valle Jaramillo</p>
                        <i class="fas fa-phone"></i>
                        <p>+57 302 457 72 28</p>
                        <i class="fas fa-envelope"></i>
                        <p>sara_valle23201@elpoli.edu.co </p>
                        <button type="button" class="btn btn-info">Administrador</button>
                    </div>
                </div>
                <div class="card mb-4 shadow-sm">
                    <div class="card-body">
                        <i class="fas fa-user"></i>
                        <p>Evelyn Rodríguez Restrepo</p>
                        <i class="fas fa-phone"></i>
                        <p>+57 350 566 51 87</p>
                        <i class="fas fa-envelope"></i>
                        <p>evelyn_rodriguez23201@elpoli.edu.co </p>
                        <button type="button" class="btn btn-info">Administrador</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="./shared/footer.jsp"/>
</body>
