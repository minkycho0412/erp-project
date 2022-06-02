<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>사원 신규 등록</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="user-index.jsp" flush="true"/>
	
	<div class="contents">
		<h2>사원 신규 등록</h2>
		<form action="user-registration-success.do" method="post">
			<label for="uno">사원번호: </label> 
			<input type="text" name="uno" required>
			<br>
			<label for="uname">사원명: </label>
			<input type="text" name="uname" required>
			<br>
			<label for="lowdname">부서: </label>
			<input type="text" name="lowdname" required>
			<br>
			<label for="pname">직급: </label>
			<input type="text" name="pname" required>
			<br>
			<label for="joindate">입사일: </label>
			<input type="date" name="joindate" required>
			<br>
			<label for="email">이메일: </label>
			<input type="email" name="email" required>
			<br>
			<label for="birth">생년월일: </label>
			<input type="text" name="birth" required>
			<br>
			<label for="birthno1">주민번호: </label>
			<input type="text" name="birthno1" size="6" required>
			-
			<input type="password" name="birthno2" size="7" required>
			<br>
			<label for="addr">주소: </label>
			<input type="text" name="addr" required>
			<br>
			<label for="deduct">공제가족수: </label>
			<input type="text" name="deduct" required>
			<br>
			<label for="bname">은행명: </label>
			<input type="text" name="bname" required>
			<br>
			<label for="bno">계좌번호: </label>
			<input type="text" name="bno" required>
			<br>
			<label for="bhold">예금주: </label>
			<input type="text" name="bhold" required>
			<br>
			<label for="info">가족정보: </label>
			<input type="text" name="info" required>
			<br><br>
			<input type="submit" value="등록하기"/> &nbsp;
			<input type="reset" value="초기화"/>
			<a href="user-inquiry.do">돌아가기</a>
		</form>
	</div>
</body>
</html>