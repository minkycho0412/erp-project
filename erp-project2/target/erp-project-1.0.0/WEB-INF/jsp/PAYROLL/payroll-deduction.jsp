<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import ="java.time.format.DateTimeFormatter" %>
<%@ page import ="java.time.temporal.ChronoUnit" %>

<% 
request.setCharacterEncoding("UTF-8"); 
String uname = request.getParameter("uname");
String month = request.getParameter("month");
String dcolno = request.getParameter("dcolno");

DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
LocalDate get = LocalDate.parse(month, formatter);
int get_year=get.getYear();
int get_month=get.getMonthValue();

String url = "jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String uid = "root"; String pass = "Q1w2e3r4!";
String sql="select * from dsalary where uname='"+uname+"' and month='"+month+"'";
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
		<h3><%=get_year%>-<%=get_month %> 공제 총액 상세</h3>
		<p>(단위: 원)</p>
		
		<section class="ftco-section">
			  <div class="container">
			    <div class="row">
			      <div class="col-md-12">
			        <div class="table-wrap">
			          <table class="table">
			            <thead class="thead-dark">
							<tr class="alert" role="alert">
								<th>사원명</th>
								<th>지각</th>
								<th>조퇴</th>
								<th>소득세</th>
								<th>주민세</th>
								<th>국민연금</th>
								<th>건강보험</th>
								<th>고용보험</th>
								<th>사우회비</th>
								<th>가불금</th>
								<th>장기요양보험</th>
								<th>공제총액</th>
							</tr>
						</thead>
		            	<tbody>
			            	<%while(rs.next()){ %>
								<tr class="alert" role="alert">
								<td><%=uname %></td>
								<%
								int dtotal=0; int num=9;
								while(true){
									dtotal+=rs.getInt(num);
								%>
								<td><%=rs.getInt(num) %></td>
								<%if(dcolno.equals(Integer.toString(num))) break;
								num++; }
								%>
								<td><%=dtotal %></td>
								<%}%>
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