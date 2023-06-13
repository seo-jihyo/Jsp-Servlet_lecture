<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> ex06_application.jsp </title>
</head>
<body>
<h2>application 웹 경로</h2>
<!-- 
	가상 경로: (웹 브라우저에서 바라보는 경로)
	
	물리적 경로: 
	
	이클립스통한 톰켓 구동 시 물리적 경로:
	
 -->
 <%
 	request.setCharacterEncoding("UTF-8");
 	String resourcePath = "/download/memo.txt";
 	out.print(resourcePath + "<br>"); ///download/memo.txt
 	
 	// 가상경로에서 ---> 물리적 경로 얻어내기
 	out.print(request.getContextPath() + "<br>"); ///day55_jsp
 	
 	String contextPath = application.getRealPath(request.getContextPath());
 	String realPath = application.getRealPath(resourcePath);
 	out.print("contextPath: " + contextPath + "<br>");
 	out.print("realPath: " + realPath + "<br>");
 	
 %>
</body>
</html>