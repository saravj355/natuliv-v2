<style>
    .navbar-brand{
        color:#fff;
        letter-spacing:5px; 
    }

    .navbar-brand:hover{
        color:#cccccc;
    }

    .icon {
        position: relative;
        display: table-cell;
        width: 60px;
        height: 36px;
        text-align: center;
        vertical-align: middle;
        font-size:20px;
    }

    .main-menu:hover,nav.main-menu.expanded {
        width:250px;
        overflow:visible;
        z-index: 99 !important;
    }

    .main-menu {
        position:absolute;
        bottom:0;
        height:100%;
        left:0;
        width:60px;
        overflow:hidden;
        -webkit-transition:width .3s linear;
        transition:width .3s ease-in;
        -webkit-transform:translateZ(0) scale(1,1);
        z-index: 99 !important;
    }

    .main-menu>ul {
        margin:7px 0;
    }

    .main-menu li {
        position:relative;
        display:block;
        width:250px;
    }

    .main-menu li > a {
        position:relative;
        display:table;
        border-collapse:collapse;
        border-spacing:0;
        color:#fff;
        font-size: 14px;
        -webkit-transform:translateZ(0) scale(1,1);
        -webkit-transition:all .5s linear;
        transition:width .5s ease-in;
    }

    .main-menu .icon {
        position:relative;
        display:table-cell;
        width:60px;
        height:36px;
        text-align:center;
        vertical-align:middle;
    }

    .main-menu .nav-text {
        position:relative;
        display:table-cell;
        vertical-align:middle;
        width:190px;
    }

    .sub-item{
        padding:10px 0;
    }

    .sub-item:hover {
        background: #6699ff;
        -webkit-transform:translateZ(0) scale(1,1);
        -webkit-transition:all .5s linear;
        transition:all .9s ease;
    }

</style>
<jsp:include page="../../../public/head.jsp"/>
<header>
    <nav class="navbar py-0 bg-dark">
        <a class="navbar-brand mx-auto" href="${pageContext.request.contextPath}/admin">
            <h2 class="align-top" id="logo-margin">NATULIV</h2>
        </a>
    </nav>
    <nav class="main-menu bg-dark position-fixed">
        <ul>
            <li class="nav-item sub-item">
                <a class="nav-link collapsed text-truncate" href="#submenu1" data-toggle="collapse" data-target="#submenu1">
                    <i class="fas fa-table icon"></i> 
                    <span class="nav-text">Usuarios</span>
                </a>
            </li>
            <div class="collapse" id="submenu1" aria-expanded="false">
                <ul class="flex-column">
                    <li class="nav-item sub-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/admin/users?role=user">
                            <i class="fas fa-user-friends icon"></i>
                            <span class="nav-text"> Clientes</span>
                        </a>
                    </li>
                    <li class="nav-item sub-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/admin/users?role=admin">
                            <i class="fas fa-user-cog icon"></i>
                            <span class="nav-text">Administradores</span>
                        </a>
                    </li>
                    <li class="nav-item sub-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/admin/users?role=support">
                            <i class="fas fa-headset icon"></i>
                            <span class="nav-text">Soporte</span>
                        </a>
                    </li>
                </ul>
            </div>
            <li class="nav-item sub-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/admin/products">
                    <i class="fas fa-shopping-basket icon"></i>
                    <span class="nav-text">
                        Productos
                    </span>
                </a>

            </li>
            <li class=" nav-item sub-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/admin/suppliers">
                    <i class="fa fa-store icon"></i>
                    <span class="nav-text">
                        Proveedores
                    </span>
                </a>

            </li>
            <li class=" nav-item sub-item ">
                <a class="nav-link" href="${pageContext.request.contextPath}/admin/tickets">
                    <i class="fas fa-ticket-alt icon"></i>
                    <span class="nav-text">
                        Tickets
                    </span>
                </a>

            </li>
            <li class=" nav-item sub-item ">
                <a class="nav-link" href="${pageContext.request.contextPath}/admin">
                    <i class="fas fa-chart-line icon"></i>
                    <span class="nav-text">
                        Gráficas
                    </span>
                </a>
            </li>
        </ul>
    </nav>
</header>
<jsp:include page="../../../public/scripts.jsp" />
