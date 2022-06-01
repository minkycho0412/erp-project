<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String uid = "root"; String pass = "Q1w2e3r4!";
String uno = request.getParameter("uno");
String uname = request.getParameter("uname");
String odate = request.getParameter("odate");
String ostart = request.getParameter("ostart");
String oend = request.getParameter("oend");
String ohour = "1";
String aname = request.getParameter("aname");
String ano = "02";
String sql = "INSERT INTO overtime values(?, ?, ?, ?)";
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, uid, pass);
	PreparedStatement pre = conn.prepareStatement(sql);
	pre.setString(1, uno); pre.setString(2, ano);
	pre.setString(3, odate); pre.setString(4, ohour);
	pre.executeUpdate();
%>

<script>
	alert("등록이 정상 처리 되었습니다.");
	location.href="payroll-overtime-registration.do";
</script>

<%
	} catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage() + "<br><a href='main-calendar.do'>메인 화면으로 돌아가기</a>"); }
%>