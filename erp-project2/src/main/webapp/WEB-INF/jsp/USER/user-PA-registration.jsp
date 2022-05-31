<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>인사 발령 등록</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="user-index.jsp" flush="true"/>
	
	<div class="contents">
		<h2>인사 발령 등록</h2>
		<form method="post" action="user-PA-registration-success.do">
			<label for="uno">사원코드: </label>
			<input type="text" name="uno"><br>
			<label for="uname">사원명: </label>
			<input type="text" name="uname"><br>
			<label for="pa">발령구분: </label>
			<input type="text" name="pa"><br>
			<label for="pa_date">발령일자: </label>
			<input type="date" name="pa_date"><br>
			<label for="pa_position">발령직급: </label>
			<select name="pa_position">
				<option>과장</option>
				<option>대리</option>
				<option>사원</option>
			</select><br>
			<label for="pa_dept">발령부서: </label>
			<select name="pa_dept">
				<option>영업</option>
				<option>회계</option>
				<option>인사</option>
			</select><br>
			<input type="submit" value="등록">
			<input type="reset" value="초기화">
		</form>
	</div>
</body>
</html>