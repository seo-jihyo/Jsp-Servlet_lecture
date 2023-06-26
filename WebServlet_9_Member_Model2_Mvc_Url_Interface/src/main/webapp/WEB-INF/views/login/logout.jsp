<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jstl/fmt" %>    
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> logout </title>
</head>
<body>
	<h1>로그아웃되었습니다.</h1>
	<%session.invalidate(); %><!-- session 로그아웃 (초기화) -->
	<a href="index.html">홈으로</a>
</body>
</html>