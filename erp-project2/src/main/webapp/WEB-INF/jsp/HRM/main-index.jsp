<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 인덱스</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/HRM/index.css'/>"/>
</head>

<body>
    <div class="menu" >
		<nav class="clearfix">
			<ul class="clearfix">
				<li><a href="main-calendar.do">홈</a></li>
				<li><a href="user-index.do">인사관리</a></li> 
				<li><a href="payroll-index.do">급여관리</a></li>
				<li><a href="attendance-index.do">근태관리</a></li>
			</ul>
		</nav>
    </div>
  </body>
  
</html>