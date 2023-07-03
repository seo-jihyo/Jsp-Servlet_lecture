<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<title>JoinForm</title>
    <link rel="stylesheet" href="../../assets/css/registration.css" />
  </head>
  <body>
    <section class="container">
      <header>회원가입</header>
      <form action="#" class="form">
        
        <div class="input-box">
          <label>ID</label>
          <input type="ID" placeholder="ID 입력" required />
        </div>
        <div class="input-box">
          <label>Password</label>
          <input type="Password" placeholder="Password 입력" required />
          <input type="Password" placeholder="Password 재입력" required />
        </div>

        <div class="input-box">
          <label>Name</label>
          <input type="text" placeholder="이름 입력" required />
        </div>

        <div class="column">
          <div class="input-box">
            <label>Phone Number</label>
            <input type="tel" placeholder="연락처 입력" required />
          </div>
          <div class="input-box">
            <label>Birth Date</label>
            <input type="date"  required />
          </div>
        </div>

        <div class="input-box address">
          <label>Address</label>
          <div class="column">          
          	<input type="text" placeholder="우편번호" readonly />
         	<input type="button" value="우편번호 찾기">
          </div>

          <input type="text" placeholder="도로명 주소" required />
          <input type="text" placeholder="상세 주소" required />
        </div>
        
        <div class="input-box">
          <label>Check</label>
          <div class="column">      
          	<select name="Check">
          	 <option selected disabled hidden>질문을 선택하세요.</option>
          	 	<option value="1">좋아하는 노래는?</option>
                <option value="2">데드풀</option>
                <option value="3">스파이더맨</option>
          	</select>
          <input type="text" placeholder="입력" required />
          </div>
        </div>
        
        <input type="submit" value="회원가입" class="submit">
       
      </form>
    </section>
  </body>
</html>