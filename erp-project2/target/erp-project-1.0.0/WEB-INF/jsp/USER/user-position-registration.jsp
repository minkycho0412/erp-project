<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직급 등록</title>
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
		<h2>직급 등록</h2>
		<form action="" method="post">
			<label for="pno">직급코드: </label>
			<input type="text" name="pno" required/> &emsp;
			<label for="pname">직급명: </label>
			<input type="text" name="pname" required/> &emsp;
			<input type="submit" value="등록"/>
		</form>
		<% String pno = request.getParameter("pno");
	   String pname = request.getParameter("pname");
	   %>
	</fieldset>
	<br><br><br>
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	
	<button>수정</button>&emsp;&emsp;
   	<button>삭제</button>
   	<br><br>
   	
	<table width="300">
		<tr>
			<th>선택</th>
			<th>직급코드</th>
			<th>직급명</th>
		</tr>
		
		<tr>
			<td><input type = "checkbox" value = "on"><br></td>
			<td><%= pno %><br></td>
			<td><%= pname %><br></td>
		</tr>
		
		<tr>
			<td><input type = "checkbox" value = "on"> <br></td>
			<td><br></td>
			<td><br></td>
		</tr>
		
		<tr>
			<td><input type = "checkbox" value = "on"> <br></td>
			<td><br></td>
			<td><br></td>
		</tr>
		
		<tr>
			<td><input type = "checkbox" value = "on"> <br></td>
			<td><br></td>
			<td><br></td>
		</tr>
		
		<tr>
			<td><input type = "checkbox" value = "on"> <br></td>
			<td><br></td>
			<td><br></td>
		</tr>
		
		<tr>
			<td><input type = "checkbox" value = "on"> <br></td>
			<td><br></td>
			<td><br></td>
		</tr>
		
		<tr>
			<td><input type = "checkbox" value = "on"><br></td>
			<td><br></td>
			<td><br></td>
		</tr>
	</table>
</body>
</html>