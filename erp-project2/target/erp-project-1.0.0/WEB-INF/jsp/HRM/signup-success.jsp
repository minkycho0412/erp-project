<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<% 
	request.setCharacterEncoding("UTF-8"); 
	String url = "jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	String uid = "root"; String pass = "Q1w2e3r4!";
	String id = request.getParameter("id"); 
	String pw = request.getParameter("pw");
	String sql = "INSERT INTO login VALUES(?,?)";
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url, uid, pass);
		PreparedStatement pre = conn.prepareStatement(sql); 
		pre.setString(1, id); pre.setString(2, pw);
		pre.executeUpdate(); 
		session.invalidate();
%>

<script>
	alert("반갑습니다. <%=id%>님, 로그인 화면으로 이동합니다.");
	location.href="login.do";
</script>

<%
	} catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage() + "<br><a href='main-calendar.do'>메인 화면으로 돌아가기</a>"); }
%>