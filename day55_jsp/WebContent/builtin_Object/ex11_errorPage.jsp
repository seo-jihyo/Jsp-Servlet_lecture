<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage = "/Error/CommonError.jsp" %>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> ex11_errorPage </title>
</head>
<body>
<h2>Error Page Test</h2>
<h3>name value : <%= request.getParameter("id").toUpperCase() %></h3>

</body>
</html>