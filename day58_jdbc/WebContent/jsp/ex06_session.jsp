<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>  </title>
</head>
<body>
<%
	Date time = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<h3>세션 정보	</h3>
브라우저마자 고유하게 부여하는 SessionValue: <%=session.getId() %><hr>
<% time.setTime(session.getCreationTime()); %>
세션이 생성된 시간: <%= sdf.format(time) %> <hr>
<% time.setTime(session.getLastAccessedTime()); %>
마지막 접속 시간: <%=sdf.format(time) %>
</body>
</html>