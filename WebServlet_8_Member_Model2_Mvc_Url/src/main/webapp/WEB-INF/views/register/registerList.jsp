<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> registerList.jsp </title>
</head>
<body>
<h2 align="center">회원 전체 List</h2>
<table width="400" align="center" border = "1">
	<tr>
		<th width="100">ID </th>
		<th width="100">Pwd </th>
		<th width="200">Email </th>
	</tr>
	<c:forEach items="${ list }" var="list">
		<tr>
			<td align="center">${ list.id }</td>
			<td align="center">${ list.pwd }</td>
			<td align="center">${ list.email }</td>
		</tr>
	</c:forEach>
</table><br><hr><br>
	<div align="center">
		<a href="resister.do">회원가입</a>&nbsp;&nbsp;&nbsp;
		<a href="index.html">MAIN</a>
	</div>
</body>
</html>