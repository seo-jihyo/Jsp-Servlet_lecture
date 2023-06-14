<%@page import="com.kosa.ex04.Emp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- new로 객체 생성했던 것을 tag로 객체 생성하기 위해... 액션태그 - useBean-->
<jsp:useBean id="emp" class="com.kosa.ex04.Emp" />
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> ex13_useBean.jsp </title>
</head>
<body>

<%
	/*자바에서 객체 생성 방법 */
	Emp e = new Emp();
	out.print(e.toString()+"<hr>");
	e.setEmpno(1111);
	e.setName("서지효");
	e.setPay(9000);
	
	emp.setName("김연아");
	
%><hr>

<%= e.toString() %><p>
<h3><%=emp.toString() %></h3>

</body>
</html>