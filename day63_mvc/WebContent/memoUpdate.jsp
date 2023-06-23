<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jstl/fmt" %>    
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>  </title>
</head>
<body>
<form action="./MemoUpdateProServlet" method="post">
    <h1 align="center">MEMO Update</h1>
    <table border="1" align="center">
        <tbody>
        <tr>
            <th><label for="id">ID:</label></th>
            <td><input type="text" name="id" id="id" value="${ dao.id }" readonly="readonly"></td>
        </tr>
        <tr>
            <th><label for="email">EMAIL:</label></th>
            <td><input type="email" name="email" id="email" value="${ dao.email }"></td>
        </tr>
        <tr>
            <th><label for="content">CONTENT:</label></th>
            <td><textarea name="content" id="content" cols="30" rows="10">${ dao.content }</textarea></td>
        </tr>
       <tr>
            <td colspan="2" align="center">
            <input type="submit" value="전송">&nbsp;
            <input type="button" value="리스트" onclick="javascript:location.href='memoList?search=' " />
        </tr>
        
        </tbody>
    </table>
</form>
</body>
</html>