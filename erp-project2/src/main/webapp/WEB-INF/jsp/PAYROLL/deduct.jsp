<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import ="java.time.format.DateTimeFormatter" %>
<%@ page import ="java.time.temporal.ChronoUnit" %>
<%@ page import="java.sql.*" errorPage="error.jsp"%>

<meta charset="UTF-8">
<title>공제 총액 상세</title>

<%
request.setCharacterEncoding("UTF-8"); 
String uname = request.getParameter("uname");
String month = request.getParameter("month");
String dcolno = request.getParameter("dcolno");

String total="select * from dsalary where uname='"+uname+"' and month='"+month+"'";

DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
LocalDate get = LocalDate.parse(month, formatter);
int get_year=get.getYear();
int get_month=get.getMonthValue();

Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection
("jdbc:mysql://localhost:3306/erp?serverTimezone=UTC", "root", "");

Statement cre_total = conn.createStatement();
ResultSet rs_total = cre_total.executeQuery(total);

%>
<h2><%=get_year%>-<%=get_month %> 공제 총액 상세</h2>
<table border="1" width="1200">
<tr> <th>사원명 <th>지각 <th>조퇴 <th>소득세 <th>주민세 <th>국민연금 
<th>건강보험 <th>고용보험 <th>사우회비 <th>가불금 <th>장기요양보험 <th>공제총액
<%while(rs_total.next()){ %>
<tr align="center"> <td><%=uname %>
<%
int dtotal=0; int num=9;
while(true){
	dtotal+=rs_total.getInt(num);
	%><td><%=rs_total.getInt(num) %>
	<%if(dcolno.equals(Integer.toString(num))) break;
	num++;
}%> <td><%=dtotal %>
<%}%>
</table>