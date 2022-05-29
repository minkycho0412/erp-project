<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" errorPage="error.jsp"%>

<%
request.setCharacterEncoding("UTF-8");
String uno = request.getParameter("uno");
String uname = request.getParameter("uname");
String lowdname = request.getParameter("lowdname");
String pname = request.getParameter("pname");
String joindate = request.getParameter("joindate");
String email = request.getParameter("email");
String birth = request.getParameter("birth");
String birthno1 = request.getParameter("birthno1");
String birthno2 = request.getParameter("birthno2");
String birthno = birthno1+birthno2;
String addr = request.getParameter("addr");
int deduct = Integer.parseInt(request.getParameter("deduct"));
String bname = request.getParameter("bname");
String bno =request.getParameter("bno");
String bhold = request.getParameter("bhold");
String info = request.getParameter("info");

String insert = "insert into user values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
String lowdno="select lowdno from dept where lowdname='"+lowdname+"'";
String pno="select pno from position where pname='"+pname+"'";


Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection
("jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "Q1w2e3r4!");

Statement cre1 = conn.createStatement();
Statement cre2 = conn.createStatement();
ResultSet rs1 = cre1.executeQuery(lowdno);
ResultSet rs2 = cre2.executeQuery(pno);

while(rs1.next()){lowdno=rs1.getString("lowdno");}
while(rs2.next()){pno=rs2.getString("pno");}

PreparedStatement stmt = conn.prepareStatement(insert);

stmt.setString(1,uno); stmt.setString(2,uname); stmt.setString(3,lowdno);
stmt.setString(4,lowdname); stmt.setString(5,pno); stmt.setString(6,pname); 
stmt.setString(7,joindate); stmt.setString(8,email); stmt.setString(9,birth); 
stmt.setString(10,birthno); stmt.setString(11,addr); stmt.setInt(12,deduct);
stmt.setString(13,bname); stmt.setString(14,bno); stmt.setString(15,bhold); 
stmt.setString(16,info); stmt.executeUpdate();
%>
<script>
alert("등록되었습니다.");
location.href="user-registration.jsp";
</script>
