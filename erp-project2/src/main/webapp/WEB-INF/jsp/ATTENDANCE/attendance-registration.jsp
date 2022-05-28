<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태(휴가) 근무 등록</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="attendance-index.jsp" flush="true"/>
	<h2>근태(휴가) 근무 등록</h2>
	<form method="post">
		근태 일자: <input type="date" id="now_date" name="attend_date"><p>
		<script>
		document.getElementById('now_date').valueAsDate = new Date();
		</script>
		사원 코드: <input type="text" name="attend-uno">
		사원명: <input type="text" name="attend-uname"><p>
		휴가 종류: <select name="aname">
		<option>연차<option>출산<option>병가
		</select> <p>
		<input type="submit" value="등록">
	</form>
</body>
</html>