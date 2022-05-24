<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사 발령 등록</title>
</head>
<body>
	<h2>인사 발령 등록</h2>
	<form method="post" action="/erp-project/user-PA-registration-success.do">
		사원코드: <input type="text" name="uno"><p>
		사원명: <input type="text" name="uname"><p>
		발령구분: <input type="text" name="pa"><p>
		발령일자: <input type="date" name="pa_date"><p>
		발령직급: <select name=pa_position>
		<option>과장 <option>대리 <option>사원
		</select><p>
		발령부서: <select name=pa_dept>
		<option>영업 <option>회계 <option>인사
		</select><p>
		<input type="submit" value="등록">
		<input type="reset" value="취소">
	</form>
</body>
</html>