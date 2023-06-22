<%@ page import="com.kosa.boardBean.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"  errorPage="../error/404code.jsp" %>
	
<%@ taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ include file="../view/color.jsp"%>

<html>
<head>
<title>�Խ���</title>
</head>
<link href="../view/mystyle.css" rel="stylesheet" type="text/css">
<body bgcolor="${ bodyback_c }">

	<center>
		<b>�� ���(��ü �� : ${ count })
		</b>
	
	<table width="700">
		<tr>
			<td bgcolor="${ value_c }" align="right">
				<a href="writeForm.do">�۾���</a>
			</td>
		</tr>
	</table>
<c:if test="${ count == 0 }">	
	<table width="700" border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td align="center">�Խ��ǿ� ����� ���� �����ϴ�.</td>
		</tr>
	</table>	
</c:if>
	
<c:if test="${ count > 0 }">	
	<table width="700" border="1" cellpadding="0" cellspacing="0"
		align="center">
		<tr height="30" bgcolor="${ value_c }">
			<td align="center" width="50">�� ȣ</td>
			<td align="center" width="50">�� ��</td>
			<td align="center" width="50">�ۼ���</td>
			<td align="center" width="50">�ۼ���¥</td>
			<td align="center" width="50">��ȸ��</td>
			<td align="center" width="50">I P</td>
			
	<c:forEach var="list"  items="${ list }">    		
	
		<tr height="30">
			<td align="center" width="50">
				<c:out value="${ number }" />
				<c:set  var="number"   value="${ number - 1 }" />
			</td>
			<td width="250">
			
	<c:if test="${ list.re_level > 0 }">  <!-- �亯���̶��..... -->
	       <img src="images/level.gif" width="${ 5 * list.re_level  }" height="16"> 
			<img	src="images/re.gif"> 
	</c:if>
	<c:if test="${ list.re_level == 0 }"> 
		<img src="images/level.gif" width="${ 5 * list.re_level  }" height="16"> 
	</c:if>
	   
	  <a 	href="content.do?num=${list.num }&pageNum=${ currentPage }">
					${ list.subject }</a> 
	
	<c:if test="list.readcount >= 3">
	 	<img src="images/hot.gif" border="0" height="16"> 
	</c:if>
			</td>
			<td align="center" width="100"><a
				href="mailto:${ list.email }">${ list.writer }</a></td>
			<td align="center" width="150">${ list.reg_date }</td>
			<td align="center" width="150">${ list.readcount }</td>
			<td align="center" width="150">${ list.ip }</td>
		</tr>
	</c:forEach>
	</table>
</c:if>

 <c:if test="${ count > 0 }"> <!--  ��ü �������� ���� ���� -->
	    <c:set  var="pageCount"  value="${ count / pageSize + (count % pageSize ==0 ? 0 : 1) }" />
		<c:set  var="startPage"  value="${ 1 }" />  <!-- ���� ����!! -->
		<c:set  var="pageBlock"  value="${ 5 }" />
		
		
		<fmt:parseNumber var="result"  value="${ currentPage / pageBlock }" integerOnly="true" />
		<c:if  test="${ currentPage % pageBlock != 0 }" > 
			<c:set var="startPage" value="${ result * pageBlock + 1 }" />
		</c:if>
		
		<c:if  test="${ currentPage % pageBlock == 0 }" > 
			<c:set var="startPage" value="${ (result - 1) * pageBlock + 1 }" />
		</c:if>
		
		<c:set  var="endPage"  value="${ startPage + pageBlock -1 }" />

		<c:if test="${ endPage > pageCount }" >
			<c:set  var="endPage"  value="${ pageCount }" />
		</c:if>
		
		<c:if test="${startPage >5 }" >
			<a href="list.do?pageNum=${ startPage-5  }">[����] </a>
		</c:if>

		<c:forEach  var="i" begin="${startPage }" end="${ endPage }">
			<a href="list.do?pageNum=${i}">[${ i }] </a>
	   </c:forEach>
	
	<c:if test="${ endPage < pageCount }" >
		<a href="list.do?pageNum=${ startPage+5 }">[����] </a>
	</c:if>
</c:if>
</body>
</center>
</html>