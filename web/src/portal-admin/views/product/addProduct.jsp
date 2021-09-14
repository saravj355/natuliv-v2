<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<body>
    <jsp:include page="../navbar.jsp" /> 
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
                            <div class="row">
                                <div class="col">
                                    <img id="image-render" class="mx-auto" width="100">
                                </div>
                                <div class="col">
                                    <input type="file" id="inputFile" name="imagePath" onchange="loadFile(event)" class="form-control-file">
                                </div>
                            </div>
                        </div> 
                        <div class="form-group">                                            
                            <label >Nombre Producto:</label>
                            <input type="text" name="name" class="form-control">
                        </div> 
                        <div class="form-group">                                            
                            <label>Precio:</label>
                            <input type="number" name="price" class="form-control">
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">                                            
                                    <label>Categoría:</label>
                                    <select name="categoryId" class="form-control">
                                        <option value=""></option>
                                        <c:choose>
                                            <c:when test="${ !empty sessionScope.productCategoryList}">
                                                <c:forEach var="productCategory" items="${sessionScope.productCategoryList}">
                                                    <option value="${productCategory.getId()}">${productCategory.getDisplayName()}</option>
                                                </c:forEach>                                           
                                            </c:when>
                                        </c:choose>
                                    </select> 
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">                                            
                                    <label >Proveedor:</label>
                                    <c:choose>
                                        <c:when test="${ !empty sessionScope.supplierList}">
                                            <select name="supplierId" class="form-control">
                                                <option value=""></option>
                                                <c:forEach var="supplier" items="${sessionScope.supplierList}">
                                                    <option value="${supplier.getId()}">${supplier.getName()}</option>
                                                </c:forEach>  
                                            </select>
                                        </c:when>
                                        <c:otherwise>
                                            <a class="btn btn-info" href="${pageContext.servletContext.contextPath}/admin/suppliers/add">Crear Proveedor</a>
                                        </c:otherwise>
                                    </c:choose>

                                </div> 
                            </div>     
                        </div>
                        <div class="form-group">
                            <label>Descripción:</label>
                            <textarea id="textarea" name="description" class="form-control"></textarea>
                        </div>  
                        <div class="text-center">
                            <button type="submit" class="btn btn-success">Crear Producto</button>
                        </div>
                    </form>  
                </div>
            </div>
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/src/portal-admin/src/js/handlerInputFiles.js"></script>
    <script src="${pageContext.request.contextPath}/src/portal-admin/src/js/inputValidation.js"></script>
</body>



