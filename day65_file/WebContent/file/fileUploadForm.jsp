<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> fileUploadForm.jsp - 파일 업로드 예제 </title>
</head>
<body>
<form action="fileUploadPro.jsp" method="post" enctype="multipart/form-data"><!-- file upload에 반드시 필요 -->
	작성자 : <input type="text" name="user"><br>
	제  목 : <input type="text" name="title"><br>
	파일명 : <input type="file" name="uploadFile"><br>
	<input type="submit" value="파일 올리기">
</form>
</body>
</html>