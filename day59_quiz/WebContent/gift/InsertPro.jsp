<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="edu.kosa.gift.GiftDAO" %>
<jsp:useBean id="vo" class = "edu.kosa.gift.GiftVO"/>

<% request.setCharacterEncoding("utf-8"); %> 
<jsp:setProperty property="*" name="vo"/>
<!-- *: 전체 세팅 / id값이 name -->

<%
/* 	vo.setReg_date(new Timestamp(System.currentTimeMillis())); */
	GiftDAO dao = GiftDAO.getInstance();
	dao.insert(vo);
%>
<jsp:getProperty property="gname" name="vo" /> 상품이 등록되었습니다.
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> insertPro.jsp </title>
</head>
<body>
<!-- <form action="memberList.jsp">
	<input type="submit" value="회원 목록 보기">
</form> -->
</body>
</html>