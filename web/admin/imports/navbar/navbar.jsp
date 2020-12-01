<style>
    .navbar-brand{
        color:#fff;
        letter-spacing:5px; 
    }
    .navbar-brand:hover{
        color:#cccccc;
    }
    .navbar .arrow{
        font-size: 15px;
    }
</style>
<jsp:include page="../../../shared/head.jsp"/>
<header>
    <nav class="navbar sticky-top stroke py-0 bg-dark">
        <a href="${pageContext.request.contextPath}/admin" class="btn btn-light ml-5" id="hide-this"><i class="fas fa-arrow-left arrow mr-1"></i>Volver al inicio</a>
        <a class="navbar-brand mx-auto" href="${pageContext.request.contextPath}/admin">
            <h2 class="align-top" id="logo-margin">NATULIV</h2>
        </a>
        <form action="${pageContext.request.contextPath}/admin/logout" method="post">
            <ul class="nav justify-content-end account">
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/admin/login" class="btn btn-outline-light"><i class="fas fa-sign-in-alt mr-2"></i>Cerrar Sesión</a>
                </li>
            </ul>
        </form>
    </nav>
</header>
