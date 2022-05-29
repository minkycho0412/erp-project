<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*"%>
<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp";
String uid = "root"; String pass = "ch130381_M";
String sql = "SELECT U.uno, U.uname, P.aname, O.odate, O.ohour FROM user U, op P, overtime O WHERE U.uno = O.overtime_uno AND P.ano = O.overtime_ano AND (U.uno=? OR U.uname=?)";
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, uid, pass);
	PreparedStatement pre = conn.prepareStatement(sql);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>초과 근무 조회</title>
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
			
			<label for="aname">근무형태: </label>
			<select name="aname">
				<option value="no">선택</option>
				<option value="overtime">연장근무</option>
				<option value="overnight">철야근무</option>
				<option value="overwork">특근</option>
				<option value="weekend">주말근무</option>
				<option value="night">야간근무</option>
			</select><br>
			
			<label for="odate">날짜조회: </label>
			<input type="date" name="odate"/><br>
			<input type="submit" value="조회"/>
		</form>
		<% 
		String usearch = request.getParameter("usearch");
		String user = request.getParameter("user");
		
		pre.setString(1, user);
		pre.setString(2, user);
		ResultSet rs = pre.executeQuery();
		%>
	</fieldset><br><br>
	
	<table width="500">
		<tr>
			<th>사원번호</th>
			<th>사원명</th>
			<th>근무형태</th>
			<th>날짜</th>
			<th>시간</th>
		</tr>
	
		<% while (rs.next()) { 
			out.println("<tr>");
			out.println("<td>" + rs.getString("uno") + "</td>");
			out.println("<td>" + rs.getString("uname") + "</td>");			 
			out.println("<td>" + rs.getString("aname") + "</td>");
			out.println("<td>" + rs.getString("odate") + "</td>");
			out.println("<td>" + rs.getString("ohour") + "</td>");
			out.println("</tr>");
		}
		%>
	</table>
	<%
		} catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage()); }
	%>
</body>
</html>