<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<c:import url="date.jsp" var = "today"/>
<%-- <% request.setCharacterEncoding("utf-8"); %> --%>
<fmt:requestEncoding value = "UTF-8" /> <!-- 6번줄 스크립트릿 대용 -->


<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> ex03_jstl.jsp JSTL core, fmt library </title>
</head>
<body>
${today } <br><hr>

파라미터: <c:out value="${ param.id }" /><br><!-- ${param['id']} -->




<!-- 스크립트릿 -->
<form action="ex03_jstl.jsp" method="post">
	<input type="text" name="id">
	<input type="submit" value="확인">
</form>

<%
	String id = request.getParameter("id");
	out.print("id= " + id + "<br>");
%>


</body>
</html>