<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/navbar.css"/>
<jsp:include page="../../../public/head.jsp"  />

<header>
    <nav class="navbar sticky-top stroke py-0">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/home">
            <img
                src="${pageContext.request.contextPath}/public/logo.png"
                class="d-inline-block align-top logo"
                alt="logo"
                loading="lazy"
                />
        </a>
        <ul class="nav justify-content-center">
            <li class="nav-item">
                <a
                    class="nav-link active fill"
                    href="${pageContext.request.contextPath}/home"
                    >Inicio</a
                >
            </li>
            <li class="nav-item">
                <a class="nav-link fill" href="${pageContext.request.contextPath}/about"
                   >Nosotros</a
                >
            </li>
            <li class="nav-item">
                <a
                    class="nav-link fill"
                    href="${pageContext.request.contextPath}/contact"
                    >Comunícate</a
                >
            </li>
            <li class="nav-item">
                <a
                    class="nav-link fill"
                    href="${pageContext.request.contextPath}/frecuentQuestions"
                    >Preguntas Frecuentes</a
                >
            </li>
        </ul>
        <ul class="nav justify-content-end account">
            <li class="nav-item">
                <a class="nav-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">Ingresar</a>
                <ul class="dropdown-menu dropdown-menu-right">
                    <a href="${pageContext.request.contextPath}/login" class="dropdown-item">Iniciar Sesion</a>
                    <div class="dropdown-divider"></div>
                    <li>
                        <a href="${pageContext.request.contextPath}/signup" class="dropdown-item">Crear Cuenta</a>
                    </li>
                </ul>
            </li>
        </ul>
    </nav>
</header>
<jsp:include page="../../../public/scripts.jsp" />
