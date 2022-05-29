<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp";
String uid = "root"; String pass = "Q1w2e3r4!";
String id = request.getParameter("id"); 
String pw = request.getParameter("pw");
String sql1 = "select * from login where id = '" + id + "'";
String sql2 = "select * from login where pw = '" + pw + "'";
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, uid, pass);
	Statement cre1 = conn.createStatement();
	Statement cre2 = conn.createStatement(); 
	ResultSet rs1 = cre1.executeQuery(sql1);
	ResultSet rs2 = cre2.executeQuery(sql2);
	
	if(rs1.next()) {
		session.setAttribute("id", id);
		
		if(rs2.next()) {
			session.setAttribute("pw", pw);
			response.sendRedirect("main-calendar.do");
		} else { %>
			<script>
				alert("비밀번호를 확인해주세요.");
				location.href="login.do";
			</script>
		<% }
		
	} else { %>
		<script>
			alert("존재하지 않는 아이디입니다.");
			location.href="login.do";
		</script>
	<%  }
	
} catch (Exception e) { 
	out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage());
} 
%>