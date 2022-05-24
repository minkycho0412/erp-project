<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사 조회</title>
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
			
			<label for="dname">부서검색: </label>
			<input type="text" name="dname" /><br>
			<label for="pname">직급검색: </label>
			<input type="text" name="pname" /><br>
			<label for="joindate">입사일: </label>
			<input type="date" name="startdate" /> 부터
			<input type="date" name="enddate" /> 까지
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			<input type="submit" value="조회"/>
		</form>
		<% String dname = request.getParameter("dname");
		String pname = request.getParameter("pname");
	 	%>
	</fieldset>
	<br><br>
	
	<table width="700">
	<tr>
		<th>사원번호</th>
		<th>사원명</th>
		<th>부서</th>
		<th>직급</th>
		<th>입사일</th>
		<th>이메일</th>
		<th>인사카드</th>
	</tr>
	
	<tr>
		<td><br></td>
		<td><br></td>
		<td><br></td>
		<td><br></td>
		<td><br></td>
		<td><br></td>
		<td><a href="user-personal-record.do">보기</a></td>
	</tr>
	
	<tr>
		<td><br></td>
		<td><br></td>
		<td><br></td>
		<td><br></td>
		<td><br></td>
		<td><br></td>
		<td><br></td>
	</tr>
	
	</table>
</body>
</html>