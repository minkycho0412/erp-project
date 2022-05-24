<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<form methoe="post" action="/erp-project/signup-success.do">
	<fieldset>
		<legend>회원 정보 입력</legend>
		ID: <input type="text" name="id" /><p>
		PW: <input type="password" name="pw" /><p>
	</fieldset>
	<p>
	<a href="/erp-project/login.do">취소</a>
	<input type="submit" value="회원등록" />
</form>
</body>
</html>