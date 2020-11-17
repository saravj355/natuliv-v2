<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="shared/head.jsp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/webPage/assets/css/index.css">

<body>
    <jsp:include page="shared/navbar.jsp"/>
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="${pageContext.request.contextPath}/webPage/assets/img/fondo1.jpeg" class="d-block w-100" alt="..."width="1300" height="450">>
            </div>
            <div class="carousel-item">
                <img src="${pageContext.request.contextPath}/webPage/assets/img/fondo2.jpeg" class="d-block w-100" alt="..."width="1300" height="450">
            </div>
            <div class="carousel-item">
                <img src="${pageContext.request.contextPath}/webPage/assets/img/fondo3.jpeg" class="d-block w-100" alt="..."width="1300" height="450">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="container mt-3 text-center">
        <h3 class="text-center mb-3">En Natuliv encuentras productos de excelente calidad de empresas Colombianas como: </h3> 
        <div class="row">
            <div class="col-lg-4">
                <img src="${pageContext.request.contextPath}/webPage/assets/img/piel_perfectta.jpeg" class="rounded-circle mx-auto" width="140" height="130">
                <h4>Piel Perfectta</h4>
                <p> Elabora productos naturales, tanto para el cuidado del cabello, rostro y piel corporal.
                    Cuenta con excelentes testimonios por parte de sus clientes. <br>
                    ¡Ánimate a experimentar y cambiar tu vida para tener una Piel Perfectta!</p>
                <button type="button" class="btn btn-outline-success">Conocer más &raquo;</button>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
                <img src="${pageContext.request.contextPath}/webPage/assets/img/cocosecha.jpg" class="rounded-circle mx-auto" width="140" height="130">
                <h4>Cocosecha</h4>
                <p> Empresa Colombiana que ofrece productos 100% naturales para el uso personal.
                    Al ensayar sus elaboraciones, notas cambios y resultados muy ligeros y óptimos. <br>
                    Tu mejor opción es Cocosecha</p>
                <button type="button" class="btn btn-outline-success">Conocer más &raquo;</button>
            </div>
            <div class="col-lg-4">
                <img src="${pageContext.request.contextPath}/webPage/assets/img/encanto_n.jpg" class="rounded-circle mx-auto" width="150" height="130">
                <h4>Encanto Natural</h4>
                <p> Fabrica productos naturales para el cuidado facial, corporal y del cabello.
                    Brindando múltiples beneficios para quienes usen dichos productos. <br>
                    Decide lo sobresaliente, decide a <br> Encanto Natural</p>
                <button type="button" class="btn btn-outline-success">Conocer más &raquo;</button>
            </div>
        </div> 
    </div>
    <hr class="featurette-divider">

    <jsp:include page="webPage/shared/footer.jsp"/>
    <jsp:include page="shared/footer.jsp"/>
</body>