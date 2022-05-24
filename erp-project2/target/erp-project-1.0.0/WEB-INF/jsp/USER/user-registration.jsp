<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 신규 등록</title>
</head>
<body>
	<fieldset>
		<h2>사원 신규 등록</h2>
		<br />
		<form action="/erp-project/user-personal-record.do" method="post">
			<!-- required 전체에 추가하기 -->
			<label for="uno">사원번호: </label> 
			<input type="text" name="uno" />
			<br>
			<label for="uname">사원명: </label>
			<input type="text" name="uname" />
			<br>
			<label for="dname">부서: </label>
			<input type="text" name="dname" />
			<br>
			<label for="pname">직급: </label>
			<input type="text" name="pname" />
			<br>
			<label for="joindate">입사일: </label>
			<input type="date" name="joindate" />
			<br>
			<label for="email">이메일: </label>
			<input type="email" name="email" />
			<br>
			<label for="birth">생년월일: </label>
			<input type="date" name="birth" />
			<br>
			<label for="birthno">주민번호: </label>
			<input type="text" name="Fbirthno" size="6" />
			-
			<input type="password" name="Bbirthno" size="7" />
			<br>
			<label for="addr">주소: </label>
			<input type="text" name="addr" />
			<br>
			<label for="deduct">공제가족수: </label>
			<input type="text" name="deduct" />
			<br>
			<label for="bname">은행명: </label>
			<input type="text" name="bname" />
			<br>
			<label for="bno">계좌번호: </label>
			<input type="text" name="bno" />
			<br>
			<label for="bhold">예금주: </label>
			<input type="text" name="bhold" />
			<br>
			<label for="info">가족정보: </label>
			<input type="text" name="info" />
			<br><br>
			<input type="submit" value="등록하기"/> &nbsp;
			<input type="reset" value="초기화"/>
			<a href="/erp-project/user-inquiry.do">돌아가기</a>
		</form>
	</fieldset>
</body>
</html>