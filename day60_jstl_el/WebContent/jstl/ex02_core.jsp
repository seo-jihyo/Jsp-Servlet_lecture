<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.HashMap"%>
<%@page import="oracle.jdbc.driver.HAManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> ex02_fore.jsp JSTL core library</title>
</head><!-- 스크립트릿과 jstl 비교 -->
<body>
<h3>1번 JSTL 홀수만 출력하기</h3>
<c:forEach var="i" begin="1" end="10" step="2">
	<b>${i }</b>
</c:forEach> <br>

<%
	for(int j = 0; j< 10; j++){
		if(j%2 == 1){
		//	out.print(j+"<br>");
%>
<b><%=j %></b>&nbsp;&nbsp;&nbsp;&nbsp;
<%
		}
	}
%>


<hr><h3>1 ~ 100 합 구하기</h3>
<c:set var = "sum" value="0"/>
<c:forEach var="k" begin="1" end="100">
	<c:set var="sum" value="${sum + k }" />
</c:forEach>
합은 : ${sum }


<hr><h3>3번  2번 구구단 출력</h3>
<c:forEach var="i"  begin="2" end="9">
		<c:forEach var="j" begin="1" end="9">
			   ${ i } * ${ j } = ${ i*j } <br>
		</c:forEach>
</c:forEach> <hr> 
<%-- --%>
<%
	String[] sports = {"축구", "농구", "골프", "수영", "볼링", "스카이다이빙" };
	HashMap map = new HashMap();
	map.put("name", "jihyo");
	map.put("age", 13);
	map.put("tel", "010-0000-0202");
	map.put("date", new java.util.Date());
%>
<hr>
<h3>스포츠 배열 2번째 값부터 3개만 출력</h3>
<c:set value="<%= sports %>"   var="sportsArray" />
<%-- <c:set value="${ sports }"   var="sportsArray" /> --%>
<c:forEach var="j"  items="${ sportsArray }">
		${ j }&nbsp;&nbsp;&nbsp;&nbsp;
</c:forEach>
<hr>
<c:forEach var = "i" items="${sportsArray }"
					 begin="1" end="3" step="1" varStatus="status">
		i값: ${i}<br>
		루프 실행 현제 인덱스값: ${status.index}<br>
		루프 실행 횟수: ${ status.count }<br>
		begin 값: ${status.begin }<br>
		end 값: ${status.end	 }<br>
		step 값: ${status.step }<br><br>
</c:forEach><hr>
<h3> Map Member Info output </h3>
<c:set var="memberMap" value ="<%= map %>"/>
<c:forEach var = "i" items = "${memberMap }" >
	${i.key } : ${i.value }<br>
</c:forEach><hr>

<h3>2. 스크립트릿</h3>
<%
	String a = "a, b, c, d, e, f, g, h, i, j, k";
	String[] alphabet = a.split(",");
	
	for(int i = 0; i < alphabet.length; i++) {
%>
	<b><%= alphabet[i] %></b>
<% } //for end %>
<hr>	

<h3>3. JSTL </h3>
<c:set var = "data" value="을지문덕, 김유신, 강감찬, 세종대왕, 이순신, 광개토대왕" />
<c:forTokens var="varData" items="${data}" delims=",">
	<b>${varData }</b>
</c:forTokens>


</body>
</html>