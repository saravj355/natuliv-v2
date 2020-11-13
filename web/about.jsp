<%-- 
    Document   : acercade
    Created on : 9/11/2020, 06:49:20 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="./shared/head.jsp"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/webPage/assets/css/about.css">

    <body>
        <jsp:include page="./shared/navbar.jsp"/>
        <div class="container-image ">
            <div class="content-text text-center">
                <h3 class="main-title">Natuliv</h3>
                <p class="main-text">
                    Ingresa a nuestra aplicación web la cual te brindará recomendaciones personalizadas sobre productos naturales para tu tipo de piel.
                </p>
                <a href="${pageContext.request.contextPath}/login" class="btn btn-lg btn-dark"><span>Saber Más</span><i
                        class="fas fa-angle-double-right arrow" aria-hidden="true"></i></a>
            </div>
        </div>
        <div class="container m-5 mx-auto">
            <div class="card mb-3 text-center shadow-sm ">
                <div class="card-header bg-dark ">
                    <h4 class="text-white">Problema</h4>
                </div>
                <div class="card-body bg-light">
                    <ul class="list-unstyled mt-3 mb-4">
                        <p>A lo largo del día las personas se ven expuestas a sustancias químicas peligrosas,
                            encontradas en productos cosméticos, lo cual hace que progresivamente la piel 
                            se vea afectada ante la exposición de estos.Como consecuencia es probable que
                            se generen enfermedades.
                        </p>
                    </ul>
                </div>
            </div>
            <div class="card shadow-sm text-center mb-3">
                <div class="card-header text-center bg-dark">
                    <h4 class="text-white text-center">Objetivo General</h4>
                </div>
                <div class="card-body text-center bg-light">
                    <ul class="list-unstyled mt-3 mb-4 text-center">
                        <p>
                            Desarrollar un aplicativo web para promover el uso de productos cosméticos 
                            naturales a través de recomendaciones y sugerencias de profesionales en el área.
                        </p>
                    </ul>
                </div>
            </div>
            <div class="card shadow-sm mb-2 text-center">
                <div class="card-header bg-dark">
                    <h4 class="my-0 font-weight-normal text-white">Objetivos Específicos</h4>
                </div>
                <div class="card-body bg-light">
                    <ol class="list-unstyled mt-3 mb-4">
                        <li>Caracterizar productos cosméticos naturales</li>
                        <li>Diseñar la aplicación web que cumpla con los requisitos</li>
                        <li>Desarrollar la aplicación web basada en el diseño y el análisis implementando los requisitos</li>
                        <li>Probar el software con la validación de los usuarios potenciales del sistema</li>
                    </ol>
                </div>
            </div>
        </div>
        <jsp:include page="webPage/shared/footer.jsp"/>
        <jsp:include page="shared/footer.jsp"/>
    </body>