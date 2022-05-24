<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>초과 근무 조회</title>
<style>
	table, td, th {
		border : 2px solid black;
		border-collapse : collapse;
		text-align:center;
	};
</style>
</head>
<body>
	<fieldset>
	<h2>Search</h2>
	<form action="" method="post">
		<label for="usearch">사원검색: </label>
		<select name="usearch">
			<option value="uno">사원번호</option>
			<option value="uname">사원명</option>
		</select>
		<input type="text" name="usearch" /><br>
		
		<label for="asearch">근무형태: </label>
		<select name="asearch">
			<option value="aname">연장근무</option>
			<option value="aname">철야근무</option>
			<option value="aname">특근</option>
			<option value="aname">주말근무</option>
			<option value="aname">야간근무</option>
		</select><br>
		
		<label for="odate">날짜조회: </label>
		<input type="date" name="odate" />
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<input type="submit" value="조회"/>
	</form>
	</fieldset>
	<br><br>
	
	<table width="500">
		<tr>
			<th>사원번호</th>
			<th>사원명</th>
			<th>근무형태</th>
			<th>날짜</th>
			<th>시간</th>
		</tr>
	
		<tr>
			<td><br></td>
			<td><br></td>
			<td><br></td>
			<td><br></td>
			<td><br></td>
		</tr>
	</table>
</body>
</html>