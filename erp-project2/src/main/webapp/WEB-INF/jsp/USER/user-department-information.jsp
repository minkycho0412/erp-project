<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" errorPage="error.jsp"%>

<%
request.setCharacterEncoding("UTF-8"); 
String lowdname = request.getParameter("lowdname");
String dept="select uno,uname,pname,email from user where lowdname='"+lowdname+"'";

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection
("jdbc:mysql://localhost:3306/erp?serverTimezone=UTC", "root", "");

Statement cre = conn.createStatement();
ResultSet rs = cre.executeQuery(dept);
%>
<h2><%=lowdname %> 사원 정보</h2>
<table border="1" width="400">
<tr> <th>사원번호 <th>사원명 <th>직급 <th>이메일
<%while(rs.next()){%>
<tr align="center"> <td><%=rs.getString("uno") %> <td><%=rs.getString("uname") %>
<td><%=rs.getString("pname") %> <td><%=rs.getString("email") %>
<%}%>
</table>