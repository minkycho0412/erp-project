<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String uid = "root"; String pass = "Q1w2e3r4!";
String sql = "SELECT U.uname, S.* FROM user U, salary S WHERE U.uno = S.salary_uno";
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>공제 총액 상세 정보</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/table.css'/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="payroll-index.jsp" flush="true"/>
	<div class="contents">
		<h3>공제 총액 상세 정보</h3>
		<% rs.next(); %>
		<p><%=rs.getString("year")%>년 <%=rs.getString("month")%>월</p>
		<p>(단위: 원)</p>
		
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
						</thead>
		            	<tbody>
							<tr class="alert" role="alert">
								<td><%=rs.getString("salary_uno")%></td>
								<td><%=rs.getString("uname")%></td>
								<td><%=rs.getString("itax")%></td>
								<td><%=rs.getString("rtax")%></td>
								<td><%=rs.getString("pension")%></td>
								<td><%=rs.getString("hinsurance")%></td>
								<td><%=rs.getString("einsurance")%></td>
								<td><%=rs.getString("dues")%></td>
								<td><%=rs.getString("adpayment")%></td>
								<td><%=rs.getString("ltcinsurance")%></td>
								<td><%=rs.getString("dtotal")%></td>
							</tr>
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