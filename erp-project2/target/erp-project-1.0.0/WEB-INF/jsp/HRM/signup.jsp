<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form method="post" action="signup-success.do">
		<fieldset>
			<legend>회원 정보 입력</legend>
			<label for="id">ID: </label>
			<input type="text" name="id" required/><br>
			<label for="id">PW: </label>
			<input type="password" name="pw" required/><br>
		</fieldset>
		<br>
		<a href="login.do">취소</a>
		<input type="submit" value="회원등록" />
	</form>
</body>
</html>