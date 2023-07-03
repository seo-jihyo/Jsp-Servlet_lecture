<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>MyPage</title>


 <link rel="stylesheet" href="../../assets/css/myPage.css">
<!-- CSS only -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

 
 </head>
<body>
	<div class="container">
	<br>
		<div>
			<h3>내 인사정보</h3>
			
			<table class="table table-borderless">
				<tr>
					<td rowspan="5" width="300px"> <img src=#></td>
					
					<th>사원명</th> 	<td> ssssssssssssssss</td>
					<th>직원구분</th> 	<td> ssssssssssssssss </td>
					<th>부서</th> 	<td> ssssssssssssssss </td>
				</tr>
				<tr>
					<th>직위</th> 	<td> </td>
					<th>입사일자</th> 	<td> </td>
					<th>사원번호</th> 	<td> </td>
					
				</tr>
				<tr>
					<th>직책</th> 	<td> </td>
					<th>ID</th> 	<td></td>
					<th>직통번호</th> 	<td> </td>
				
				</tr>
				<tr>
					<th>직급</th> 	<td> </td> 
					<th>이메일</th> 	<td> </td>
					<th>휴대전화</th> 	<td> </td>
					
				</tr>
				<tr>
					<th>FAX</th> <td> </td>
					<th>메신저</th> <td> </td>
					<!-- <th>FAX</th> <td> </td> -->
				</tr>
			</table>
		</div>
		
		<!-- ///////////////////////////////////////////////////////////////////////////////////////// -->
		<br><br>
		<!-- 인사정보 개인정보 인사발령 경력·학력 포상·징계 인사평가 -->
		<!-- 탭 메뉴 -->
		
		<nav>
			<div class="nav nav-tabs" id="nav-tab" role="tablist">
				<button class="nav-link active" id="nav-home-tab"
					data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
					role="tab" aria-controls="nav-home" aria-selected="true">인사정보</button>
					
				<button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
					data-bs-target="#nav-profile" type="button" role="tab"
					aria-controls="nav-profile" aria-selected="false">개인정보</button>
				
				<button class="nav-link" id="nav-******-tab" data-bs-toggle="tab"
					data-bs-target="#------" type="button" role="tab"
					aria-controls="------" aria-selected="false">인사발령</button>
					
				<button class="nav-link" id="nav-******-tab" data-bs-toggle="tab"
					data-bs-target="#------" type="button" role="tab"
					aria-controls="------" aria-selected="false">경력·학력</button>
					
				<button class="nav-link" id="nav-******-tab" data-bs-toggle="tab"
					data-bs-target="#------" type="button" role="tab"
					aria-controls="------" aria-selected="false">포상·징계</button>
					
				<button class="nav-link" id="nav-******-tab" data-bs-toggle="tab"
					data-bs-target="#------" type="button" role="tab"
					aria-controls="------" aria-selected="false">인사평가</button>
					
				
			</div>
		</nav>
		
		<!-- 내용 -->
		<div class="tab-content" id="nav-tabContent">
			<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
				aria-labelledby="nav-home-tab">
				<br>
				<table class="table table-borderless" border="1">
					<tr>
						<td colspan="4"><h5>직원 정보</h5></td>
					</tr>                             
					<tr>
						<td>성별</td> 		<td></td>
						<td>사번</td> 		<td></td>
						<td>##</td> 		<td></td>
					</tr>
					<tr>
						<td>생년월일</td> 	<td></td>
						<td>입사일</td> 		<td></td>
						<td>##</td> 		<td></td>
					</tr>
					<tr>
						<td>주소</td> 		<td></td>
						<td>최종발령일</td> 	<td></td>
						<td>##</td> 		<td></td>
					</tr>
				</table>

			</div>
			<div class="tab-pane fade" id="nav-profile" role="tabpanel"
				aria-labelledby="nav-profile-tab">...</div>
			
			<div class="tab-pane fade" id="nav-contact" role="tabpanel"
				aria-labelledby="nav-contact-tab">...</div>
		</div>
	</body>
</html>