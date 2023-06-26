<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>registerId.jsp</title>
</head>
<body>
<h3 align="center"> 특정 ID에 해당하는 정보 인출</h3>


	<form action="${pageContext.request.contextPath}/registerId.do?id=1"  method="GET">
		<table align="center" >
		<tr>
			<td>ID<td>
			<td><input type="text"      name="id"    placeholder="id입력(숫자입력)"  ></td>
			<td><input type="submit" value="idOK"></td>
		</tr>
		</table>
	</form><br><hr><br>

<c:set value="${ dto }"  var="dto" />
<table align="center" border="1" width="400">
	<tr>
		<th width="100">ID </th>
		<th width="100">Pwd </th>
		<th width="200">Email </th>
	</tr>
		<tr>
			<td align="center" height="20">${ dto.id }</td>
			<td align="center">${ dto.pwd }</td>
			<td align="center">${ dto.email }</td>
		</tr>
</table><br><hr>

	<a href="resister.do">회원가입</a>&nbsp;&nbsp;&nbsp;
	<a href="resisterId.do?id=0">ID 회원</a>&nbsp;&nbsp;&nbsp;
	<a href="index.html">MAIN</a>
	
	
</body>
</html>