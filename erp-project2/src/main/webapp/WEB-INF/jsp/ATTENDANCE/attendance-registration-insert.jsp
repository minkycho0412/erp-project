<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String uid = "root"; String pass = "Q1w2e3r4!";
String sql = "INSERT INTO attendance VALUES(?, ?, ?, ?, ?, ?)";
String attend_uno = request.getParameter("attend_uno");
String attend_rname = request.getParameter("attend_rname");
String cperiod = request.getParameter("cperiod");
String Vtotalday = request.getParameter("Vtotalday");
String Vuseday = request.getParameter("Vuseday");
String Vrestday = request.getParameter("Vrestday");
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, uid, pass);
	PreparedStatement pre = conn.prepareStatement(sql);
	pre.setString(1, attend_uno); pre.setString(2, attend_rname);
	pre.setString(3, cperiod); pre.setString(4, Vtotalday);
	pre.setString(5, Vuseday); pre.setString(6, Vrestday);
	pre.executeUpdate();
%>
<script>
	alert("등록이 정상 처리 되었습니다.");
	location.href="attendance-registration.do";
</script>
<%
	} catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage() + "<br><a href='main-calendar.do'>메인 화면으로 돌아가기</a>"); }
%>