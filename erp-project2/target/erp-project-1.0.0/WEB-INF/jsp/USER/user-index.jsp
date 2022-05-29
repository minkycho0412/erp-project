<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사관리 인덱스</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/index.css'/>"/>
</head>

<body>
	<div class="menu" >
		<nav class="clearfix">
			<ul class="clearfix">
				<li><a href="main-calendar.do">홈</a></li>
				<li><a href="user-inquiry.do">인사조회</a></li> 
				<li><a href="user-personal-record.do">인사카드</a></li>
				<li><a href="user-registration.do">사원 신규 등록</a></li>
				<li><a href="user-PA-inquiry.do">인사 발령 조회</a></li>
				<li><a href="user-PA-registration.do">인사 발령 등록</a></li>
				<li><a href="user-department.do">부서관리</a></li>
				<li><a href="user-position-registration.do">직급관리</a></li>
			</ul>
		</nav>
	</div>
</body>
  
</html>