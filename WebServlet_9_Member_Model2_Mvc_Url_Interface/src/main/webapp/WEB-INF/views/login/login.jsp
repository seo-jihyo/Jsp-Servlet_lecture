<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="./loginok.do" method="post">
	<table>
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id" placeholder="아이디를 입력하세요"></td>	
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="pwd" placeholder="비밀번호를 입력하세요."></td>	
		</tr>
		<tr>
			<td><input type="submit" value = "전송"></td>
		</tr>	
	</table>
	</form>
</body>
</html>