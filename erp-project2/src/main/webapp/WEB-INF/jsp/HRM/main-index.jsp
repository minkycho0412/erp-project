<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>메인 인덱스</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/HRM/index.css'/>"/>
</head>
<body>
	<div class="container">
		<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
			<a href="main-calendar.do" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
				<img class="bi me-2" src="<c:url value='/images/HRM/building.svg'/>" alt="" width="30" height="30">
				ERP
			</a>
			
			<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
				<li><a href="main-calendar.do" class="nav-link px-2 link-secondary">Home</a></li>
				<li><a href="user-index.do" class="nav-link px-2 link-dark">인사관리</a></li>
				<li><a href="payroll-index.do" class="nav-link px-2 link-dark">급여관리</a></li>
				<li><a href="attendance-index.do" class="nav-link px-2 link-dark">근태관리</a></li>
			</ul>
			
			<div class="col-md-3 text-end">
				<button type="button" class="btn btn-primary">Sign-out</button>
			</div>
		</header>
	</div>
</body>
</html>