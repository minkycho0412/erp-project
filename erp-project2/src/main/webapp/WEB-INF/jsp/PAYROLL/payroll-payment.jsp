<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*"%>

<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String uid = "root"; String pass = "Q1w2e3r4!";
String sql = "SELECT U.uname, FORMAT(B.salary, 0) AS f_salary, S.* FROM user U, base B, salary S WHERE U.uno = S.salary_uno AND B.sno = S.salary_sno";
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
<title>지급 총액 상세 정보</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/table.css'/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="payroll-index.jsp" flush="true"/>
	<div class="contents">
		<h3>지급 총액 상세 정보</h3>
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
						</thead>
		            	<tbody>
							<tr class="alert" role="alert">
								<td><%=rs.getString("salary_uno")%></td>
								<td><%=rs.getString("uname")%></td>
								<td><%=rs.getString("f_salary")%></td>
								<td><%=rs.getString("food")%></td>
								<td><%=rs.getString("vehicle")%></td>
								<td><%=rs.getString("overtime")%></td>
								<td><%=rs.getString("overnight")%></td>
								<td><%=rs.getString("overwork")%></td>
								<td><%=rs.getString("weekend")%></td>
								<td><%=rs.getString("night")%></td>
								<td><%=rs.getString("position")%></td>
								<td><%=rs.getString("maternity")%></td>
								<td><%=rs.getString("tardy")%></td>
								<td><%=rs.getString("early")%></td>
								<td><%=rs.getString("variable")%></td>
								<td><%=rs.getString("ptotal")%></td>
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