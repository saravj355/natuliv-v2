<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .face {
        background:url('./app/src/img/face-category.jpg') top/100% auto no-repeat;
    }
    .hair{
        background:url('./app/src/img/hair-category.jpg') top/100% auto no-repeat;
    }
    .skin{
        background:url('./app/src/img/skin-category.png') top/100% auto no-repeat;
    }
    .face-mask{
        background:url('./app/src/img/masks-category.jpg') top/100% auto no-repeat;
    }
    .overlay{
        background: rgba(0,0,0,0.7);
        padding:1.7em;
        letter-spacing: 1.2px;
    }
    .overlay h5{
        font-size:1.5em;
        font-weight: 300;
    }
    .text{
        font-size: 20px;
    }
    a{
        text-decoration: none !important;
    }
</style>
<div class="container">
    <h4 class="text-center mt-5 font-weight-light text-uppercase">Categorías</h4>
    <hr class="mb-5 bg-dark">
    <div class="row">
        <div class="col">
            <a href="${pageContext.request.contextPath}/app/face">
                <div class="card">
                    <div class="card-body p-0 face">
                        <div class="content">
                            <div class="content-overlay"></div>
                            <img src="https://about.canva.com/wp-content/themes/canvaabout/img/proLandingPage/banner-wave-3.svg" class="w-100">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title"></h3>
                                <p class="content-text">
                                    Natuliv te trae estos productos para que consientas tu rostro, y lo cuides <span class="font-weight-bold">sin maltratarlo</span>.
                                </p>
                            </div>
                        </div>
                        <div class="card-footer overlay text-uppercase text-center text-white">
                            <h5>ROSTRO</h5>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <div class="col">
            <div class="card">
                <div class="card-body p-0 hair">
                    <div class="content">
                        <div class="content-overlay"></div>
                        <img src="https://about.canva.com/wp-content/themes/canvaabout/img/proLandingPage/banner-wave-3.svg" class="w-100">
                        <div class="content-details fadeIn-bottom">
                            <h3 class="content-title"></h3>
                            <p class="content-text">
                                Tu cabello merece ser mostrado ante el mundo con su belleza natural, 
                                pero debemos ayudarlo un poco por esta razón <span class="font-weight-bold">Natuliv</span> te trae estos maravillosos productos para que tu cabello brille como nunca,
                                y además tenga un <span class="font-weight-bold">olor delicioso</span>.
                            </p>
                        </div>
                    </div>
                    <div class="card-footer overlay text-uppercase text-center text-white">
                        <h5>Cabello</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col">
            <div class="card">
                <div class="card-body p-0 skin">
                    <div class="content">
                        <div class="content-overlay"></div>
                        <img src="https://about.canva.com/wp-content/themes/canvaabout/img/proLandingPage/banner-wave-3.svg" class="w-100">
                        <div class="content-details fadeIn-bottom">
                            <h3 class="content-title"></h3>
                            <p class="content-text">
                                Disfruta de los productos de cabello que <br>
                                <span class="font-weight-bold">Natuliv</span> trae para ti. Para que muestres un cabello reluciente sano y hermoso.
                            </p>
                        </div>
                    </div>
                    <div class="card-footer overlay text-uppercase text-center text-white">
                        <h5>Corporal</h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card">
                <div class="card-body p-0 face-mask">
                    <div class="content">
                        <div class="content-overlay"></div>
                        <img src="https://about.canva.com/wp-content/themes/canvaabout/img/proLandingPage/banner-wave-3.svg" class="w-100">
                        <div class="content-details fadeIn-bottom">
                            <h3 class="content-title"></h3>
                            <p class="content-text">
                                Disfruta de las mascarillas que harán que tu piel se vea más <br>
                                <span class="font-weight-bold">reluciente y suave.</span>
                            </p>
                        </div>
                    </div>
                    <div class="card-footer overlay text-uppercase text-center text-white">
                        <h5>Mascarillas</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


