<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>인사 카드</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="user-index.jsp" flush="true"/>
	
	<div class="contents">
		<h2>인사카드</h2>
		사원번호: <br>
		사원명: <br>
		부서: <br>
		직급: <br>
		입사일: <br>
		이메일: <br>
		생년월일: <br>
		주민번호: <br>
		주소: <br>
		공제가족수: <br>
		은행명: <br>
		계좌번호: <br>
		예금주: <br>
		가족정보: <br>
		
		<%-- <h2>인사카드</h2>
		사원번호: ${uno} <br>
		사원명: ${uname} <br>
		부서: ${dname} <br>
		직급: ${pname} <br>
		입사일: ${joindate} <br>
		이메일: ${email} <br>
		생년월일: ${birth} <br>
		주민번호: ${Fbirthno} - ${Bbirthno} <br>
		주소: ${addr} <br>
		공제가족수: ${deduct} <br>
		은행명: ${bname} <br>
		계좌번호: ${bno} <br>
		예금주: ${bhold} <br>
		가족정보: ${info} <br> --%>
		
		<button><a href="user-registration.do">수정하기</a></button>
		<button><a href="user-inquiry.do">확인</a></button>
		<button>출력</button>
	</div>
</body>
</html>