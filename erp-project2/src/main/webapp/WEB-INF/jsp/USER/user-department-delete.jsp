<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" errorPage="error.jsp"%>

<%
request.setCharacterEncoding("UTF-8");
String dno = request.getParameter("dno");
String dname = request.getParameter("dname");
String lowdno = request.getParameter("lowdno");
String lowdname = request.getParameter("lowdname");
String sql = "delete from dept where dno = '"+dno+"' and dname = '"+dname+
"' and lowdno = '"+lowdno+"' and lowdname = '"+lowdname+"'";

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection
("jdbc:mysql://localhost:3306/erp?serverTimezone=UTC", "root", "");
Statement stmt = conn.createStatement(); 
stmt.executeUpdate(sql);
%>
<script>
alert("삭제되었습니다.");
location.href="department.jsp";
</script>