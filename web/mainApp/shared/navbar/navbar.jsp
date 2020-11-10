<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/navbar.css">
<header>
    <nav class="navbar sticky-top py-0 stroke">
        <a class="navbar-brand mx-auto" href="${pageContext.request.contextPath}/index.jsp">
            <img src="${pageContext.request.contextPath}/assets/img/logo.png" class="d-inline-block align-top logo" alt="logo" loading="lazy">
        </a>
        <ul class="nav justify-content-end account">
            <li class="nav-item">
                <a class="nav-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                   href="#">${name}<img class="icon" src="${pageContext.request.contextPath}/assets/img/user.png"></a>
                <ul class="dropdown-menu dropdown-menu-right">
                    <a href="${pageContext.request.contextPath}/logout" class="dropdown-item">Cerrar Sesion</a>
                </ul>
            </li>
        </ul>
    </nav>
</header>
