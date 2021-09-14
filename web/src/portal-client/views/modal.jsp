<%-- 
    Document   : modal
    Created on : Nov 15, 2020, 10:37:05 PM
    Author     : sarav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div id="survey" class="modal fade" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-dark text-light">
                <h5 class="modal-title text-uppercase mx-auto">Cuestionario Natuliv</h5>
            </div>
            <div class="modal-body p-4">
                <p>Presentado por Natuliv</p>
                <h6 class="text-danger text-warning">*Obligatorio</h6>
                <div>
                    <h2 class="text-uppercase text-center text text-info">Instrucciones</h2>
                    <hr>
                    <p>
                        Por favor responde a estas 8 preguntas, de esta manera podremos recomendarte productos cosméticos naturales.
                        Sólo debes seleccionar una respuesta por pregunta.
                    </p>
                </div>
                <div class="py-3">
                    <h2 class="text-uppercase text-center text text-info">Consentimiento</h2>
                    <hr>
                    <p>Al dar dar click en "Empezar test" estarás de acuerdo en completar esta encuesta de forma voluntaria, y dar tu consentimiento 
                        implícito al uso de los datos proporcionados.
                    </p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-info mx-auto" data-dismiss="modal">Empezar Test</button>
            </div>
        </div>
    </div>
</div>
