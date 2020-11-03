<%-- 
    Document   : EditProducts
    Created on : Nov 2, 2020, 1:56:25 PM
    Author     : sarav
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../../shared/head.jsp"/>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="card mx-auto">
                        <c:choose>
                            <c:when test="${ !empty sessionScope.product}">
                                <form action="${pageContext.servletContext.contextPath}/admin/products/edit" method="post">
                                    
                                    <input name="productId" value="${product.getId()}" type="hidden">
                                    
                                    <div class="form-group">                                            
                                        <label >Nombre Producto:</label>
                                        <input type="text" name="name" value="${product.getName()}" class="form-control" readonly>
                                    </div>                                   
                                    <div class="form-group">                                            
                                        <label >Categoria:</label>
                                        <select name="categoryId">
                                            <c:choose>
                                                <c:when test="${ !empty sessionScope.productCategoryList}">
                                                    <c:forEach var="productCategory" items="${sessionScope.productCategoryList}">
                                                        <option value="${productCategory.getId()}">${productCategory.getName()}</option>
                                                    </c:forEach>                                           
                                                </c:when>
                                            </c:choose>
                                        </select> 
                                    </div>
                                    <div class="form-group">
                                        <label>Descripción:</label>
                                        <textarea name="description" class="form-control">${product.getDescription()}</textarea>
                                    </div>  
                                    <div class="form-group">                                            
                                        <label >Precio:</label>
                                        <input type="number" name="price" value="${product.getPrice()}00" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Está Dsiponible?</label>
                                        <label class="radio-inline"><input type="radio" name="isActive" value="true" ${product.isActive() ? 'checked' :''} > Si</label>
                                        <label class="radio-inline"><input type="radio" name="isActive" value="false" ${product.isActive() ? '' :'checked'} > No</label>
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
