<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.sql.*" errorPage="/erp-project/error.do"%>
<!DOCTYPE html>
<% 
	request.setCharacterEncoding("UTF-8"); 
	String id = request.getParameter("id"); 
	String pw = request.getParameter("pw");
	String sql = "insert into login values('"+id+"','"+pw+"')";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection
	("jdbc:mysql://localhost:3306/erp?serverTimezone=UTC", "root", "1234");
	Statement stmt = conn.createStatement(); 
	stmt.executeUpdate(sql); 
	session.invalidate();
%>
<script>
alert("반갑습니다. 로그인 화면으로 이동합니다.");
location.href="/erp-project/login.do";
</script>