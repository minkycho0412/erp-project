<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태 항목 등록</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="attendance-index.jsp" flush="true"/>
	<h2>근태 항목 등록</h2>
	<form method="post" action="attendance-option-registration-success.do">
	휴가명: <input type="text" name="rname"><p>
	사용 기간: <input type="date" name="adate1">
	~ <input type="date" name="adate2"><p>
	일/시간: <input type="text" name="time"><p>
	근무 유형: <input type="text" name="aname"><p>
	인정 기준: <input type="text" name="criterion"><p>
	<input type="submit" value="등록"><p>
	</form>
</body>
</html>