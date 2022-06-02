<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.sql.*"%>

<%
request.setCharacterEncoding("UTF-8");
String uno = "0501101";
String dno = request.getParameter("dno");
String pno = request.getParameter("pno");
String sno = request.getParameter("sno");
int salary = Integer.parseInt(request.getParameter("salary"));
String url = "jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String uid = "root"; String pass = "Q1w2e3r4!";
String sql = "insert into base values(?,?,?,?,?)";

try {
   Class.forName("com.mysql.cj.jdbc.Driver");
   Connection conn = DriverManager.getConnection(url, uid, pass);
   PreparedStatement pre = conn.prepareStatement(sql);
   
   pre.setString(1,uno);
   pre.setString(2,dno); pre.setString(3,pno); 
   pre.setString(4,sno); pre.setInt(5,salary);
   pre.executeUpdate();
%>

<script>
   alert("등록되었습니다.");
   location.href="payroll-dp-basepay-registration.do";
</script>

<%
   } catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage() + "<br><a href='main-calendar.do'>메인 화면으로 돌아가기</a>"); }
%>