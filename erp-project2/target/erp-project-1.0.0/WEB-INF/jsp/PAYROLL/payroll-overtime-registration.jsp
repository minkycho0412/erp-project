<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>초과 근무 입력</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="payroll-index.jsp" flush="true"/>
	<fieldset>
		<h2>초과 근무 등록</h2>
		<form action="payroll-overtime-registration-insert.do" method="post">
		
			<label for="uno">사원번호: </label>
			<input type="text" name="uno" /><br>
			<label for="uname">사원명: </label>
			<input type="text" name="uname" /><br>
			<label for="odate">날짜: </label>
			<input type="date" name="odate" /><br>
			<label for="ostart">근무 시작: </label>
			<input type="time" name="ostart" /><br>
			<label for="oend">근무 종료: </label>
			<input type="time" name="oend" /><br>
			총 근로시간: <br>
			<label for="aname">근무형태: </label>
			<select name="aname">
				<option value="overtime">연장근무</option>
				<option value="overnight">철야근무</option>
				<option value="overwork">특근</option>
				<option value="weekend">주말근무</option>
				<option value="night">야간근무</option>
			</select><br>
		
			<input type="submit" value="등록"/>
		</form>
	</fieldset><br><br>
	
</body>
</html>