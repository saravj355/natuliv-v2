<%-- 
    Document   : menu
    Created on : Oct 15, 2020, 11:12:28 AM
    Author     : sarav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
    HttpSession objession = request.getSession(false);
    String name = (String)objession.getAttribute("name");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hola ${name}!</h1>
    </body>
</html>
