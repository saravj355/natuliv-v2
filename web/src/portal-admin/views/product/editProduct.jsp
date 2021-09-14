<!-- imports -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<jsp:include page="../navbar.jsp" />
<body>
    <div class="container">
        <div class="row">
            <div class="card mx-auto mt-4 bg-light border-dark">
                <div class="card-header bg-dark text-white">
                    <h5 class="card-title mt-4 text-center">Editar Producto</h5>
                </div>
                <div id="main_area" class="row-fluid">
                    <div class="span10 offset1">
                        <div id="formAlert" class="alert alert-danger hide d-none">  
                            <h5 class="animate__animated animate__headShake text-center validation">Porfavor llena todos los campos</h5>
                        </div>
                    </div>
                </div>
                <c:choose>
                    <c:when test="${ !empty sessionScope.product}">
                        <form action="${pageContext.servletContext.contextPath}/admin/products/edit" name="form" method="post" class="p-4">
                            <input name="productId" value="${product.getId()}" type="hidden">
                            <div class="form-group">   
                                <img id="image-render" class="mx-auto" name="imagePath" src="${pageContext.request.contextPath}/${product.getImagePath()}" width="100" alt="product-image">
                                <input type="file" id="inputFile" value="${pageContext.request.contextPath}/${product.getImagePath()} onchange="loadFile(event)" name="imagePath" class="form-control-file">
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
                                            <option value="${product.productCategory.getId()}">${product.productCategory.getDisplayName()}</option>
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
                                <div class="col">
                                    <div class="form-group">                                            
                                        <label>Precio:</label>
                                        <input type="number" name="price" value="${product.getPrice()}" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Descripción:</label>
                                <textarea id="textarea" name="description" class="form-control">${product.getDescription()}</textarea>
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
    </div>
    <script src="${pageContext.request.contextPath}/src/portal-admin/src/js/handlerInputFiles.js"></script>
    <script src="${pageContext.request.contextPath}/src/portal-admin/src/js/inputValidation.js"></script>
    <script src="https://cdn.tiny.cloud/1/qxpccojfx2fvc6uw6de4zqx3phn2ga60ynh45tvvycj0vov3/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
        tinymce.init({
            selector: 'textarea',
            height: 200,
            menubar: false,
            plugins: [
                'advlist autolink lists link image charmap print preview anchor',
                'searchreplace visualblocks code fullscreen',
                'insertdatetime media table paste code help wordcount'
            ],
            toolbar: 'undo redo | formatselect | ' +
                    'bold italic backcolor | alignleft aligncenter ' +
                    'alignright alignjustify | bullist numlist outdent indent | ' +
                    'removeformat | help',
            content_style: 'body { font-family:Helvetica,Arial,sans-serif; font-size:14px }'
        });
    </script>
</body>
