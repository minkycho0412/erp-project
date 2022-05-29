<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp";
String uid = "root"; String pass = "Q1w2e3r4!";
String uno = request.getParameter("uno");
String uname = request.getParameter("uname");
String odate = request.getParameter("odate");
String ohour = request.getParameter("oend");
String aname = request.getParameter("aname");
String ano = request.getParameter("ano");
String sql = "INSERT INTO overtime values(?, ?, ?, 1)";
String sql2 = "SELECT ano, aname FROM op";
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, uid, pass);
	PreparedStatement pre = conn.prepareStatement(sql);
	pre.setString(1, uno); pre.setString(2, ano);
	pre.setString(3, odate);
	pre.executeUpdate();
%>
<script>
	alert("등록이 정상 처리 되었습니다.");
	location.href="payroll-overtime-registration.do";
</script>
<%	} catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage());
}
%>