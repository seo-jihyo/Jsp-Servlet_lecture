<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>memoList.jsp </title>

<style>
	table{
		font-family: arial, sans-serif;
		border-collapse: collapse;  
		width: 60%;
		
	}
	th, td {
		border: 1px solid #ddd;
		text-align: center;
		padding: 8px;
	}
	tr:nth-child(even) {
		background-color: #ddd;
	}

</style>
</head>

<body>
<!-- <hr color="green" width="400" > -->
<form action="memoList" method="get">
	<input type="text" name="search">
	<input type="submit" value="검색">
</form>
<table align="center">
	<tr>
			<th>NickName</th>
			<th>Email</th>
			<th>Content</th>
			<th></th>
			<th></th>
	</tr>
	<c:forEach var ="list"  items="${ list }">
		<tr>
				<td>${ list.id } </td>
				<td>${ list.email } </td>
				<td>${ list.content } </td>
				<td><input type="button" value = "수정" data-id = "${ list.id }" onclick="update(this)"></td>
				<td><input type="button" value = "삭제" data-id = "${ list.id }" onclick="del(this)"></td>
				
		</tr>
	</c:forEach>
		
</table><p>

<input type="button" value="글쓰기" onclick="javascript:location.href='memo.html' ">

<script type="text/javascript">
	function update(input) {
		
	location.href="memoUpdate?id="+input.dataset.id;
	}
	function del(input) {
		
	location.href="memoDelete?id="+input.dataset.id;
	}

	
</script>
</body>
</html>