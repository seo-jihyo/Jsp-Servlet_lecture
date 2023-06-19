<%@page import="edu.kosa.gift.GiftDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<%@ page import="edu.kosa.gift.*" %>

<title> gname 중복 확인 </title>
<% request.setCharacterEncoding("utf-8"); %>

<%
	String gname = request.getParameter("gname");
	GiftDAO dao = GiftDAO.getInstance();
	int check = dao.confirmGN(gname);
%>
</head>
<body>
<% if(check == 1) { %>
<table width="270" border="0" cellpadding="5" cellspacing="0">
	   <td height="39"><%=gname %> 이미 등록된 상품명입니다.</td>
	</tr>
</table>

<form action="confirmGname.jsp" method="post" name="checkForm">
<table width="270" border="0" cellspacing="0" cellpadding="5">
	<tr>
		<td align="center">
		다른 상품명을 입력하세요<p>
		<input type="text" size="10" maxlength="12" name="gname">
		<input type="submit" value="gname중복확인" >
		</td>
	</tr>
</table>

</form>
<%   }else { %>


<table width="270" border="0" cellspacing="0" cellpadding="5">
 		<td align="center">
 			<p> 입력하신<%= gname %>는 등록이 가능합니다.</p>
 			<input type="button" value="닫기" onclick="setgname()" >
 		</td>
 	</tr> 	
</table>
<% } %>
</body>
</html>


<script language="javascript">
<!--
	function setgname(){
	opener.document.userinput.gname.value="<%=gname%>";
	self.close();  ///<-------------------수정할것!!!
	}
//--> 
</script>