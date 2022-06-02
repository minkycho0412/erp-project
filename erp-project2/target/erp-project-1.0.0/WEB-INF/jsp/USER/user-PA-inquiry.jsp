<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import ="java.time.format.DateTimeFormatter" %>
<%@ page import ="java.time.temporal.ChronoUnit" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>인사 발령 조회</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/table.css'/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
<link href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,700" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<body>
	<jsp:include page="user-index.jsp" flush="true"/>
	<div class="contents">
		<h2>Search</h2>
		<form action="" method="post">
			<label for="usearch">사원명: </label>
			<input type="text" name="uname" required> <br>
			<label for="issuance">발령일자: </label>
			<input type="date" name="startdate" required> 부터
			<input type="date" name="endate" required> 까지 <br>
			
			<input type="submit" value="조회"/>
		</form>
		<br><br>
		
		<% 
			request.setCharacterEncoding("UTF-8"); 
			String uname = request.getParameter("uname");
			String startdate = request.getParameter("startdate");
			String endate = request.getParameter("endate");
			String pa = "select issuance,uno,classification,pposition,pname,pdname,lowdname " 
			+ "from user u,pa where u.uname='"+uname+"' and u.uno=pa_uno";
			if(uname!=null){
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			LocalDate date1 = LocalDate.parse(startdate, formatter);
			LocalDate date2 = LocalDate.parse(endate, formatter);
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection
			("jdbc:mysql://localhost:3306/erp?serverTimezone=UTC", "root", "Q1w2e3r4!");
			Statement cre = conn.createStatement();
			ResultSet rs = cre.executeQuery(pa);
		%>
		
		<h2> &lt<%=uname %>&gt 직원 인사 발령 조회</h2>
		
		<section class="ftco-section">
				  <div class="container">
				    <div class="row">
				      <div class="col-md-12">
				        <div class="table-wrap">
				          <table class="table">
				            <thead class="thead-dark">
								<tr class="alert" role="alert">
									<th>발령일자</th>
									<th>사원번호</th>
									<th>사원명</th>
									<th>발령구분</th>
									<th>이전직위/직급</th>
									<th>발령직위/직급</th>
									<th>이전부서</th>
									<th>발령부서</th>
								</tr>
							</thead>
							
			            	<tbody>
								<%
								while(rs.next()){
								LocalDate get = LocalDate.parse(rs.getString("issuance"), formatter);
								long diff1 = ChronoUnit.DAYS.between(date1,get);
								long diff2 = ChronoUnit.DAYS.between(get,date2);
								String classification = rs.getString("classification");
								if(diff1>=0&diff2>=0){
								if(classification.equals("부서이동")){
								%>
								<tr class="alert" role="alert">
									<td><%=rs.getString("issuance") %></td>
									<td><%=rs.getString("uno") %></td>
									<td><%=uname %></td>
									<td><%=classification %></td>
									<td>-</td>
									<td><%=rs.getString("pname") %></td>
									<td><%=rs.getString("pdname") %></td>
									<td><%=rs.getString("lowdname") %></td>
								</tr>
									
									<%} else if(classification.equals("승진")) {%>
									<tr class="alert" role="alert">
										<td><%=rs.getString("issuance") %> <td><%=rs.getString("uno") %> <td><%=uname %> 
										<td><%=rs.getString("classification") %> <td><%=rs.getString("pposition") %>
										<td><%=rs.getString("pname") %> <td>- <td><%=rs.getString("lowdname") %>
									</tr>
									<%}}}}%>
							</tbody>
				          </table>
				        </div>
				      </div>
				    </div>
				</div>
		</section>
	</div>
</body>
</html>