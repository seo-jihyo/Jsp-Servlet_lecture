<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:choose>
    <c:when test="${id ne null}">
        <h1 align="center">어서오세요 ${id} 님</h1>
        <input type="button" value="로그아웃" onclick="location.href='logout.do'">
    </c:when>
    <c:otherwise>
        다시 로그인 해주세요
        <input type="button" value="돌아가기" onclick="javascript:history.back()">
    </c:otherwise>
</c:choose>
</body>
</html>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>  </title>
</head>
<body>
<c:set value="${ id }" var="id"/>

<c:if test="${ id ne null }"> 	<!-- <c:if test="${ id != null }"> -->
  ${id} 로그인
</c:if>

<c:if test="${ id } == null">
  회원이 아닙니다.
  <a href="register.do">회원가입</a>
</c:if>
</body>
</html> --%>