<style>
    .inner-content{
        margin: 25px 0;
    }
    .inner-content  input[type="radio"]{
        display: none;
    }
    .inner-content i{
        color: #dddddd;
        font-size: 30px;
        cursor: pointer;
    }
    .inner-content .star-calification:checked ~ label  i{
        color: #FFD700;
    }
    .inner-content {
        direction: rtl;
        width: 100%;
    }
    .inner-content .star-calification:hover ~ label  i{
        direction: rtl;
        color: #FFD700;
    } 
</style>
<div class="inner-content text-center">
    <input type="radio" class="star-calification" id="star1">
    <label for="star1"><i class="fa fa-star"></i></label>
    <input type="radio" class="star-calification" id="star2">
    <label for="star2"><i class="fa fa-star"></i></label>
    <input type="radio" class="star-calification" id="star3">
    <label for="star3"><i class="fa fa-star"></i></label>
    <input type="radio" class="star-calification" id="star4">
    <label for="star4"><i class="fa fa-star"></i></label>
    <input type="radio" class="star-calification" id="star5">
    <label for="star5"><i class="fa fa-star"></i></label>
</div>
<div class="alert alert-success d-none calification-message">
    <h5 class="text-center font-weight-light">Gracias por calificarnos! Mañana habrán mas consejos!</h5>
</div>
