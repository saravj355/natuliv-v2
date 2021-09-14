<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<link rel="stylesheet" href="${pageContext.request.contextPath}/src/web-page/css/about.css">
<jsp:include page="components/navbar.jsp"/>
<style>
    .bg-purple{
        background-color: #806fcb !important;
    }
</style>
<body>
    <div class="container">
        <div class="content-text text-center">
            <h1 class="main-title">Preguntas Frecuentes</h1>
            <p class="main-text">
                Ingresa a nuestra aplicación web la cual te brindará recomendaciones personalizadas sobre productos naturales para tu tipo de piel.
            </p>
        </div>
        <div class="row">
            <div class="col">
                <div class="container m-2 mx-auto">
                    <div class="card mb-3 text-center shadow-sm ">
                        <div class="card-header bg-purple ">
                            <h4 class="text-white">¿Como Registrarme?</h4>
                        </div>
                        <div class="card-body bg-light">
                            <ul class="list-unstyled mt-3 mb-4">
                                <p>En la página Web en la parte superior derecha se encuentra el botón <a href="${pageContext.request.contextPath}/signup">Registrarme</a>, allí ingresas tus datos para quedar registrado en la base de datos de NATULIV
                                </p>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card shadow-sm text-center mb-3">
                    <div class="card-header text-center bg-purple">
                        <h4 class="text-white text-center">¿Como saber si un producto es el indicado para mi? </h4>
                    </div>
                    <div class="card-body text-center bg-light">
                        <ul class="list-unstyled mt-3 mb-4 text-center">
                            <p>
                                Una vez te registres, Natuliv te brinda un cuestionario con preguntas las cuales debes responder, para tener conocimiento sobre el tipo de cabello, piel coporal y facial que posees. Una vez diligenciado el cuestionario la aplicación te presentará productos adecuados para ti.
                            </p>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <div class="card shadow-sm mb-5 text-center">
                    <div class="card-header bg-purple">
                        <h4 class="my-0 font-weight-normal text-white">¿Qué beneficios tiene adquirir este producto o servicio? </h4>
                    </div>
                    <div class="card-body bg-light">
                        <p>
                            Natuliv brinda un extenso catalogo de productos cosmeticos naturales, los cuales puedes usar para mejorar tu apariencia y proteger tu piel y cuero cabelludo
                        </p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card shadow-sm mb-5 text-center">
                    <div class="card-header bg-purple">
                        <h4 class="my-0 font-weight-normal text-white">¿Cuánto cuesta registrarme en esta aplicación?  </h4>
                    </div>
                    <div class="card-body bg-light">
                        <p class="list mt-3 mb-4">
                            Puedes adquirir la aplicación de NATULIV sin ningun costo, lo mejor!
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col mx-auto">
            <div class="card shadow-sm mb-5 text-center">
                <div class="card-header bg-purple">
                    <h4 class="my-0 font-weight-normal text-white">¿Qué hago en caso de presentar un problema con la aplicación?</h4>
                </div>
                <div class="card-body bg-light">
                    <p class="list mt-3 mb-4">
                        Puedes utilizar nuestros canales de Soporte, los cuales se encuentran en la página Web por medio del Chat, o por medio del Aplicativo
                    </p>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="../../public/bubble-chat.jsp" />
    <jsp:include page="./components/footer.jsp" />
</body>