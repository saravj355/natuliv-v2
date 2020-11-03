<%-- 
    Document   : EditProducts
    Created on : Nov 2, 2020, 1:56:25 PM
    Author     : sarav
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <jsp:include page="../../shared/head.jsp"/>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="card mx-auto">
                        <c:choose>
                            <c:when test="${ !empty sessionScope.Product}">
                                <form action="${pageContext.servletContext.contextPath}/admin/products/edit" method="post">
                                    <div class="form-group">                                            
                                        <label >Nombre Producto:</label>
                                        <input type="text" name="name" value="${Product.getName()}" class="form-control" readonly>
                                    </div>
                                    <div class="form-group">                                            
                                        <label >Categoria:</label>
                                        <select>
                                            <c:choose>
                                                <c:when test="${ !empty sessionScope.Category}">
                                                    <c:forEach var="Category" items="${sessionScope.Category}">
                                                        <option value="">
                                                            <c:out value="${category.getName()}"/>
                                                        </option> 
                                                    </c:forEach>                                           
                                                </c:when>
                                            </c:choose>
                                        </select> 
                                    </div>
                                    <div class="form-group">
                                        <label>Descripción:</label>
                                        <textarea name="description" class="form-control">${Product.getDescription()}</textarea>
                                    </div>  
                                    <div class="form-group">                                            
                                        <label >Precio:</label>
                                        <input type="number" name="name" value="${Product.getPrice()}" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Está Dsiponible?</label>
                                        <label class="radio-inline"><input type="radio" name="isActive" value="true"> Si</label>
                                        <label class="radio-inline"><input type="radio" name="isActive" value="false"> No</label>
                                    </div>
                                    <button type="submit" class="btn btn-warning text-center">Guardar</button>
                                </form>  
                            </c:when>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
