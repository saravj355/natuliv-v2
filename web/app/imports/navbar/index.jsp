<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/navbar.css">
<jsp:include page="../../../shared/head.jsp"/>
<header>
    <nav class="navbar sticky-top py-0 stroke">
        <a href="${pageContext.request.contextPath}/app" class="btn btn-outline-dark ml-5" id="hide-this"><i class="fas fa-arrow-left arrow mr-1"></i>Volver al inicio</a>
        <a class="navbar-brand mx-auto" href="${pageContext.request.contextPath}/app">
            <img src="${pageContext.request.contextPath}/public/img/logo.png" class="d-inline-block align-top logo" id="logo" alt="logo" loading="lazy">
        </a>
        <ul class="nav justify-content-end account">
            <li class="nav-item">
                <a class="nav-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                   href="#">${name}<img class="icon" src="${pageContext.request.contextPath}/public/img/user.png" alt="icon-user-navbar"></a>
                <ul class="dropdown-menu dropdown-menu-right">
                    <a href="#" data-toggle="modal" data-target="#help" class="dropdown-item">Ayuda</a>
                    <a href="${pageContext.request.contextPath}/logout" class="dropdown-item">Cerrar Sesion</a>
                </ul>
            </li>
        </ul>
    </nav>
</header>

<!-- Modal -->
<div class="modal fade help" id="help" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content bg-light">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ayuda</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <h5 class="font-weight-light">Esta sección, son productos especiales para ti, según tus respuestas en el cuestionario te recomendamos 
                                estos productos, al hacer click encontrarás toda la información y modo de uso, disfrutalos!</h5>
                            <img class="w-100" src="${pageContext.request.contextPath}/public/help/products-recomendation-info.png" alt="First slide">
                            <img class="w-100" src="${pageContext.request.contextPath}/public/help/products-recomendations.png" alt="Fisrt slide">
                        </div>
                        <div class="carousel-item">
                            <h5 class="font-weight-light">En esta sección, podrás ver la información del producto, y su modo de uso</h5>
                            <img class="w-100" src="${pageContext.request.contextPath}/public/help/products-use.png" alt="Second slide">
                            <img class="w-100" src="${pageContext.request.contextPath}/public/help/products-info.png" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <h5 class="font-weight-light">En esta sección se encuentran las categorias de todos los productos naturales, faciales, rostro, corporales y mascarilla</h5>
                            <img class="w-100" src="${pageContext.request.contextPath}/public/help/products-category.png" alt="Third slide">
                            <img class="w-100" src="${pageContext.request.contextPath}/public/help/products-category-face.png" alt="Third slide">
                        </div>
                        <div class="carousel-item">
                            <h5 class="font-weight-light">Encontrarás todos los productos que mejor se acomoden para ti, y encontraras toda su información</h5>
                            <img class="w-100" src="${pageContext.request.contextPath}/public/help/products-category-info.png" alt="Fourth slide">
                            <img class="w-100" src="${pageContext.request.contextPath}/public/help/products-category-more-info.png" alt="Fourth slide">
                        </div>
                        <div class="carousel-item">
                            <h5 class="font-weight-light">En esta sección te apareceran diversos consejos (Natutips) que te ayudaran a mantener una piel saludable y radiante</h5>
                            <img class="w-100" src="${pageContext.request.contextPath}/public/help/tips-carousel.png" alt="Fifth slide">
                            <img class="w-100" src="${pageContext.request.contextPath}/public/help/tips-carousel-rate.png" alt="Fifth slide">
                            <img class="w-100" src="${pageContext.request.contextPath}/public/help/tips-carousel-rate-message.png" alt="Fifth slide">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon text-dark" aria-hidden="true"></span>
                        <span class="sr-only bg-dark">Previous</span>
                    </a>
                    <a class="carousel-control-next text-dark" href="#carouselExampleControls" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary mx-auto w-50" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>



