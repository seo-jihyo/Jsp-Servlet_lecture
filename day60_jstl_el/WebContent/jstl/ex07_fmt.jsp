<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<fmt:requestEncoding value="utf-8"/>    
<fmt:setLocale value="ko_kr"/>
<%-- <fmt:setLocale value="en_us"/> --%>

<jsp:useBean id="date" class="java.util.Date"></jsp:useBean>

<%
	Date date2 = new Date();
	out.print(date2);
%>

<fmt:bundle basename="bundle.testBundle"><br/>
	<fmt:message key="name"/><br/>
	<fmt:message key="message"/><br/>
	<fmt:message key="say"/><br/>

	<fmt:message key = "say2">
		<fmt:param>kosa</fmt:param>
	</fmt:message>
</fmt:bundle><hr>

<fmt:formatNumber  value="50000" type="currency"/><br>
<fmt:formatNumber  value="0.15" type="percent"/><br>
<fmt:formatNumber  value="500006789" pattern="###,###,###"/><hr>
	
	
<fmt:formatDate value="${date }" type="date"/>	<br/>
<fmt:formatDate value="${date }" type="time"/>	<br/>
<fmt:formatDate value="${date }" type="both"/>	<br/><hr>


<fmt:formatDate value="${date }" type="both" timeStyle="short" dateStyle="short"/>	<br/>
<fmt:formatDate value="${date }" type="both" timeStyle="long" dateStyle="long"/>	<br/>
<hr>
number: <fmt:formatNumber value="123456789" type="number" /><br/>
currency: <fmt:formatNumber value="12345.6789" type="currency" /><br/>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>  </title>
</head>
<body>

</body>
</html>