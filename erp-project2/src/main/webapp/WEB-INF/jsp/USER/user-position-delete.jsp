<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" errorPage="error.jsp"%>

<%
request.setCharacterEncoding("UTF-8");
String pno = request.getParameter("pno");
String pname = request.getParameter("pname");
String sql = "delete from position where pno = '"+pno+"' and pname = '"+pname+"'";

Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection
("jdbc:mysql://localhost:3306/erp?serverTimezone=UTC", "root", "");
Statement stmt = conn.createStatement(); 
stmt.executeUpdate(sql);
%>
<script>
alert("삭제되었습니다.");
location.href="position.jsp";
</script>