<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp";
String uid = "root"; String pass = "ch130381_M";
String sql = "SELECT U.uname, B.salary, S.* FROM user U, base B, salary S WHERE U.uno = S.salary_uno AND B.sno = S.salary_sno";
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, uid, pass);
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지급 총액 상세 정보</title>
<style>
	table, td, th {
		border : 2px solid black;
		border-collapse : collapse;
		text-align:center;
	};
</style>
</head>
<body>
	<jsp:include page="payroll-index.jsp" flush="true"/>
	<h3>지급 총액 상세 정보</h3>
	<% if(rs.next()) { 
	out.println(rs.getString("month") + "월"); %>
	<table width="1100">
		<tr>
			<th>사원명</th>
			<th>기본급</th>
			<th>식대</th>
			<th>차량유지비</th>
			<th>연장수당</th>
			<th>철야수당</th>
			<th>특근수당</th>
			<th>주말근무</th>
			<th>야간근로</th>
			<th>직책수당</th>
			<th>출산보육수당</th>
			<th>지각</th>
			<th>조퇴</th>
			<th>변동급수당</th>
			<th>지급총액</th>
			
		</tr>
		
		<%
		
			out.println("<tr>");
			out.println("<td>" + rs.getString("uname") + "</td>");
			out.println("<td>" + rs.getString("salary") + "</td>");			 
			out.println("<td>" + rs.getString("food") + "</td>");
			out.println("<td>" + rs.getString("vehicle") + "</td>");
			out.println("<td>" + rs.getString("overtime") + "</td>");
			out.println("<td>" + rs.getString("overnight") + "</td>");
			out.println("<td>" + rs.getString("overwork") + "</td>");
			out.println("<td>" + rs.getString("weekend") + "</td>");
			out.println("<td>" + rs.getString("night") + "</td>");
			out.println("<td>" + rs.getString("position") + "</td>");
			out.println("<td>" + rs.getString("maternity") + "</td>");
			out.println("<td>" + rs.getString("tardy") + "</td>");
			out.println("<td>" + rs.getString("early") + "</td>");
			out.println("<td>" + rs.getString("variable") + "</td>");
			out.println("<td>" + rs.getString("ptotal") + "</td>");
			out.println("</tr>");
		}
		%>
	</table>
<%	} catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage());
}
%>
</body>
</html>