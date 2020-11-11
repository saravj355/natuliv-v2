<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../../shared/head.jsp"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/navbar.css">

<body>
    <jsp:include page="../shared/navbar/navbar.jsp"/>
    <div class="container">
        <div class="row">
            <div class="card mx-auto w-50 mt-4 bg-light border-dark">
                <div class="card-header bg-dark text-white">
                    <h5 class="card-title mt-4 text-center">Editar Producto</h5>
                </div>
                <c:choose>
                    <c:when test="${ !empty sessionScope.product}">
                        <form action="${pageContext.servletContext.contextPath}/admin/products/edit" method="post" class="p-4">
                            <input name="productId" value="${product.getId()}" type="hidden">
                            <div class="form-group">                                            
                                <label>Imagen:</label>
                                <input type="file" name="imagePath" value="${product.getImagePath()}" class="form-control-file">
                            </div>
                            <div class="form-group">                                            
                                <label >Nombre Producto:</label>
                                <input type="text" name="name" value="${product.getName()}" class="form-control" readonly>
                            </div> 
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">                                            
                                        <label >Categoría:</label>
                                        <select name="categoryId" class="form-control">
                                            <option value="${product.productCategory.getId()}">${product.productCategory.getName()}</option>
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
                                        <label>Proveedor:</label>
                                        <select name="supplierId" class="form-control">
                                            <option value="${product.supplier.getId()}">${product.supplier.getName()}</option>
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
                                <textarea name="description" class="form-control">${product.getDescription()}</textarea>
                            </div>  
                            <div class="form-group">                                            
                                <label>Precio:</label>
                                <input type="number" name="price" value="${product.getPrice()}00" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>¿Está Disponible?</label>
                                <label class="radio-inline mr-2"><input type="radio" name="isActive" value="true" ${product.isActive() ? 'checked' :''} > Si</label>
                                <label class="radio-inline"><input type="radio" name="isActive" value="false" ${product.isActive() ? '' :'checked'} > No</label>
                            </div>

                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </div>
                        </form>  
                    </c:when>
                </c:choose>
            </div>
        </div>
        <a href="${pageContext.servletContext.contextPath}/admin/products" class="text-dark"><i class="fas fa-arrow-circle-left arrow mr-1"></i>Volver</a>
    </div>
    <jsp:include page="../../shared/footer.jsp"/>
</body>
