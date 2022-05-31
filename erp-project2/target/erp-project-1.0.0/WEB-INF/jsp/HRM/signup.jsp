<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>
<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/cheatsheet/">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/bootstrap/bootstrap.min.css'/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/HRM/login.css'/>"/>
</head>
<body>
	<main class="form-signin">
		<form method="post" action="signup-success.do">
			<h2 class="h3 mb-3 fw-normal">회원가입</h2>
			<div class="mb-3">
			    <label for="exampleInputText1" class="form-label">Username</label>
			    <input type="text" class="form-control" id="exampleInputText1" name="id" required>
			</div>
			<div class="mb-3">
			    <label for="exampleInputPassword1" class="form-label">Password</label>
			    <input type="password" class="form-control" id="exampleInputPassword1" name="pw" required>
			</div>
			<button type="submit" class="btn btn-primary">회원 등록</button>
			<a class="btn btn-default" href="login.do">취소</a>
		</form>
	</main>
	<script src="<c:url value='/js/bootstrap/bootstrap.bundle.min.js'/>"></script>
</body>
</html>