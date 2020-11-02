<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/navbar.css">
<header>
    <nav class="navbar sticky-top stroke py-0">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">
            <img src="${pageContext.request.contextPath}/assets/img/logo.png" class="d-inline-block align-top logo" alt="logo" loading="lazy">
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
        <ul class="nav justify-content-end account">
            <li class="nav-item">
                <a class="nav-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                   href="#">Cuenta<img class="icon" src="${pageContext.request.contextPath}/assets/img/user.png"></a>
                <ul class="dropdown-menu dropdown-menu-right">
                    <li><a href="${pageContext.request.contextPath}/login" class="dropdown-item">Iniciar Sesión</a></li>
                    <div class="dropdown-divider"></div>
                    <li><a href="${pageContext.request.contextPath}/signup" class="dropdown-item">Crear Cuenta</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</header>