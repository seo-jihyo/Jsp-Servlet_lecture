<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> 03_loginOK.jsp </title>
</head>
<body>

	<%
	/*
		한글 처리
		
		1.method = "post"
		request.setCharacterEncoding("EUC-KR");
		
		2.method = "get"
		http://localhost:8080/day55_jsp/jsp/03_loginOK.jsp?userId=aaa&pwd=111&hobby=soccer
	*/
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("userId");
		String pw = request.getParameter("pwd");
		
		// 1번째 방법 
		//String[] hobbys = request.getParameterValues("hobby"); 
		
		// 2번째 방법
		Map map = request.getParameterMap();
		String[] hobbys = (String[])map.get("hobby");
	%>
	당신의 id는 <%=id %><br>
	당신의 pw는 <%= pw %> <br>
	당신의 취미는 
	<%
		if( hobbys != null){
			for(int i = 0; i < hobbys.length; i++){
	%>
		<%= hobbys[i] %> &nbsp;
	<%
			}//for end
		} //if end
	%>				
</body>
</html>