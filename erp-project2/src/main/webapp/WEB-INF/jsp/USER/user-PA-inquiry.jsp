<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import ="java.time.format.DateTimeFormatter" %>
<%@ page import ="java.time.temporal.ChronoUnit" %>
<%@ page import="java.sql.*" errorPage="error.do"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>인사 발령 조회</title>
<body>
	<fieldset>
		<h2>Search</h2>
		<form action="" method="post">
			<label for="usearch">사원명: </label>
			<input type="text" name="uname" required> <p>
			
			<label for="issuance">발령일자: </label>
			<input type="date" name="startdate" required> 부터
			<input type="date" name="endate" required> 까지 <p>
			
			<input type="submit" value="조회">
		</form>
	</fieldset>
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
("jdbc:mysql://localhost:3306/erp?serverTimezone=UTC", "root", "");
Statement cre = conn.createStatement();
ResultSet rs = cre.executeQuery(pa);
%>
<h2> &lt<%=uname %>&gt 직원 인사 발령 조회</h2>

<table border="1" width="900">
<tr> 
<th>발령일자 <th>사원번호 <th>사원명 <th>발령구분 <th>이전직위/직급 	
<th>발령직위/직급 <th>이전부서 <th>발령부서
<%
while(rs.next()){
LocalDate get = LocalDate.parse(rs.getString("issuance"), formatter);
long diff1 = ChronoUnit.DAYS.between(date1,get);
long diff2 = ChronoUnit.DAYS.between(get,date2);
String classification = rs.getString("classification");
if(diff1>=0&diff2>=0){
if(classification.equals("부서이동")){
%>
<tr align="center">
<td><%=rs.getString("issuance") %> <td><%=rs.getString("uno") %> <td><%=uname %> 
<td><%=classification %> <td>- <td><%=rs.getString("pname") %> 
<td><%=rs.getString("pdname") %> <td><%=rs.getString("lowdname") %>

<%} else if(classification.equals("승진")) {%>
<tr align="center">
<td><%=rs.getString("issuance") %> <td><%=rs.getString("uno") %> <td><%=uname %> 
<td><%=rs.getString("classification") %> <td><%=rs.getString("pposition") %>
<td><%=rs.getString("pname") %> <td>- <td><%=rs.getString("lowdname") %>
<%}}}}%>
</table>
</html>