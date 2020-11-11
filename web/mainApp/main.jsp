<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../shared/head.jsp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/mainApp/assets/css/style.css">
<body>
    <jsp:include page="shared/navbar/navbar.jsp"/>
    <h5 class="text-center">Recomendados para ti</h5>

    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="row row-cols-4">
                    <div class="col">
                        <div class="card">
                            Producto 1
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            Producto 2
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            Producto 3
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            Producto 4
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="row row-cols-4">
                    <div class="col">
                        <div class="card">
                            Producto 5
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            Producto 6
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            Producto 7
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            Producto 8
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <li class="carousel-control-prev-icon fas fa-chevron-circle-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon fa-chevron-circle-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>








    <jsp:include page="../shared/footer.jsp"/>
    <script src="${pageContext.request.contextPath}/mainApp/assets/js/app.js"></script>
</body>
