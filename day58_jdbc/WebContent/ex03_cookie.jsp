<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>  </title>
</head>
<body>
<%
	Cookie newCookie = new Cookie("newName","jihyo");
	newCookie.setMaxAge(60);
	response.addCookie(newCookie);
%><hr>

<%
Cookie[] cs = request.getCookies();
if(cs != null || cs.length > 0){
	for(int i = 0; i < cs.length ; 0){
		if
		cookie[] css
	}
}else{
	out.print("client 저장된 쿠키 정보가 없다.")
}
%>
</body>
</html>