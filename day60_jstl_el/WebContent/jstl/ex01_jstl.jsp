<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> ex01_jstl.jsp </title>
</head>
<body>
<c:set var="x">100</c:set><!-- int x = 100; -->
<c:set var = "x" value = "1000" /> <!-- 한번에 선언 가능 -->

<h2><c:out value="${x }"/></h2><!-- out.print -->

<h3>EL 표현으로 출력 : ${x} </h3>

<%
String str = "Hello JSTL!!";
out.print(str);
%><p>
<h2><%=str %></h2>

<c:set var="str2" value= "Hello JSTL2@@" />
<h3>${str2}</h3>

<h3>&lt;c:set&gt;사용 후: <c:out value="${x }" /> </h3>
<hr>
<c:set var = "nickname" value="happymango"/>
<h3>${nickname }</h3>
<hr>
<!-- /////////////////////////////////////////////// -->
<c:catch var="error">
	<%=10 / 0 %>
</c:catch>
<h3>&lt;c:catch&gt;로 잡아낸 오류: <c:out value="${error }"/></h3>
<hr>
<!-- /////////////////////////////////////////////// -->
<%
	String name = "yuna";
	pageContext.setAttribute("id", "smile");
	session.setAttribute("pwd", "oracle");
	application.setAttribute("team", "우리팀");
	request.setAttribute("age", 33);
%> <%= name %>
<hr>
<!-- //////////////   JSTL로 표현하기   ///////////////// -->
<c:set value="<%= name %>" var = "irum"/>
name1 = ${irum }<br>
name2 = <c:out value="${name }" default = "망고양"/><br> <hr>
EL 표현식 출력 <br>
id = ${id} <br>
pwd = ${pwd} <br>
team = ${team} <br>
age = ${age} <br><hr>

<%
	int y  = 31;
if(y%2 == 0)out.print("odd");
else out.print("even");
%><hr>

<c:if test="조건">참일 때 참일 구문</c:if> jstl에서는 else 구분 없다.

<%-- <c:set value="50" var = "a"/>
<c:if test="${a % 2 == 0 }"> <h1> even </h1></c:if>
<c:if test="${a % 2 != 0 }"> <h1> odd </h1></c:if>
 --%>
${a }<hr>
<c:if test="${ 5 < 10 }">
	<h3>5는 10보다 작다.</h3>
</c:if>
<c:if test="${ 5 > 10 }">
	<h3>5는 10보다 크지 않다.</h3>
</c:if>


<%-- <c:if test="${ 6 + 3 == 9 }"> <h1>6 + 3 == 9</h1></c:if>
<c:if test="${ 6 + 3 != 9 }"> <h1>6 + 3 != 9</h1></c:if> --%>

<!-- java: switch case -->

<%-- switch
<c:choose>
	<c:when test = "조건"> 참이면 실행할 구문 </c:when>
	<c:when test = "조건"> 참이면 실행할 구문 </c:when>
	<c:when test = "조건"> 참이면 실행할 구문 </c:when>
	<c:otherwise>default에 해당</c:otherwise>
</c:choose> 
--%>

<c:choose>
	<c:when test="${5+10 == 50 }"><h3>5+ 10 == 50</h3></c:when>
	<c:when test="${50+10 == 50 }"><h3>50+ 10 == 50</h3></c:when>
	<c:when test="${10 + 10 != 50 }"><h3>10 + 10 == 50</h3></c:when>
	<c:otherwise>아무것도 아님 선택할 것이 없음</c:otherwise>
</c:choose>

</body>
</html>