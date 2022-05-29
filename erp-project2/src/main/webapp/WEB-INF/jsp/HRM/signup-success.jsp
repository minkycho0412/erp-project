<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% 
	request.setCharacterEncoding("UTF-8"); 
	String url = "jdbc:mysql://localhost:3306/erp";
	String uid = "root"; String pass = "0000";
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
<%	} catch (Exception e) { out.print("죄송합니다. 회원 등록 중 문제가 생겼습니다. <br>" + e.getMessage());
}
%>