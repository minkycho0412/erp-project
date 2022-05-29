<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*"%>
<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String uid = "root"; String pass = "Q1w2e3r4!";
String sql = "SELECT U.*, B.* FROM user U, base B WHERE U.uno = B.base_uno AND (U.uno=? OR U.uname=?)";
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, uid, pass);
	PreparedStatement pre = conn.prepareStatement(sql);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원별 기본급 입력 및 조회</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="payroll-index.jsp" flush="true"/>
	<fieldset>
		<h2>Search</h2>
		<form action="" method="post">
			<label for="usearch">사원검색: </label>
			<select name="usearch">
				<option value="uno">사원번호</option>
				<option value="uname">사원명</option>
			</select>
			<input type="text" name="user" /><br>
			<input type="submit" value="조회"/><br>
		</form>
		<% 
		String usearch = request.getParameter("usearch");
		String user = request.getParameter("user");
		
		pre.setString(1, user);
		pre.setString(2, user);
		ResultSet rs = pre.executeQuery();
		%>
	</fieldset><br><br>
	
	<form action="payroll-user-basepay-registration-update.do" method="post">
		<input type="reset" value="초기화" />
		<input type="submit" value="저장하기"/><br>
	   			
	   	<table width="700">
			<tr>
				<th>사원번호</th>
				<th>사원명</th>
				<th>부서</th>
				<th>직급</th>
				<th>기본급</th>
		
			</tr>
			
			<% while (rs.next()) { %>
				<tr>
					<td><%=rs.getString("uno")%></td>
					<td><%=rs.getString("uname")%></td>
					<td><%=rs.getString("lowdname")%></td>
					<td><%=rs.getString("pname")%></td>
					<td><input type="text" name="salary" value="<%=rs.getString("salary")%>" /></td>
				</tr>
		</table>
	</form>
	<%
		} } catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage()); }
	%>
</body>
</html>