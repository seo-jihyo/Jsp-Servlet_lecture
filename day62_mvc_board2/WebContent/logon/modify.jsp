<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ include file="../view/color.jsp"%>

<html>
<head><title>정보수정</title>
<link href="../view/style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="${bodyback_c}">
 <table width=500 cellpadding="0" cellspacing="0"  align="center" >
   <tr>
     <td>
      <form name="myform" action="modifyForm.do" method="post">
        <INPUT type="hidden" name="id" value="${sessionScope.memId}">
	    <INPUT type="submit" value="회원정보 수정">
      </form>
	 </td>
	 <td>
      <form name="myform" action="deleteForm.do" method="post">
        <INPUT type="hidden" name="id" value="${sessionScope.memId}">
        <INPUT type="submit" value="회원 탈퇴">
      </form>
	 </td>
	 <td>
      <form name="myform" action="main.do" method="post">
        <INPUT type="submit" value="메인으로">
      </form>
	 </td>
	</tr>
   </table>
</body>
</html>