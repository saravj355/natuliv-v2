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
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="text-white p-5 rounded mx-auto tips-container">
                    <h2 class="text-center">Bebe mucha agua!</h2>
                    <hr class="bg-white w-50 mx-auto">
                    <p class="message"> 
                        El agua es esencial para mantener una piel hidratada, suave, además de saludable y bonita. Ésta también posee efectos calmantes y ayuda a refrescar la piel en los días calurosos.
                        Si tienes una adecuada hidratación mejoras la circulación sanguínea de tu cuerpo y por lo tanto de tu piel.
                    </p>
                </div>
            </div>
            <div class="carousel-item">
                <div class="text-white p-5 rounded mx-auto tips-container">
                    <h2 class="text-center">Limpia tu piel!</h2>
                    <hr class="bg-white w-50 mx-auto">
                    <p class="message"> 
                        Es importante mantener la piel limpia, liberandola de impurezas.
                        Lo ideal es lavar tu rostro con un limpiador o jabon de acuerdo a tu tipo de piel, en la mañana al despertar, en la noche antes de dormir, y después de realizar ejercicio.
                        Durante el día pueden hidratar con tónicos o agua de rosas. También es recomendable cambiar la funda de tu almohada cada 5 días.
                    </p>
                </div>
            </div>
            <div class="carousel-item">
                <div class="text-white p-5 rounded mx-auto tips-container">
                    <h2 class="text-center">Es todo por el día de hoy, Calíficanos!</h2>
                    <hr class="bg-white w-50 mx-auto">
                    <jsp:include page="calification.jsp" />
                </div>
            </div>
        </div>
        <a class="carousel-control-next tips-carousel" href="#carouselExampleControls" role="button" data-slide="next">
            <img src="${pageContext.request.contextPath}/app/src/img/arrow-circle-right.png" width="70">
        </a>
    </div>
</div>

