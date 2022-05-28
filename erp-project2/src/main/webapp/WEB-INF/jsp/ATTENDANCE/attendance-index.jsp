<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태관리 인덱스</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/index.css'/>"/>
</head>

<body>
	<div class="menu" >
		<nav class="clearfix">
			<ul class="clearfix">
				<li><a href="main-calendar.do">홈</a></li>
				<li><a href="attendance-inquiry.do">근태(휴가) 조회</a></li> 
				<li><a href="attendance-registration.do">근태(휴가) 등록</a></li>
				<li><a href="attendance-option-registration.do">근태 항목 등록</a></li>
			</ul>
		</nav>
	</div>
</body>
  
</html>