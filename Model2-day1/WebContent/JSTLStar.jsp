<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>  </title>
</head>
<body>
<!--    *
      * * *
    * * * * *
  * * * * * * *
* * * * * * * * * 
-->

<!-- 변수 i, 1~5 -->
<c:forEach var="i" begin="0" end="4">

	<!-- 공백을 출력하는 반복문 -->
	<c:forEach var="j" begin="${i+1}" end="4" >
		&nbsp;
	</c:forEach>	
		<!-- * 출력 for문 -->
		<c:forEach var="j" begin="1" end="${1+(i*2)}" >
			*
		</c:forEach>
		<br>
</c:forEach>
</body>
</html>