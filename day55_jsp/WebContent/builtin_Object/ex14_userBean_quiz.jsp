<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id = "g" class = "edu.kosa.quiz.GiftVO" />

<%--  <jsp:setProperty property="gno" name="g" value="1"/>
<jsp:setProperty property="gname" name="g" value="커피세트"/>
<jsp:setProperty property="g_start" name="g" value="230614"/>
<jsp:setProperty property="g_end" name="g" value="230617"/>  --%>

<jsp:setProperty property="*" name = "g" />
<h3><%= g.toString() %></h3><hr> 

gno: <jsp:getProperty property="gno" name="g" /><br>
gname: <jsp:getProperty property="gname" name="g" /><br>
g_start: <jsp:getProperty property="g_start" name="g" /><br>
g_end: <jsp:getProperty property="g_end" name="g" /><br>

<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>  </title>
</head>
<body>

</body>
</html>