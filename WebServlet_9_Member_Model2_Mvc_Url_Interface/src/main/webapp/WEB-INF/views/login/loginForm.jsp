<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jstl/fmt" %>    
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>  </title>
</head>
<body>
<form action="loginForm" method="post">
<table width="400" align="center" border="1">	
	<tr height="40">
		<td width="150">아이디</td>
		<td width="250"><input type="text" name="id"></td>		
	</tr>	
	<tr height="40">
		<td width="150">패스워드</td>
		<td width="250"><input type="password" name="password"></td>		
	</tr>	
	<tr height="40">
		<td width="150">이메일</td>
		<td width="250"><input type="email" name="email"></td>		
	</tr>	
		<tr height="40">
		<td width="150">등록</td>
		<td colspan="2"><input type="submit" value="회원가입"></td>		
	</tr>	
		
</table>


</form>
</body>
</html>