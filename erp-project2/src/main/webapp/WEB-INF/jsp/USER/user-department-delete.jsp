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

Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection
("jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "Q1w2e3r4!");
Statement stmt = conn.createStatement(); 
stmt.executeUpdate(sql);
%>
<script>
alert("삭제되었습니다.");
location.href="department.jsp";
</script>