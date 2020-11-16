<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../shared/head.jsp"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/survey/assets/style.css"/>
    <body>
        <jsp:include page="modal.jsp"/>
        <div class="card shadow-lg rounded bg-light w-50 mx-auto">
            <div class="card-header bg-info text-white">
                <h5 class="card-title text-center text-uppercase">cuestionario</h5>
            </div>
            <form action="${pageContext.request.contextPath}/test" method="post" name="survey">
                <input name="userId" value="${userId}" type="hidden">
                <div class="card-body mx-auto">
                    <div class="form-group">
                        <p class="text-center">¿Cuál es tu rango de edad?</p>
                        <div class="row">
                            <div class="col">
                                <c:forTokens items = "18 - 25; 36- 50" delims = ";" var = "age">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" value="${age}" name="question1">
                                        <label class="form-check-label">
                                            <c:out value = "${age}"/>
                                        </label>
                                    </div>
                                </c:forTokens>
                            </div>
                            <div class="col">
                                <div class="float-right">
                                    <c:forTokens items = "26 - 35; 50 ó más" delims = ";" var = "age">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" value="${age}" name="question1">
                                            <label class="form-check-label">
                                                <c:out value = "${age}"/>
                                            </label>
                                        </div>
                                    </c:forTokens>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="form-group ">
                        <p class="text-center">¿Has usado cosméticos naturales?</p>
                        <div class="row">
                            <div class="col">
                                <c:forTokens items = "Si; Si, pero los uso muy poco" delims = ";" var = "naturalCosmetics">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" value="${naturalCosmetics}" name="question2">
                                        <label class="form-check-label">
                                            <c:out value = "${naturalCosmetics}"/>
                                        </label>
                                    </div>
                                </c:forTokens>
                            </div>
                            <div class="col">
                                <div class="float-right">
                                    <c:forTokens items = "No; Depronto alguna vez" delims = ";" var = "naturalCosmetics">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" value="${naturalCosmetics}" name="question2">
                                            <label class="form-check-label">
                                                <c:out value = "${naturalCosmetics}"/>
                                            </label>
                                        </div>
                                    </c:forTokens>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="form-group ">
                        <p class="text-center">¿Has usado cosméticos con algún químico?</p>
                        <div class="row">
                            <div class="col">
                                <c:forTokens items = "Si; Si, pero los uso muy poco" delims = ";" var = "naturalCosmetics">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" value="${naturalCosmetics}" name="question3">
                                        <label class="form-check-label">
                                            <c:out value = "${naturalCosmetics}"/>
                                        </label>
                                    </div>
                                </c:forTokens>
                            </div>
                            <div class="col">
                                <div class="float-right">
                                    <c:forTokens items = "No; No estoy completamente seguro" delims = ";" var = "naturalCosmetics">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" value="${naturalCosmetics}" name="question3">
                                            <label class="form-check-label">
                                                <c:out value = "${naturalCosmetics}"/>
                                            </label>
                                        </div>
                                    </c:forTokens>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="form-group mx-auto">
                        <p class="text-center">¿Con que Frecuencia usas productos naturales?</p>
                        <span class="text-danger">Muy poco</span>
                        <span class="float-right text-success">Muy seguido</span>
                        <div class="row">
                            <c:forEach var = "naturalProductsFrecuency" begin = "1" end = "10">
                                <div class="col">
                                    <div class="form-check">
                                        <label class="form-check-label"><c:out value = "${naturalProductsFrecuency}"/></label>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <div class="row">
                            <c:forEach var = "naturalProductsFrecuency" begin = "1" end = "10">
                                <div class="col">
                                    <div class="form-check">
                                        <input type="radio" value="${naturalProductsFrecuency}" name="question4">
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <hr>
                    <div class="form-group ">
                        <p class="text-center">¿Cómo consideras la piel de tu rostro?</p>
                        <div class="row">
                            <div class="col">
                                <c:forTokens items = "Normal,Mixta" delims = "," var = "skinType">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" value="${skinType}" name="question5">
                                        <label class="form-check-label">
                                            <c:out value = "${skinType}"/>
                                        </label>
                                    </div>
                                </c:forTokens>
                            </div>
                            <div class="col">
                                <div class="float-right">
                                    <c:forTokens items = "Grasa,Seca" delims = "," var = "skinType">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" value="${skinType}" name="question5">
                                            <label class="form-check-label">
                                                <c:out value = "${skinType}"/>
                                            </label>
                                        </div>
                                    </c:forTokens>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="form-group ">
                        <p class="text-center">¿Cómo consideras tu tipo de cabello?</p>
                        <div class="row">
                            <div class="col">
                                <c:forTokens items = "Normal,Mixto" delims = "," var = "hairType">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" value="${hairType}" name="question6">
                                        <label class="form-check-label">
                                            <c:out value = "${hairType}"/>
                                        </label>
                                    </div>
                                </c:forTokens>
                            </div>
                            <div class="col">
                                <div class="float-right">
                                    <c:forTokens items = "Graso,Seco" delims = "," var = "hairType">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" value="${hairType}" name="question6">
                                            <label class="form-check-label">
                                                <c:out value = "${hairType}"/>
                                            </label>
                                        </div>
                                    </c:forTokens>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="form-group ">
                        <p class="text-center">¿Conoces los beneficios que contienen los productos naturales?</p>
                        <div class="row">
                            <div class="col">
                                <c:forTokens items = "Si; Si, pero no conozco mucho" delims = ";" var = "naturalCosmetics">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" value="${naturalCosmetics}" name="question7">
                                        <label class="form-check-label">
                                            <c:out value = "${naturalCosmetics}"/>
                                        </label>
                                    </div>
                                </c:forTokens>
                            </div>
                            <div class="col">
                                <div class="float-right">
                                    <c:forTokens items = "No; No estoy completamente seguro" delims = ";" var = "naturalCosmetics">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" value="${naturalCosmetics}" name="question7">
                                            <label class="form-check-label">
                                                <c:out value = "${naturalCosmetics}"/>
                                            </label>
                                        </div>
                                    </c:forTokens>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="form-group ">
                        <p class="text-center">¿Que tipo de productos para el rostro usas frecuentemente?</p>
                        <div class="row">
                            <div class="col">
                                <c:forTokens items = "Cremas; Aceites" delims = ";" var = "faceProducts">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" value="${faceProducts}" name="question8">
                                        <label class="form-check-label">
                                            <c:out value = "${faceProducts}"/>
                                        </label>
                                    </div>
                                </c:forTokens>
                            </div>
                            <div class="col">
                                <div class="float-right">
                                    <c:forTokens items = "Tónicos; Gel" delims = ";" var = "faceProducts">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" value="${faceProducts}" name="question8">
                                            <label class="form-check-label">
                                                <c:out value = "${faceProducts}"/>
                                            </label>
                                        </div>
                                    </c:forTokens>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="main_area" class="row-fluid">
                        <div class="span10 offset1">
                            <div id="formAlert" class="alert alert-danger hide d-none">  
                                <a href="#"class="close">×</a>  
                                <h5 class="animate__animated animate__headShake text-center validation">Porfavor llena todos los campos</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer text-center bg">
                    <input type="submit" class="btn btn-dark w-25" value="Enviar">
                </div>
            </form>
        </div>
        <jsp:include page="../shared/footer.jsp"/>
        <script src="${pageContext.request.contextPath}/assets/js/validation.js"></script>
    </body>
</html>
