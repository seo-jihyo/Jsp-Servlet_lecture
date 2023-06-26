<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<h2 align="center">회원가입</h2>
	<form action="${pageContext.request.contextPath}/registerok.do"  method="POST">
	
	<table width="400" align="center" border="1" >
		<tr>
			<td width="150" align="center">ID</td>
			<td width="250">
			<input type="text"      name="id"    placeholder="id입력(숫자)"    required="required">
			</td>
		</tr>
		<tr>
			<td width="150" align="center">PWD</td>
			<td width="250">
			<input type="password" name="pwd"   placeholder="pwd입력"   required="required"><br>
			</td>
		</tr>
		<tr>
			<td width="150" align="center">EMAIL</td>
			<td width="250">
			<input type="text"   name="email" placeholder="email입력" required="required"><br>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="회원가입"></td>
		</tr>
	</table>
	</form><hr>
	
	<div align="center">
		<a href="resister.do">회원가입</a>&nbsp;&nbsp;&nbsp;
		<a href="index.html">MAIN</a>
	</div>
</body>
</html>