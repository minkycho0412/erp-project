<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import ="java.time.format.DateTimeFormatter" %>
<%@ page import ="java.time.temporal.ChronoUnit" %>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>급여 조회</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/table.css'/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="payroll-index.jsp" flush="true"/>
	<div class="contents">
		<h2>Search</h2>
		<form action="" method="post">
			<label for="uname">사원명: </label>
			<input type="text" name="uname" required><br>
	
			<label for="issuance">기간조회: </label>
			<input type="month" name="startdate" required> 부터
			<input type="month" name="endate" required> 까지<br>
	
			<input type="submit" value="조회">
		</form>
<%
request.setCharacterEncoding("UTF-8"); 
String uname = request.getParameter("uname");
String startdate = request.getParameter("startdate")+"-01";
String endate = request.getParameter("endate")+"-01";
if(uname!=null){
DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
LocalDate date1 = LocalDate.parse(startdate, formatter);
LocalDate date2 = LocalDate.parse(endate, formatter);
String payroll = "select * from tsalary where uname='"+uname+"'";
String bno="select salary from base,tsalary,user where user.uname = '"+uname+"' and user.uno=base_uno limit 1";
String dsalary = "select * from dsalary where uname='"+uname+"'";
String fcolno="SELECT COUNT(*) FROM information_schema.columns WHERE table_name='tsalary'";
String dcolno="SELECT COUNT(*) FROM information_schema.columns WHERE table_name='dsalary'";
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection
("jdbc:mysql://localhost:3306/erp?serverTimezone=UTC", "root", "Q1w2e3r4!");
Statement cre1 = conn.createStatement();
ResultSet rs1 = cre1.executeQuery(bno);
while(rs1.next()){bno=rs1.getString("salary");}
int wage =Integer.parseInt(bno); 
Statement cre_fcolno = conn.createStatement();
ResultSet rs_fcolno = cre_fcolno.executeQuery(fcolno);
while(rs_fcolno.next()){fcolno=rs_fcolno.getString(1);}
Statement cre_dcolno = conn.createStatement();
ResultSet rs_dcolno = cre_dcolno.executeQuery(dcolno);
while(rs_dcolno.next()){dcolno=rs_dcolno.getString(1);}
Statement cree = conn.createStatement();
ResultSet rss = cree.executeQuery(payroll);
while(rss.next()){%>
<br>
<strong>사원번호:</strong> <%=rss.getString("tsalary_uno") %>&nbsp&nbsp 
<strong>사원명:</strong> <%=uname %>&nbsp&nbsp&nbsp 
<strong>부서명:</strong> <%=rss.getString("lowdname") %>&nbsp&nbsp&nbsp  
<strong>직급:</strong> <%=rss.getString("pname") %>
<% break;} 
%>

<section class="ftco-section">
			  <div class="container">
			    <div class="row">
			      <div class="col-md-12">
			        <div class="table-wrap">
			          <table class="table">
			            <thead class="thead-dark">
							<tr class="alert" role="alert">
								<th>귀속연월</th>
								<th>지급총액</th>
								<th>공제총액</th>
								<th>실지급액</th>
								</tr>
						</thead>
<%
Statement cre = conn.createStatement();
ResultSet rs = cre.executeQuery(payroll);
Statement cre2 = conn.createStatement();
ResultSet rs2 = cre2.executeQuery(dsalary);
int num=11, ptotal, dtotal=0;
while(rs.next()&&rs2.next()){
	
	LocalDate get = LocalDate.parse(rs.getString("month"), formatter);
	long diff1 = ChronoUnit.DAYS.between(date1,get);
	long diff2 = ChronoUnit.DAYS.between(get,date2);
	
	int get_year=get.getYear();
	int get_month=get.getMonthValue();
		
	ptotal=wage; num=11;
	if(diff1>=0&diff2>=0){
	while(true){
		ptotal+=rs.getInt(num);
		if(fcolno.equals(Integer.toString(num))) break;
		num++;
	}
	dtotal=0; num=9;
	while(true){
		dtotal+=rs2.getInt(num);
		if(dcolno.equals(Integer.toString(num))) break;
		num++;
	} 
%>
						<tbody>
							<tr class="alert" role="alert">
								<td><%out.print(get_year+"-"+get_month);%></td>
								<td><a href="payroll-payment.do?uname=<%=uname%>&month=<%=rs.getString("month")%>
								&wage=<%=wage %>&fcolno=<%=fcolno%>"><%=ptotal %></a></td>
								<td><a href="payroll-deduction.do?uname=<%=uname%>&month=<%=rs.getString("month")%>
								&dcolno=<%=dcolno%>"><%=dtotal %></a></td>
								<td><%=ptotal-dtotal %></td>
								<%}}}%>
							</tr>
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