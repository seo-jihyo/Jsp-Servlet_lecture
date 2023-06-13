<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> ex01_request.jsp request 객체 다루기 </title>
</head>
<body>
<!-- 
	웹브라우저 (클라이언트)가 웹 서버에 전송한 요청 관련 정보를 제공
	>> 주요 기능
		- 클라이언트 (웹 브라우저)와 관련된 정보 읽기 기능
		- 서버와 관련된 정보 읽기 기능
		- 클라이언트가 전송한 요청 파라미터 읽기 기능
		- 클라이언트가 전송한 요청 헤더 읽기 기능
		- 클라이언트가 전송한 쿠키 읽기 기능
		- 속성 처리 기능 
-->
<h1>request 객체 다루기</h1>
<%
	// page Encoding 설정
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	out.print("당신의 " + id + "입니다.");
	//http://localhost:8080/day55_jsp/builtin_Object/ex01_request.jsp?id=jihyo
%>
<h3>Request 객체가 가지고 있는 함수</h3>
 클라이언트 IP 정보 가져오기: <%= request.getRemoteAddr() %><Br>
 오청방식(인코딩): <%= request.getCharacterEncoding()%><br>
   전송  방식  : <%= request.getMethod() %><br>
   서버  이름  : <%= request.getServerName() %><br>
   서버  포트  : <%= request.getServerPort() %><br>
   컨텍스트 정보: <%= request.getContextPath() %><br>
   전송된 데이터: <%= request.getParameter("id")%><br>
</body> 
</html>