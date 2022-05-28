<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>급여관리 인덱스</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/index.css'/>"/>
</head>

<body>
	<div class="menu" >
		<nav class="clearfix">
			<ul class="clearfix">
				<li><a href="main-calendar.do">홈</a></li>
				<li><a href="payroll-inquiry.do">급여 조회</a></li>
				<li><a href="payroll-payment.do">지급 총액 상세</a></li>
				<li><a href="payroll-deduction.do">공제 총액 상세</a></li>
				<li><a href="payroll-overtime-inquiry.do">초과 근무 조회</a></li>
				<li><a href="payroll-overtime-registration.do">초과 근무 입력</a></li>
				<li><a href="payroll-user-basepay-registration.do">사원별 기본급 입력</a></li>
				<li><a href="payroll-dp-basepay-registration.do">부서/직급별 기본급 입력</a></li>
				<li><a href="payroll-benefit-registration.do">수당 비율 등록</a></li>
			</ul>
		</nav>
	</div>
</body>
</html>