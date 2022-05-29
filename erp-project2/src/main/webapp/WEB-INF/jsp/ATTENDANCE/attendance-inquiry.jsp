<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*"%>
<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp";
String uid = "root"; String pass = "Q1w2e3r4!";
String sql = "SELECT U.uname, A.* FROM user U, attendance A WHERE U.uno = A.attend_uno";
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, uid, pass);
	PreparedStatement pre = conn.prepareStatement(sql);
	ResultSet rs = pre.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태(휴가) 조회</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="attendance-index.jsp" flush="true"/>
	<h2>근태(휴가) 조회</h2>
	<form action="" method="post">
		<label for="usearch">사원검색: </label>
		<select name="usearch">
			<option value="uno">사원번호</option>
			<option value="uname">사원명</option>
		</select>
		<input type="text" name="user" /><br>
		
		<label for="dname">부서검색: </label>
		<input type="text" name="dname"><br>
		
		<label for="dname">날짜검색: </label>
		<input type="date" name="search_date"><br>
		
		<input type="submit" value="조회">
	</form><br><br>
		
	<table width="600">
		<tr>
			<th>사원번호</th>
			<th>사원명</th>
			<th>부서명</th>
			<th>휴가 종류</th>
			<th>산정기간</th>
			<th>총 휴가일수</th>
			<th>사용한 휴가일수</th>
			<th>남은 휴가일수</th>
		</tr>
		
		<% while (rs.next()) { %>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<%
		} } catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage()); }
	%>
</body>
</html>