<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String uid = "root"; String pass = "Q1w2e3r4!";
String dno = request.getParameter("dno");
String dname = request.getParameter("dname");
String lowdno = request.getParameter("lowdno");
String lowdname = request.getParameter("lowdname");
String sql = "delete from dept where dno = '"+dno+"' and dname = '"+dname+"' and lowdno = '"+lowdno+"' and lowdname = '"+lowdname+"'";

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, uid, pass);
	Statement stmt = conn.createStatement();
	stmt.executeUpdate(sql);
%>

<script>
	alert("삭제되었습니다.");
	location.href="user-department.do";
</script>

<%
	} catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage() + "<br><a href='main-calendar.do'>메인 화면으로 돌아가기</a>"); }
%>