<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" errorPage="error.do"%>
<!DOCTYPE html>
<% 
request.setCharacterEncoding("UTF-8"); 
String id = request.getParameter("id"); 
String pw = request.getParameter("pw");
String sql1 = "select * from login where id = '" + id + "'";
String sql2 = "select * from login where pw = '" + pw + "'";
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection
("jdbc:mysql://localhost:3306/erp?serverTimezone=UTC", "root", "1234");
Statement cre1 = conn.createStatement();
Statement cre2 = conn.createStatement(); 
ResultSet rs1 = cre1.executeQuery(sql1);
ResultSet rs2 = cre2.executeQuery(sql2);
if(rs1.next()) {
	session.setAttribute("id", id);
	if(rs2.next()){
		session.setAttribute("pw", pw);
		response.sendRedirect("main-calendar.do");//로그인 성공 연결 페이지
	} else { %>
	<script>
	alert("아이디 또는 비밀번호를 잘못 입력했습니다.");
	location.href="login.do";
	</script> <%
	}
} else { %>
	<script>
	alert("아이디 또는 비밀번호를 잘못 입력했습니다.");
	location.href="login.do";
	</script> <% 
} %>