<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String uid = "root"; String pass = "Q1w2e3r4!";
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>초과 근무 조회</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/table.css'/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="payroll-index.jsp" flush="true"/>
	<div class="contents">
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
		<br><br>
		<% 
			String usearch = request.getParameter("usearch");
			String user = request.getParameter("user");
			
			pre.setString(1, user);
			pre.setString(2, user);
			ResultSet rs = pre.executeQuery();
		%>
		
		<section class="ftco-section">
			  <div class="container">
			    <div class="row">
			      <div class="col-md-12">
			        <div class="table-wrap">
			          <table class="table">
			            <thead class="thead-dark">
							<tr class="alert" role="alert">
								<th>사원번호</th>
								<th>사원명</th>
								<th>근무형태</th>
								<th>날짜</th>
								<th>시간</th>
							</tr>
						</thead>
		            	<tbody>
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
						</tbody>
			          </table>
			        </div>
			      </div>
			    </div>
			</div>
	    </section>
    </div>
	<%
		} catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage() + "<br><a href='main-calendar.do'>메인 화면으로 돌아가기</a>"); }
	%>
</body>
</html>