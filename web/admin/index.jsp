<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="./imports/navbar/navbar.jsp" />
<body>
    <div class="container m-5 mx-auto">
        <div class="row justify-content-center">
            <div class="col">
                <div class="card bg-light">
                    <div class="card-header bg-dark">
                        <h5 class="card-title text-center text-white">USUARIOS</h5>
                    </div>
                    <div class="card-body p-0">
                        <div class="content">
                            <div class="content-overlay"></div>
                            <img src="https://www.martinmolina.com/wp-content/uploads/2020/03/OGMM5G0-1024x683.jpg" class="w-100" alt="container-user">
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
                            <img src="https://www.sinnaps.com/wp-content/uploads/2018/12/estrategia-de-producto.jpg" class="w-100" alt="container-products">
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
        </div>
        <div class="row mt-4">
            <div class="col">
                <div class="card bg-light">
                    <div class="card-header bg-dark">
                        <h5 class="card-title text-center text-white">PROVEEDORES</h5>
                    </div>
                    <div class="card-body p-0">
                        <div class="content">
                            <div class="content-overlay"></div>
                            <img src="https://destinonegocio.com/wp-content/uploads/2015/03/formar-una-empresa.jpg" class="w-100" alt="container-suppliers">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title">Listado de proveedores</h3>
                                <p class="content-text">Agrega y edita información de los proveedores patrocinados por Natuliv.</p>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-center bg-dark">
                        <a href="${pageContext.request.contextPath}/admin/suppliers" class="btn btn-outline-light m-2 w-50">Ver Proveedores</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card bg-light">
                    <div class="card-header bg-dark">
                        <h5 class="card-title text-center text-white">ANÁLISIS CUESTIONARIO</h5>
                    </div>
                    <div class="card-body p-0">
                        <div class="content">
                            <div class="content-overlay"></div>
                            <img src="https://decorozo.com/wp-content/uploads/2018/08/Estadisticas.jpg" class="w-100" alt="container-survey">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title">Resultados del cuestionario</h3>
                                <p class="content-text">Visualiza los resultados de las encuestas realizadas por los usuarios</p>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-center bg-dark">
                        <a href="${pageContext.request.contextPath}/admin/suppliers" class="btn btn-outline-light m-2 w-50">Ver Análisis</a>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <br>
    </div>
    <jsp:include page="./imports/footer/footer.jsp" />
</body>
