<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp";
String uid = "root"; String pass = "ch130381_M";
String sql = "SELECT U.uno, U.uname, O.* FROM user U, overtime O WHERE U.uno = O.overtime_uno";
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
	<jsp:include page="payroll-index.jsp" flush="true"/>
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
	
		<% while (rs.next()) { 
			out.println("<tr>");
			out.println("<td>" + rs.getString("uno") + "</td>");
			out.println("<td>" + rs.getString("uname") + "</td>");			 
			out.println("<td>" + rs.getString("overtime_ano") + "</td>");
			out.println("<td>" + rs.getString("odate") + "</td>");
			out.println("<td>" + rs.getString("ohour") + "</td>");
			out.println("</tr>");
		}
		%>
	</table>
<%	} catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage());
}
%>
</body>
</html>