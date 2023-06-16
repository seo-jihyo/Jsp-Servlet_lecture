<%@page import="java.sql.DriverManager"%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> ex01_jdbc test </title>
</head>
<body>
<!-- 1. 드라이브 로드 및 오픈 후 사용-->
	
<%
	Connection conn = null;

	try{
	 Class.forName("oracle.jdbc.OracleDriver");	
	 out.print("driver load success <br />");
	 
	 conn = DriverManager.getConnection(
		"jdbc:oracle:thin:@localhost:1521:orcl", "jihyo", "oracle");
	 	out.print("connection success <br />");
	 	
	}catch(Exception e) {
		e.printStackTrace();
	}finally{
		//conn.close();
	}
%>
</body>
</html>