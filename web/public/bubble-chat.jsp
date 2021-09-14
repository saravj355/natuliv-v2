<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        .sy-whatshelp {
            right: 25px;
            bottom: 25px;
            position: fixed;
            z-index: 9999;
        }

        .sy-whatshelp {
            background-color: #3333ff;
            line-height: 75px;
            margin-top: 10px;
            border: none;
            cursor: pointer;
            font-size: 35px;
            width: 75px;
            height: 75px;
            text-align: center;
            box-shadow: 2px 2px 8px -3px #000;
            border-radius: 100%;
            display: inline-block;
        }
        a > .fa-comments{
            color: #ffff;
        }
    </style>

    <body>
        <div class="sy-whatshelp">
            <a href="https://api.whatsapp.com/send/?phone=+573024577228&text=Hola,%20bienvenido%20a%20Natuliv%20Soporte,%20cu%C3%A9ntanos%20en%20que%20te%20podemos%20ayudar?&app_absent=0" target="_blank" class="sywh-open-services" data-placement="left">
                <i class="fa fa-comments"></i>
            </a>
        </div>
        
    </body>
</html>
