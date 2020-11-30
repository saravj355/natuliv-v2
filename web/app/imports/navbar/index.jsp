<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/navbar.css">
<jsp:include page="../../../shared/head.jsp"/>
<header>
    <nav class="navbar sticky-top py-0 stroke">
        <a href="${pageContext.request.contextPath}/app" class="btn btn-outline-dark ml-5" id="hide-this"><i class="fas fa-arrow-left arrow mr-1"></i>Volver al inicio</a>
        <a class="navbar-brand mx-auto" href="${pageContext.request.contextPath}/app">
            <img src="${pageContext.request.contextPath}/public/img/logo.png" class="d-inline-block align-top logo" alt="logo" loading="lazy">
        </a>
        <ul class="nav justify-content-end account">
            <li class="nav-item">
                <a class="nav-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                   href="#">${name}<img class="icon" src="${pageContext.request.contextPath}/public/img/user.png"></a>
                <ul class="dropdown-menu dropdown-menu-right">
                    <a href="${pageContext.request.contextPath}/logout" class="dropdown-item">Cerrar Sesion</a>
                </ul>
            </li>
        </ul>
    </nav>
</header>


