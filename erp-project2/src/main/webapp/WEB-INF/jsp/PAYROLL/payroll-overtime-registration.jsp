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
			총 근로시간: (자동계산)<br>
			<label for="asearch">근무형태: </label>
			<select name="asearch">
				<option value="aname">연장근무</option>
				<option value="aname">철야근무</option>
				<option value="aname">특근</option>
				<option value="aname">주말근무</option>
				<option value="aname">야간근무</option>
			</select><br>
			
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			<input type="submit" value="등록"/>
		</form>
	</fieldset>
	<br><br>
	
</body>
</html>