<style>
    .rounded{
        border-radius: 10px !important;
    }
    .tips-container{
        background:#2b2b2b;
    }
    .carousel-control-next.tips-carousel {
        right: -90px !important;
    }
    .tips-carousel{
        opacity:10 !important;
        width:5% !important;
    }
</style>
<div class="container">
    <h4 class="text-center mt-5 font-weight-light text-uppercase">Natutips</h4> 
    <hr class="mb-5 bg-dark">
    <div id="carouselTips" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="text-white p-5 rounded mx-auto tips-container">
                    <h2 class="text-center">Bebe mucha agua!</h2>
                    <hr class="bg-white w-50 mx-auto">
                    <p class="message"> 
                        El agua es esencial para mantener una piel hidratada, suave, adem�s de saludable y bonita. �sta tambi�n posee efectos calmantes y ayuda a refrescar la piel en los d�as calurosos.
                        Si tienes una adecuada hidrataci�n mejoras la circulaci�n sangu�nea de tu cuerpo y por lo tanto de tu piel.
                    </p>
                </div>
            </div>
            <div class="carousel-item">
                <div class="text-white p-5 rounded mx-auto tips-container">
                    <h2 class="text-center">Limpia tu piel!</h2>
                    <hr class="bg-white w-50 mx-auto">
                    <p class="message"> 
                        Es importante mantener la piel limpia, liberandola de impurezas.
                        Lo ideal es lavar tu rostro con un limpiador o jabon de acuerdo a tu tipo de piel, en la ma�ana al despertar, en la noche antes de dormir, y despu�s de realizar ejercicio.
                        Durante el d�a pueden hidratar con t�nicos o agua de rosas. Tambi�n es recomendable cambiar la funda de tu almohada cada 5 d�as.
                    </p>
                </div>
            </div>
            <div class="carousel-item">
                <div class="text-white p-5 rounded mx-auto tips-container">
                    <h2 class="text-center">Es todo por el d�a de hoy, Cal�ficanos!</h2>
                    <hr class="bg-white w-50 mx-auto">
                    <jsp:include page="calification.jsp" />
                </div>
            </div>
        </div>
        <a class="carousel-control-next tips-carousel" href="#carouselTips" role="button" data-slide="next">
            <img src="${pageContext.request.contextPath}/src/portal-client/src/img/arrow-circle-right.png" width="70">
        </a>
    </div>
</div>

