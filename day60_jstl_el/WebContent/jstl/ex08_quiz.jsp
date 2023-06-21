<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>  </title>
</head>
<body>
<div>
<b>1. name=자기 이름, address=주소 셋팅하고 출력하기</b><br/>
<c:set var="name" value="서지효"/>
<c:set var="addr" value="경기도"/>

<c:out value="${name}" /> <br/>
<c:out value="${addr}" />
</div>
<hr>

<div>
<b>2. 1~100까지 3의 배수 개수와 합 구하기</b>
<c:set var="cnt" value="0"/>
<c:set var="sum" value="0"/>
<c:forEach var="i" begin="3" end="100" step="3">
<c:if test="i%3==0" />
	<c:set var="cnt" value="${cnt + 1}"/>
	<c:set var="sum" value="${sum + i}"/>
</c:forEach> <br/>
	${cnt} &nbsp;
	${sum}
</div>
</body>
</html>