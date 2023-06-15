<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>  </title>
</head>
<body>

	<!-- <center> -->
	<h2>계산기</h2>
	<!-- <form action="ElCulProc.jsp" method="post">  ElCulProc로 보내는 방법-->
	<form action="ElCul.jsp" method="post"><!-- ElCul에서 돌게끔 -->
		<table width="450">
		<tr height="40">
			<td align="center" width="100"> <input type="text" name="exp1" value="${param.exp1 }"></td>
			<td align="center" width="50"> <select name = "exp2">
											<option value="+"> + </option>
											<option value="-"> - </option>
											<option value="*"> * </option>
											<option value="/"> / </option>
											</select></td>
			<td align="center" width="100"> <input type="text" name="exp3" value="${param.exp3 }"> </td>
			<td align="center" width="20"> = </td>
<!-- 		<td align="center" width="100"> <input type="text" name="exp4"></td> -->
			<td align="center" width="100">
			
				<%
				String exp2 = request.getParameter("exp2");
				//nullpointexcption: null처리를 해준다.
				if(exp2 == null){
					exp2 = "+";
				}
				
				if (exp2.equals("+")) {
				%>
				<input type="text" name ="exp4" value = "${param.exp1 + param.exp3 }">
				<%
				}
				if (exp2.equals("-")) {
				%>
				<input type="text" name ="exp4" value = "${param.exp1 - param.exp3 }">
				<%
				}
				if (exp2.equals("*")) {
				%>
				<input type="text" name ="exp4" value = "${param.exp1 * param.exp3 }">
				<%
				}
				if (exp2.equals("/")) {
				%>
				<input type="text" name ="exp4" value = "${param.exp1 / param.exp3 }">
				<%
				}
				%>
			</td>
			<td align="center" width="100"> <input type="submit" name="결과보기"></td>
		
		</table>
	
	</form>
	
<!-- 	</center> -->
</body>
</html>