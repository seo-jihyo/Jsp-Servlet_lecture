<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Sourcecode -->   
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>

<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> dbcpConnection.jsp </title>
</head>
<body>
<%
	try{
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc:BoardDB");
		
		Connection conn = ds.getConnection();
		
		out.print("<h1> DBCP Connection success!!</h1> <br><br>");
		
	}catch(Exception e){
		e.printStackTrace();
	}

%>

</body>
</html>