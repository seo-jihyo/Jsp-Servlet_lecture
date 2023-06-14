<%@page import="com.kosa.ex04.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> ex04_emp.jsp </title>
</head>
<body>

<%!
Emp e = new Emp(); //객체 생성
	public String message(){
	return "Daebo th2 파이팅";
}
%>
<%
	Emp e = new Emp(); //객체 생성
	out.print(e.toString() +"<p><hr>"); //초기값 출력
	
	e.setEmpno(7788);
	e.setName("빅파이");
	e.setPay(8000);
	
	int num = 88;
%>
<%= e.toString() %><hr>

외부 package에 있는 클래스 객체 생성 <br>
<%= 1 + 2 + 3 %><br>
<%= num %><br>
<%= message() %>
</body>
</html>