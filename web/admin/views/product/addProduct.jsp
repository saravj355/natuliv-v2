<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<body>
    <jsp:include page="../../imports/navbar/navbar.jsp" />
    <div class="container">
        <div class="row">
            <div class="card mx-auto w-50 mt-4 bg-light border-dark">
                <div class="card-header bg-dark text-white">
                    <h5 class="card-title mt-4 text-center fz-100">Agregar Producto</h5>
                </div>
                <div class="card-body">
                    <div id="main_area" class="row-fluid">
                        <div class="span10 offset1">
                            <div id="formAlert" class="alert alert-danger hide d-none">  
                                <h5 class="animate__animated animate__headShake text-center validation">Porfavor llena todos los campos</h5>
                            </div>
                        </div>
                    </div>
                    <form action="${pageContext.servletContext.contextPath}/admin/products/add" method="post" name="form" class="p-4">
                        <div class="form-group">   
                            <img id="image-render" class="mx-auto" width="100">
                            <input type="file" id="inputFile" name="imagePath" onchange="loadFile(event)" class="form-control-file">
                        </div> 
                        <div class="form-group">                                            
                            <label >Nombre Producto:</label>
                            <input type="text" name="name" class="form-control">
                        </div> 
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">                                            
                                    <label>Categoria:</label>
                                    <select name="categoryId" class="form-control">
                                        <option value=""></option>
                                        <c:choose>
                                            <c:when test="${ !empty sessionScope.productCategoryList}">
                                                <c:forEach var="productCategory" items="${sessionScope.productCategoryList}">
                                                    <option value="${productCategory.getId()}">${productCategory.getName()}</option>
                                                </c:forEach>                                           
                                            </c:when>
                                        </c:choose>
                                    </select> 
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">                                            
                                    <label >Proveedor:</label>
                                    <select name="supplierId" class="form-control">
                                        <option value=""></option>
                                        <c:choose>
                                            <c:when test="${ !empty sessionScope.supplierList}">
                                                <c:forEach var="supplier" items="${sessionScope.supplierList}">
                                                    <option value="${supplier.getId()}">${supplier.getName()}</option>
                                                </c:forEach>                                           
                                            </c:when>
                                        </c:choose>
                                    </select> 
                                </div> 
                            </div>     
                        </div>
                        <div class="form-group">
                            <label>Descripción:</label>
                            <textarea id="textarea" name="description" class="form-control"></textarea>
                        </div>  
                        <div class="form-group">                                            
                            <label>Precio:</label>
                            <input type="number" name="price" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>¿Está Disponible?</label>
                            <label class="radio-inline mr-2"><input type="radio" name="isActive" value="true"> Si</label>
                            <label class="radio-inline"><input type="radio" name="isActive" value="false"> No</label>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-success">Crear Producto</button>
                        </div>
                    </form>  
                </div>
            </div>
        </div>
        <a href="${pageContext.servletContext.contextPath}/admin/products" class="text-dark"><i class="fas fa-arrow-circle-left arrow mr-1"></i>Volver</a>
    </div>
    <jsp:include page="../../../shared/scripts.jsp" />
    <script src="${pageContext.request.contextPath}/admin/src/js/validation.js"></script>
</body>



