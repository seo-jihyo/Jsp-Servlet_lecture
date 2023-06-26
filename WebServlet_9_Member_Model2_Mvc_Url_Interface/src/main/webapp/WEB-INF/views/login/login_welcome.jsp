<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> 로그인 </title>
</head>
<body>
  ${sessionScope.id } 님 환영합니다.
  <c:choose>
    <c:when test="${id ne null}">
        <h3>어서오세요 ${id} 님</h3>
        <input type="button" value="로그아웃" onclick="location.href='logout.do'">
    </c:when>
    <c:otherwise>
       
        <input type="button" value="돌아가기" onclick="javascript:history.back()">
    </c:otherwise>
</c:choose>

</body>
</html>