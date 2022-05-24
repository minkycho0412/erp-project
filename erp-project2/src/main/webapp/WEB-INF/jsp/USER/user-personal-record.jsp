<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사 카드</title>
</head>
<body>
	<fieldset>
		<h2>인사카드</h2>
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
		가족정보: ${info} <br>
		
		<!-- 사원 정보 변경 페이지로 이동 -->
		<button id="modify"><a href="/erp-project/user-registration.do">수정하기</a></button>
		
		<!-- 인사 조회 페이지로 이동 -->
		<button id="confirm"><a href="/erp-project/user-inquiry.do">확인</a></button>
		<button id="print">출력</button>
	</fieldset>
</body>
</html>