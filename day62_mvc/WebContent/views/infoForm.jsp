<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>  </title>
</head>
<body>


		<h2>info</h2>
		<form action="../info" method="post"> 
	
			<table width="300" border="1">
			<tr height="40">
				<td width="120">이름</td>
				<td width="180"> <input type="text" name = "name"></td>
			</tr>
			
			<tr height="40">
				<td width="120">주소</td>
				<td width="180"> <input type="text" name = "addr"></td>
			</tr>
			<tr height="40">
				<td width="120">연락처</td>
				<td width="180"> <input type="text" name = "tel"></td>
			</tr>
			<tr height="40">
				<td align="center" colspan="2">
					<input type="submit" value ="확인">
				</td>
			</tr>
			</table>
		</form>

</body>
</html>