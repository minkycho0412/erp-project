<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<form method="post" action="login-check.do">
		<label for="id">ID: </label>
		<input type="text" name="id" required/><br>
		<label for="id">PW: </label>
		<input type="password" name="pw" required/><br>
		<input type="submit" value="로그인">
	</form>
	<a href="signup.do">회원가입</a>
</body>
</html>