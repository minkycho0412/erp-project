<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String uid = "root"; String pass = "Q1w2e3r4!";
String sql = "INSERT INTO pa VALUES(?, ?, ?, ?, ?)";
String issuance = request.getParameter("issuance");
String pa_uno = request.getParameter("pa_uno");
String classification = request.getParameter("classification");
String pposition = request.getParameter("pposition");
String pdname = request.getParameter("pdname");



try {
   Class.forName("com.mysql.cj.jdbc.Driver");
   Connection conn = DriverManager.getConnection(url, uid, pass);
   PreparedStatement pre = conn.prepareStatement(sql);
   pre.setString(1, issuance); 
   pre.setString(2, pa_uno);
   pre.setString(3, classification);
   pre.setString(4, pposition);
   pre.setString(5, pdname);
   pre.executeUpdate();
%>

<script>
   alert("등록되었습니다.");
   location.href="user-PA-registration.do";
</script>

<%
   } catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage() + "<br><a href='main-calendar.do'>메인 화면으로 돌아가기</a>"); }
%>