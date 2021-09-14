<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="${pageContext.request.contextPath}/src/web-page/css/contact.css">
<jsp:include page="./components/navbar.jsp"/>

<body>
    <div class="container text-center mt-3 mb-4">
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
   
    <jsp:include page="./components/footer.jsp" />
</body>
