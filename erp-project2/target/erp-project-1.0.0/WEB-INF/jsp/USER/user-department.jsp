<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서 등록</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="user-index.jsp" flush="true"/>
	
	<div class="contents">
		<fieldset>
			<h2>부서 등록</h2>
			<form action="" method="post">
				<label for="dno">부서코드: </label>
				<input type="text" name="dno" required/>
				<label for="dname">부서명: </label>
				<input type="text" name="dname" required/>&emsp;
				<input type="submit" value="등록"/>
			</form>
			<% String dno = request.getParameter("dno");
			String dname = request.getParameter("dname");
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
				<th>부서코드</th>
				<th>부서명</th>
			</tr>
			
			<tr>
				<td><input type = "checkbox" value = "on"></td>
				<td><%= dno %></td>
				<td><a href="user-sub-department.do"><%= dname %></a></td>
			</tr>
			
			<tr>
				<td><input type = "checkbox" value = "on"></td>
				<td><br></td>
				<td><br></td>
			</tr>
			
			<tr>
				<td><input type = "checkbox" value = "on"></td>
				<td><br></td>
				<td><br></td>
			</tr>
			
			<tr>
				<td><input type = "checkbox" value = "on"></td>
				<td><br></td>
				<td><br></td>
			</tr>
			
			<tr>
				<td><input type = "checkbox" value = "on"></td>
				<td><br></td>
				<td><br></td>
			</tr>
			
			<tr>
				<td><input type = "checkbox" value = "on"></td>
				<td><br></td>
				<td><br></td>
			</tr>
		</table>
	</div>
</body>
</html>