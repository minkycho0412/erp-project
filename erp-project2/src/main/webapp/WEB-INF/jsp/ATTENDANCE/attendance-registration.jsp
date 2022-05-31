<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>근태(휴가) 등록</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="attendance-index.jsp" flush="true"/>
	<div class="contents">
		<h2>근태(휴가) 등록</h2>
		<form action="attendance-registration-insert.do" method="post">
			근태 일자:
			<input type="date" id="now_date" name="attend_date" /><br>
			<script>
			document.getElementById('now_date').valueAsDate = new Date();
			</script>
			사원 코드:
			<input type="text" name="attend-uno" />
			사원명:
			<input type="text" name="attend-uname" /><br>
			휴가 종류:
			<select name="aname">
				<option>연차</option>
				<option>출산</option>
				<option>병가</option>
			</select><br>
			<input type="submit" value="등록">
		</form>
	</div>
</body>
</html>