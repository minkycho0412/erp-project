<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" errorPage="error.jsp"%>

<%
request.setCharacterEncoding("UTF-8");
String pno = request.getParameter("pno");
String pname = request.getParameter("pname");
String sql = "insert into position values('" + pno + "','" + pname + "')";

Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection
("jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "Q1w2e3r4!");
Statement stmt = conn.createStatement(); 
stmt.executeUpdate(sql);
%>
<script>
alert("등록되었습니다.");
location.href="position.jsp";
</script>