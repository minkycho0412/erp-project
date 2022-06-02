<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*"%>

<% 
request.setCharacterEncoding("UTF-8"); 
String ano = request.getParameter("ano");
String aname = request.getParameter("aname");
String arate = request.getParameter("arate");
String aamount = request.getParameter("aamount");
String overtime = request.getParameter("overtime");
String url = "jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String uid = "root"; String pass = "Q1w2e3r4!";
String sql = "INSERT INTO op values(?, ?, ?, ?, ?)";
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, uid, pass);
	PreparedStatement pre = conn.prepareStatement(sql);
	pre.setString(1, ano); pre.setString(2, aname);
	pre.setString(3, arate); pre.setString(4, aamount);
	pre.setString(5, overtime);
	pre.executeUpdate();
%>

<script>
	alert("등록이 정상 처리 되었습니다.");
	location.href="payroll-benefit-registration.do";
</script>

<%
	} catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage() + "<br><a href='main-calendar.do'>메인 화면으로 돌아가기</a>"); }
%>