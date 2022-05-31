<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인</title>
<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/bootstrap/bootstrap.min.css'/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/HRM/login.css'/>"/>
</head>
<body class="text-center">

	<main class="form-signin">
	  <form method="post" action="login-check.do">
	  	<img class="mb-4" src="<c:url value='/images/HRM/building.svg'/>" alt="" width="72" height="57">
	    <h1 class="h3 mb-3 fw-normal">8조 사내 웹 ERP</h1>
	
	    <div class="form-floating">
	      <input type="text" class="form-control" id="floatingInput" name="id" placeholder="Username" required>
	      <label for="floatingInput">Username</label>
	    </div>
	    <div class="form-floating">
	      <input type="password" class="form-control" id="floatingPassword" name="pw" placeholder="Password" required>
	      <label for="floatingPassword">Password</label>
	    </div>
	    <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
	    <a class="btn btn-default" href="signup.do">Sign up</a>
	  </form>
	</main>
</body>
</html>