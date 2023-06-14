<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="e" class = "com.kosa.ex04.Emp" />
<!-- setter method 하나씩 명시적-->
<jsp:setProperty property="name" name="e" value="이순신"/>
<jsp:setProperty property="empno" name="e" value="6000"/>
<jsp:setProperty property="pay" name="e" value="8877"/>

<h2><%= e.toString() %></h2><hr>
<!-- set은 * 사용 가능 getProperty는 * 안 됨-->
<jsp:setProperty property="*" name="e"/>

이름: <jsp:getProperty property="name" name ="e" /><br>
사번: <jsp:getProperty property="empno" name ="e" /><br>
급여: <jsp:getProperty property="pay" name ="e" /><br>

<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> ex14_useBean.jsp </title>
</head>
<body>
<h1>useBean Login</h1>
<%
	Date today = new Date();
	out.print(today + "<br>");
%><hr>
useBean을 이용해서 객체 생성하기
<jsp:useBean id="now" class = "java.util.Date" />
<h3><%= now %></h3>

</body>
</html>