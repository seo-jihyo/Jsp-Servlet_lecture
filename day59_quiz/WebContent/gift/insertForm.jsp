<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> Main </title>
<script type="text/javascript">
//상품명 중복 여부 판단 함수

function openConfirmgname(userinput) {
    if (!userinput.gname.value) {  // 상품명입력했는지 검사
        alert("상품명을 입력하세요");
        return;
    }
    //url과 사용자 입력 상품명을 조회합니다.
    url = "confirmGname.jsp?gname=" + userinput.gname.value ;
    
    //새로운 윈도우를 연다.
    open(url, "confirm", 
    "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
}
</script>
</head>
<body>
<!-- <center> -->
	<form method="post" action="InsertPro.jsp" name="userinput"
		onSubmit="return checkIt()">
		<table width="450" border="1">
			<tr height="40">
				<td width="150">GNO</td>
				<td width="300"><input type="text" name="gno"></td>
			</tr>

			<tr height="40">
				<td width="150">GNAME</td>
				<td width="300"><input type="text" name="gname"> 
				<input type="button" name="confirm_gname" value="gname 중복확인"
					OnClick="openConfirmgname(this.form)"></td>
			</tr>
			<tr height="40">
				<td width="150">G_START</td>
				<td width="300"><input type="text" name="g_start"
					placeholder="000000"></td>
			</tr>
			<tr height="40">
				<td width="150">G_END</td>
				<td width="300"><input type="text" name="g_end"
					placeholder="000000"></td>
			</tr>
			<tr height="40">
				<td align="center" colspan="2"><input type="submit" value="등록">
				</td>
			</tr>
		</table>
	</form>
	<!-- </center> -->
</body>
</html>