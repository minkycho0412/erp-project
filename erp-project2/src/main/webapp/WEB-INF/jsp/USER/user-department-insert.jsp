<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" errorPage="error.jsp"%>

<%
request.setCharacterEncoding("UTF-8");
String dno = request.getParameter("dno");
String dname = request.getParameter("dname");
String lowdno = request.getParameter("lowdno");
String lowdname = request.getParameter("lowdname");


Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection
("jdbc:mysql://localhost:3306/erp?serverTimezone=UTC", "root", "Q1w2e3r4!");
Statement stmt = conn.createStatement(); 

String sql = "insert into dept values('" + dno + "','" + dname + "','" + 
lowdno + "','" + lowdname + "')";

stmt.executeUpdate(sql);
%>
<script>
alert("등록되었습니다.");
location.href="department.jsp";
</script>