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
                <div class="card mx-auto w-50 mt-4">
                    <h5 class="card-title mt-4 text-center">Agregar Producto</h5>
                    <form action="${pageContext.servletContext.contextPath}/admin/products/add-product" method="post" class="p-4">
                        <div class="form-group">                                            
                            <label >Nombre Producto:</label>
                            <input type="text" name="name" class="form-control">
                        </div> 
                        <div class="form-group">                                            
                            <label>Categoria:</label>
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
                            <label >Empresa:</label>
                            <select name="supplierId">
                                <c:choose>
                                    <c:when test="${ !empty sessionScope.supplierList}">
                                        <c:forEach var="supplier" items="${sessionScope.supplierList}">
                                            <option value="${supplier.getId()}">${supplier.getName()}</option>
                                        </c:forEach>                                           
                                    </c:when>
                                </c:choose>
                            </select> 
                        </div>
                        <div class="form-group">
                            <label>Descripción:</label>
                            <textarea name="description" class="form-control"></textarea>
                        </div>  
                        <div class="form-group">                                            
                            <label>Precio:</label>
                            <input type="number" name="price" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Está Dsiponible?</label>
                            <label class="radio-inline"><input type="radio" name="isActive" value="true"> Si</label>
                            <label class="radio-inline"><input type="radio" name="isActive" value="false"> No</label>
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-warning">Crear Producto</button>
                        </div>
                    </form>  
                </div>
            </div>
        </div>
    </body>
</html>
