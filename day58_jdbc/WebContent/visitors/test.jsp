<%@page import="java.sql.Connection"%>
<%@page import="com.kosta.visitors.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> test </title>
</head>
<body>
<%
	Connection conn = BookDAO.loadOracleDriver();
%>
</body>
</html>