<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import ="java.time.format.DateTimeFormatter" %>
<%@ page import ="java.time.temporal.ChronoUnit" %>
<%@ page import="java.sql.*" errorPage="error.jsp"%>

<meta charset="UTF-8">
<title>지급 총액 상세</title>

<%
request.setCharacterEncoding("UTF-8"); 
String uname = request.getParameter("uname");
String month = request.getParameter("month");
int wage = Integer.parseInt(request.getParameter("wage"));
String fcolno = request.getParameter("fcolno");

String total="select * from tsalary where uname='"+uname+"' and month='"+month+"'";
String aname="select aname from op";

DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
LocalDate get = LocalDate.parse(month, formatter);
int get_year=get.getYear();
int get_month=get.getMonthValue();

Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection
("jdbc:mysql://localhost:3306/erp?serverTimezone=UTC", "root", "");

Statement cre_total = conn.createStatement();
ResultSet rs_total = cre_total.executeQuery(total);

Statement cre_aname = conn.createStatement();
ResultSet rs_aname = cre_aname.executeQuery(aname);

%>
<h2><%=get_year%>-<%=get_month %> 지급 총액 상세</h2>
<table border="1" width="1200">
<tr> <th>사원명 <th>기본급 <th>차량유지비 <th>직책수당 <th>출산보육수당 <th>변동급수당
<%while(rs_aname.next()){ %>
<th><%=rs_aname.getString("aname") %>
<%}%> <th>지급총액
<%while(rs_total.next()){ %>
<tr align="center"> <td><%=uname %> <td><%=wage %>
<%
int ptotal=wage; int num=11;
while(true){
	ptotal+=rs_total.getInt(num);
	%><td><%=rs_total.getInt(num) %>
	<%if(fcolno.equals(Integer.toString(num))) break;
	num++;
}%> <td><%=ptotal %>
<%}%>

</table>