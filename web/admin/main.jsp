<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../shared/head.jsp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/navbar.css">

<body>
    <jsp:include page="navbar/navbar.jsp"/>
    <div class="container mb-3">
        <div class="row justify-content-center">
            <div class="col">
                <div class="card bg-light">
                    <div class="card-header bg-dark">
                        <h5 class="card-title text-center text-white">USUARIOS</h5>
                    </div>
                    <div class="card-body p-0">
                        <div class="content">
                            <div class="content-overlay"></div>
                            <img src="https://www.martinmolina.com/wp-content/uploads/2020/03/OGMM5G0-1024x683.jpg" class="w-100">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title">Listado de usuarios</h3>
                                <p class="content-text">Busca información de los usuarios registrados en Natuliv.</p>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-center bg-dark">
                        <a href="${pageContext.request.contextPath}/admin/users" class="btn btn-outline-light m-2 w-50">Ver Usuarios</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card bg-light">
                    <div class="card-header bg-dark">
                        <h5 class="card-title text-center text-white">PRODUCTOS</h5>
                    </div>
                    <div class="card-body p-0">
                        <div class="content">
                            <div class="content-overlay"></div>
                            <img src="https://www.sinnaps.com/wp-content/uploads/2018/12/estrategia-de-producto.jpg" class="w-100">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title">Listado de productos</h3>
                                <p class="content-text">Actualiza, agrega y busca información de los productos patrocinados por Natuliv.</p>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-center bg-dark">
                        <a href="${pageContext.request.contextPath}/admin/products" class="btn btn-outline-light m-2 w-50">Ver Productos</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col mx-auto">
                    <div class="card bg-light">
                        <div class="card-header bg-dark">
                            <h5 class="card-title text-center text-white">EMPRESAS</h5>
                        </div>
                        <div class="card-body p-0">
                            <div class="content">
                                <div class="content-overlay"></div>
                                <img src="https://destinonegocio.com/wp-content/uploads/2015/03/formar-una-empresa.jpg" class="w-100">
                                <div class="content-details fadeIn-bottom">
                                    <h3 class="content-title">Listado de empresas</h3>
                                    <p class="content-text">Agrega y edita información de las empresas patrocinadas por Natuliv.</p>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer text-center bg-dark">
                            <a href="${pageContext.request.contextPath}/admin/suppliers" class="btn btn-outline-light m-2 w-50">Ver Empresas</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="../shared/footer.jsp"/>
</body>
