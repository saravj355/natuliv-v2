<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<link rel="stylesheet" href="${pageContext.request.contextPath}/src/web-page/css/main.css"/>
<jsp:include page="./components/navbar.jsp" />

<body>
    <img src="${pageContext.request.contextPath}/src/web-page/img/jumbotron-banner.png" class="w-100"/>

    <div class="container mt-5 text-center brand-container">
        <h3 class="text-center mb-3">
            En Natuliv encuentras productos de excelente calidad de empresas
            Colombianas como:
        </h3>
        <div class="row m-5">
            <div class="col-lg-4">
                <img
                    src="${pageContext.request.contextPath}/src/web-page/img/pielPerfectta.jpeg"
                    class="rounded-circle mx-auto"
                    alt="image-brand"
                    width="140"
                    height="130"
                    />
                <h4>Piel Perfectta</h4>
                <p>
                    Elabora productos naturales, tanto para el cuidado del cabello, rostro
                    y piel corporal. Cuenta con excelentes testimonios por parte de sus
                    clientes. <br />
                    ¡Ánimate a experimentar y cambiar tu vida para tener una Piel
                    Perfectta!
                </p>
                <button type="button" class="btn btn-info">Conocer más &raquo;</button>
            </div>
            <div class="col-lg-4">
                <img
                    src="${pageContext.request.contextPath}/src/web-page/img/cocosecha.jpg"
                    class="rounded-circle mx-auto"
                    alt="image-brand"
                    width="140"
                    height="130"
                    />
                <h4>Cocosecha</h4>
                <p>
                    Empresa Colombiana que ofrece productos 100% naturales para el uso
                    personal. Al ensayar sus elaboraciones, notas cambios y resultados muy
                    ligeros y óptimos. <br />
                    Tu mejor opción es Cocosecha
                </p>
                <button type="button" class="btn btn-info">Conocer más &raquo;</button>
            </div>
            <div class="col-lg-4">
                <img
                    src="${pageContext.request.contextPath}/src/web-page/img/encantoNatural.jpg"
                    class="rounded-circle mx-auto"
                    alt="image-brand"
                    width="150"
                    height="130"
                    />
                <h4>Encanto Natural</h4>
                <p>
                    Fabrica productos naturales para el cuidado facial, corporal y del
                    cabello. Brindando múltiples beneficios para quienes usen dichos
                    productos. <br />
                    Decide lo sobresaliente, decide a <br />
                    Encanto Natural
                </p>
                <button type="button" class="btn btn-info">Conocer más &raquo;</button>
            </div>
        </div>
    </div>

    <div class="jumbotron mt-5 mb-5 container-image">
        <div class="row">
            <div class="col-lg-4">
                <h3 class="main-title">
                    ¿Conoces la importancia del uso de productos cosméticos naturales?
                </h3>
                <p class="main-text">
                    Es más amable con la piel, no cuenta con químicos dañinos para ti o
                    para el medio ambiente, es más sostenible, contiene fragancias
                    naturales, es rica en nutrientes, te protege mejor del envejecimiento
                    gracias a sus minerales.
                </p>
            </div>
        </div>
    </div>

    <div class="container text-center mt-4 shadow-lg p-3 mb-5 rounded box-container">
        <h3 class="title">¡Hola!</h3>
        <hr/>
        <p>
            Disfruta todos los beneficios que tenemos para ti, porque cuidarte es lo
            más importante para nosotros
        </p>
        <a href="${pageContext.request.contextPath}/login" class="btn btn-info">
            Ir a Natuliv
            <i class="fas fa-angle-double-right arrow" aria-hidden="true"></i>
        </a>
    </div>
    <jsp:include page="../../public/bubble-chat.jsp" />
    <jsp:include page="./components/footer.jsp" />
</body>
