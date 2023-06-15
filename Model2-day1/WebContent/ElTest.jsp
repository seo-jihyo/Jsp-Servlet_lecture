<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>  </title>
</head>
<body>
<!-- 출력하는 방법 -->
<%
	int i = 3;
	
	out.println("i= " + i); //변수 i 호출
	
	request.setAttribute("ia", 3); //request에 저장된 i값 호출 = 변수를 request나 session 객체에 저장한 후 출력
%>
<p>
	i = <%= i %>
<p>
<!-- EL 표션식 -->
	i = ${ia > 4}
	
</body>
</html>