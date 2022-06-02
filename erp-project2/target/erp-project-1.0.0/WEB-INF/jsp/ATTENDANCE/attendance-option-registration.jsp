<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>근태 항목 등록</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="attendance-index.jsp" flush="true"/>
	<div class="contents">
		<h2>근태 항목 등록</h2>
		<form method="post" action="attendance-option-registration-success.do">
			<label for="rname">휴가명: </label>
			<input type="text" name="rname"><br>
			<label for="time">일/시간: </label>
			<input type="text" name="time"><br>
			<label for="slife">사용 기간: </label>
			<input type="date" name="adate1"> ~ 
			<input type="date" name="adate2"><br>
			<label for="Wtype">근무 유형: </label>
			<input type="text" name="Wtype"><br>
			<label for="criterion">인정 기준: </label>
			<input type="text" name="criterion"><br>
			<label for="Ustatus">사용 여부: </label>
			<input type="text" name="Ustatus"><br>
			<input type="submit" value="등록">
		</form>
	</div>
</body>
</html>