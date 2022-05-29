<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*"%>
<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp";
String uid = "root"; String pass = "ch130381_M";
String sql = "SELECT U.uname, S.* FROM user U, salary S WHERE U.uno = S.salary_uno";
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, uid, pass);
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공제 총액 상세 정보</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="payroll-index.jsp" flush="true"/>
	<h3>공제 총액 상세 정보</h3>
	<%
		rs.next();
		out.println("<p>");
		out.println(rs.getString("year") + "년");
		out.println(rs.getString("month") + "월");
		out.println("</p>"); 
	%>
	<p>(단위: 원)</p>
	
	<table width="900">
		<tr>
			<th>사원번호</th>
			<th>사원명</th>
			<th>소득세</th>
			<th>주민세</th>
			<th>국민연금</th>
			<th>건강보험</th>
			<th>고용보험</th>
			<th>사우회비</th>
			<th>가불금</th>
			<th>장기요양</th>
			<th>공제총액</th>
		</tr>
		
		<%
			out.println("<tr>");
			out.println("<td>" + rs.getString("salary_uno") + "</td>");
			out.println("<td>" + rs.getString("uname") + "</td>");
			out.println("<td>" + rs.getString("itax") + "</td>");			 
			out.println("<td>" + rs.getString("rtax") + "</td>");
			out.println("<td>" + rs.getString("pension") + "</td>");
			out.println("<td>" + rs.getString("hinsurance") + "</td>");
			out.println("<td>" + rs.getString("einsurance") + "</td>");
			out.println("<td>" + rs.getString("dues") + "</td>");
			out.println("<td>" + rs.getString("adpayment") + "</td>");
			out.println("<td>" + rs.getString("ltcinsurance") + "</td>");
			out.println("<td>" + rs.getString("dtotal") + "</td>");
			out.println("</tr>");
		%>
	</table>
<%	} catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage());
}
%>
</body>
</html>