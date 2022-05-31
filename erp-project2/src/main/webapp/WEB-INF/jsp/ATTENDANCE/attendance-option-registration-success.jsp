<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
request.setCharacterEncoding("UTF-8");
String rname = request.getParameter("rname");
String time = request.getParameter("time");
String slife = "1";
String Wtype = request.getParameter("Wtype");
String criterion = request.getParameter("criterion");
String Ustatus = request.getParameter("Ustatus"); 
String url = "jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String uid = "root"; String pass = "Q1w2e3r4!";
String sql = "insert into alist values(?,?,?,?,?,?)";
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, uid, pass);
	PreparedStatement pre = conn.prepareStatement(sql);
	
	pre.setString(1,rname); pre.setString(2,time); pre.setString(3,slife);
	pre.setString(4,Wtype); pre.setString(5,criterion); pre.setString(6,Ustatus);
	pre.executeUpdate();
%>

<script>
	alert("등록되었습니다.");
	location.href="attendance-option-registration.do";
</script>

<%
	} catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage() + "<br><a href='main-calendar.do'>메인 화면으로 돌아가기</a>"); }
%>