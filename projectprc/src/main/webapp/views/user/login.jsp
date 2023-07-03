<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>LoginForm</title>
  <link rel="stylesheet" href="../../assets/css/login.css">
</head>
<body>
  <div class="container">
    
    <input type="text" id="check">
    
    <div class="login form">
      <header>Login</header>
      
      <form action="#">
      
        <input type="text" placeholder="아이디를 입력하세요. ">
        <input type="password" placeholder="비밀번호를 입력하세요.">
 		
        <input type="submit" class="button" value="Login">
      </form>
      
      <div class="signup"> 
 		  <div class="column">      
        	<input type="button" value="회원가입" class="signup" onclick="">
        	<input type="button" value="ID/비밀번호 찾기" class="searchpwd" onclick="">
          </div>
      </div>
    </div>

  </div>
</body>
</html>