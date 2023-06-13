<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--  %@page import="java.util.*, java.io.*," %> <!-- web에서는 , 로 연결해서 한줄에 import 가능하다. -->
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> ex01_basic.jsp </title>
</head>
<body>
<h2>JSP Basic</h2>
<div>아무거나~</div>
<%
	//스크립트릿: 함수를 제외한 자바 코드 - 변수 선언, 제어문...
	String str = "안녕!! JSP를 이용한 웹브라우저에 출력합니다.";
%>
<h3><%= str %></h3><hr>

<%
	//스크립트릿: 함수를 제외한 자바 코드 - 변수 선언, 제어문...
	String str2 = "안녕!!222 JSP를 이용한 웹브라우저에 출력합니다.";
	out.print(str2);
	
	/* 
	int su = 300;
	public String show(){
		return "안녕 jsp입니다.";
	} 
	스크립트릿 안에 함수 사용할 수 없음 error
	*/
%><hr>

<%!
	//선언문: 자바 문법, 변수 선언, 함수, ... but 제어문은 쓸 수 업승ㅁ
	int su = 300;
	public String show(){
		return "안녕 jsp입니다.";
	} 
%>
<!-- 표현식 -->
<%=show() %><br />
<%= "String output!!" %><br />
<%= 12345 %><br />
<%= 12.345 %><br />
<h2>su+200 = <%= su+200 %></h2><br />
<%= str2 %>

</body>
</html>