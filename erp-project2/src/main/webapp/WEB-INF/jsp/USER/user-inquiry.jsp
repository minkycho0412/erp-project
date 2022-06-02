<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import ="java.time.format.DateTimeFormatter" %>
<%@ page import ="java.time.temporal.ChronoUnit" %>

<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String uid = "root"; String pass = "Q1w2e3r4!";
String sql = "SELECT email, uno, uname, lowdname, pname, joindata FROM user WHERE (uno=? OR uname=?) AND lowdname=? AND pname=?";


try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection conn = DriverManager.getConnection(url, uid, pass);
      PreparedStatement pre = conn.prepareStatement(sql);
      %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>인사 조회</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/table.css'/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
   <jsp:include page="user-index.jsp" flush="true"/>
   <div class="contents">
      <h2>Search</h2>
      <form action="" method="post">
         <label for="user">사원검색: </label>
         <input type="text" name="user" placeholder="사원번호 또는 사원명" required/><br>      
         <label for="lowdname">부서검색: </label>
         <input type="text" name="lowdname" /><br>
         <label for="pname">직급검색: </label>
         <input type="text" name="pname" /><br>
         <label for="joindate">입사일: </label>
         <input type="date" name="startdate" /> 부터
         <input type="date" name="enddate" /> 까지 <br>
         <input type="submit" value="조회"/>
      </form>
      <% 
      String user = request.getParameter("user");
      String lowdname = request.getParameter("lowdname");
      String pname = request.getParameter("pname");
      String startdate = request.getParameter("startdate");
      String enddate = request.getParameter("enddate");
      DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
      LocalDate date1 = LocalDate.parse(startdate, formatter);
      LocalDate date2 = LocalDate.parse(enddate, formatter);
      
      pre.setString(1, user);
      pre.setString(2, user);
      pre.setString(3, lowdname);
      pre.setString(4, pname);
      ResultSet rs = pre.executeQuery();
      %>
      <br><br>
      
      <section class="ftco-section">
           <div class="container">
             <div class="row">
               <div class="col-md-12">
                 <div class="table-wrap">
                   <table class="table">
                     <thead class="thead-dark">
                     <tr class="alert" role="alert">
                        <th>사원번호</th>
                        <th>사원명</th>
                        <th>부서</th>
                        <th>직급</th>
                        <th>입사일</th>
                        <th>이메일</th>
                        <th>인사카드</th>
                     </tr>
                  </thead>
                     <tbody>
                           <%
                        while(rs.next()){
                        LocalDate get = LocalDate.parse(rs.getString("joindata"), formatter);
                        long diff1 = ChronoUnit.DAYS.between(date1,get);
                        long diff2 = ChronoUnit.DAYS.between(get,date2);
                        if(diff1>=0&diff2>=0){
                        %>
                        
                     <tr class="alert" role="alert">
                        <td><%=rs.getString("uno") %> <br></td>
                        <td><%=rs.getString("uname") %><br></td>
                        <td><%=rs.getString("lowdname") %><br></td>
                        <td><%=rs.getString("pname") %><br></td>
                        <td><%=rs.getString("joindata") %><br></td>
                        <td><%=rs.getString("email") %><br></td>
                        <td><a href="user-personal-record.do">보기</a></td>
                     </tr>
                     <% }} %>
                  </tbody>
                   </table>
                 </div>
               </div>
             </div>
         </div>
       </section>
    </div>
    <script src="<c:url value='/js/jquery.min.js'/>"></script>
    <script src="<c:url value='/js/bootstrap/popper'/>"></script>
    <script src="<c:url value='/js/bootstrap/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/js/main.js'/>"></script>
    <%
      } catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage() + "<br><a href='main-calendar.do'>메인 화면으로 돌아가기</a>"); }
   %>
</body>
</html>