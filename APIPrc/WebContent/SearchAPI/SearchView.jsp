<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> 검색 api </title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function(){
		$('#searchBtn').click(function(){
			$.ajax({
				url: "../NaverSearchAPI.do", //요청 URL
				type: "get",				//HTTP 메서드
				data: {
					keyword: $('#keyword').val(),					// 검색어
					startNum: $('#startNum option:selected').val() //검색 시작 위치
				},
					dataType: "json",		//응답 데이터 형식
					success: sucFuncJson,	//요청 성공 시 호출할 메서드 설정
					error: errFunc			//요청 실패 시 호출할 메서드 설정
			});
		});
	});
	// 검색 성공 시 결과를 화면에 뿌려줍니다.
	function sucFuncJson(d) {
		var str = "";
		$.each(d.items, function(index, item){
			str += "<ul>";
			str += "	<li>" + (index + 1) + "</li>";
			str += "	<li>" + item.title + "</li>";
			str += "	<li>" + item.description + "</li>";
		    str += "   <li><a href='" + item.link
		    		+"' target='_blank'>바로가기</a></li>"; 
			str += "</ul>";

		});
		$('#searc hResult').html(str);
	}
	//실패 시 경고창 띄우기
	function errFunc(e) {
		alert("실패: " +e.status);
	}
</script>
<style type="text/css">
ul{border:2px #cccccc solid;}
</style>
</head>
<body>
<div>
	<div>
		<form id="searchFrm">
		한 페이지에 10개씩 출력됨 <br />
		<select id = "startNum">
			<option value="1">1페이지</option>
			<option value="11">2페이지</option>
			<option value="21">3페이지</option>
			<option value="31">4페이지</option>
			<option value="41">5페이지</option>
		</select>
		<input type="text" id="keyword" placeholder="검색어를 입력하세요." />
		<button type="button" id="searchBtn">검색 요청</button>
		</form>
	</div>
	<div class="row" id="searchResult">
	<!-- 여기에 검색 결과가 출력됩니다. -->
	</div>
</div>
</body>
</html>