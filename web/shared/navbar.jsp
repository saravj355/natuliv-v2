<link rel="stylesheet" href="${pageContext.request.contextPath}/shared/navbar.css">
<header>
    <nav class="navbar sticky-top stroke py-0">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">
            <img src="${pageContext.request.contextPath}/assets/img/logo.png" class="d-inline-block align-top logo" alt="logo" loading="lazy">
        </a>
        <ul class="nav justify-content-center">
            <li class="nav-item">
                <a class="nav-link active fill" href="${pageContext.request.contextPath}/index.jsp">Inicio</a>
            </li>
            <li class="nav-item">
                <a class="nav-link fill" href="${pageContext.request.contextPath}/about.jsp">Nosotros</a>
            </li>
            <li class="nav-item">
                <a class="nav-link fill" href="${pageContext.request.contextPath}/comunicate.jsp">Comunícate</a>
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
                    <a href="#" data-toggle="modal" data-target="#modal" class="dropdown-item">Iniciar Sesion</a>
                    <div class="dropdown-divider"></div>
                    <li><a href="${pageContext.request.contextPath}/signup" class="dropdown-item">Crear Cuenta</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</header>
<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content text-center">
            <div class="modal-header">
                <h5 class="modal-title mx-auto">¿Como vas a iniciar sesión?</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row m-4">
                    <a href="${pageContext.request.contextPath}/login" class="btn btn-info user-btn">
                        <i class="fas fa-user user-icon"></i>Usuario
                    </a>
                </div>
                <div class="row m-4">
                    <a href="${pageContext.request.contextPath}/admin/login" class="btn btn-dark user-btn">
                        <i class="fas fa-users-cog user-icon"></i>Administrador
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>