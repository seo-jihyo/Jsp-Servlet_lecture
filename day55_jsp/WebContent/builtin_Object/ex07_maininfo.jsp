<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> ex07_maininfo.jsp Main window </title>
</head>
<body>
<h1>Main Window</h1>
<table style="width: 700px" ><!-- border = "1" -->
	<tr>
		<td colspan="2">
			<jsp:include page="/module/Top.jsp"></jsp:include>
		</td>
	</tr>

	<tr>
		<td style="width: 200px">
			<jsp:include page="/module/Left.jsp"></jsp:include>
		</td>
		<td style="width: 500px">
		Web Site Main Context...<br>
		Web Site Main Context...<br>
		Web Site Main Context...<br>
		Web Site Main Context...<br>
		Web Site Main Context...<br>
		Web Site Main Context...<br>
		Web Site Main Context...<br>
		Web Site Main Context...<br>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<jsp:include page="/module/Bottom.jsp"></jsp:include>
		</td>
	</tr>
</table>
</body>
</html>