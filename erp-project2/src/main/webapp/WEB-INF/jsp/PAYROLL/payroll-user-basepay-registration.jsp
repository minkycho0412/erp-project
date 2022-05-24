<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원별 기본급 입력 및 조회</title>
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
			<input type="text" name="usearch" />
			&ensp;
			<input type="submit" value="조회"/>
			</form>
			<br><br>			
	</fieldset>
			<br><br>
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			<button>초기화</button>
   			<button>저장하기</button>
   			<br>
   			<table width="700">
	<tr>
		<th>사원번호</th>
		<th>사원명</th>
		<th>부서</th>
		<th>직급</th>
		<th>기본급</th>

	</tr>
	
	<tr>
		<td><br></td>
		<td><br></td>
		<td><br></td>
		<td><br></td>
		<td><br></td>

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