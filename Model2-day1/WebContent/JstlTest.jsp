<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@taglib prefixs="C" uri="http://java.sun.com/jsp/jstl/core" %>  --%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>  </title>
</head>
<body>
<!-- 변수 선언하는 방법: set (jsp의 setAttribute와 같은 역할을 함 그래서 el에서 쓸 수 있다. -->
<c:set var="i" value="4"/>
<%
	request.setAttribute("i", 4);
%>
<!-- 위의 둘은 같은 개념 -->

<!-- if문 사용하는 방법 -->
<c:if test="${4 > 3 }"><!-- 변수 자체를 가져올 수 없음 -->
	안녕하세요
</c:if>

<!-- for문 사용하는 방법 -->

<c:forEach var = "i" begin="1" end="10" <%-- step="${i=i+1 }" --%>>

점심시간입니다.<br>

</c:forEach>

<c:set var="sum" values="0" />



<!-- forEach: 객체 전체에 걸쳐 반복 실행을 할 때 사용. 
	 forTokens 자바의 StringTokenizer클래스를 사용하는 것과 같다 --> 

</body>
</html>

