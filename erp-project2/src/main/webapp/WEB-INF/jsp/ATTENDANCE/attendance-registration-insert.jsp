<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp";
String uid = "root"; String pass = "Q1w2e3r4!";
String sql = "INSERT INTO attendance VALUES(?, ?, ?, ?, ?, ?)";
String attend_uno = request.getParameter("attend_uno");
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, uid, pass);
	PreparedStatement pre = conn.prepareStatement(sql);
	pre.setString(1, attend_uno); pre.setString(2, attend_uno);
	pre.setString(3, attend_uno); pre.setString(4, attend_uno);
	pre.setString(5, attend_uno); pre.setString(6, attend_uno);
	pre.executeUpdate();
%>
<script>
	alert("등록이 정상 처리 되었습니다.");
	location.href="attendance-registration.do";
</script>
<%	} catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage());
}
%>