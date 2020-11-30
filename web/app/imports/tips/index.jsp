<style>
    .rounded{
        border-radius: 10px !important;
    }

    .calification input[type="radio"] {
        display: none;
    }
    calification label {
        color: grey;
    }
    .calification {
        direction: rtl;
        unicode-bidi: bidi-override;
        font-size: 25px;
    }

    label:hover,
    label:hover ~ label {
        color: orange;
    }

    input[type="radio"]:checked ~ label {
        color: orange;
    }
</style>
<div class="container">
    <h4 class="text-center mt-5 font-weight-light text-uppercase">Natutips</h4> 
    <hr class="mb-5 bg-dark">
    <div class="bg-dark text-white p-5 rounded mx-auto">
        <p class="message"> Bebe mucha agua
            El agua es esencial para mantener una piel hidratada, suave, además de saludable y bonita. Ésta también posee efectos calmantes y ayuda a refrescar la piel en los días calurosos.
            Si tienes una adecuada hidratación mejoras la circulación sanguínea de tu cuerpo y por lo tanto de tu piel.
        </p>
        <p class="calification text-center">
            <input type="radio" value="5">
            <label>&#9733;</label>
            <input type="radio" value="4">
            <label>&#9733;</label>
            <input type="radio" value="3">
            <label>&#9733;</label>
            <input type="radio" value="2">
            <label>&#9733;</label>
            <input type="radio" value="1">
            <label>&#9733;</label>
        </p>
    </div>
</div>

