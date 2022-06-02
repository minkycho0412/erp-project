<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*"%>

<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String uid = "root"; String pass = "Q1w2e3r4!";
String sql = "SELECT pname from position";
String sql2 = "SELECT lowdname from dept";

try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection conn = DriverManager.getConnection(url, uid, pass);
      Statement cre_pname = conn.createStatement();
      ResultSet rs_pname = cre_pname.executeQuery(sql);
      Statement cre_lowdname = conn.createStatement();
      ResultSet rs_lowdname = cre_lowdname.executeQuery(sql2);
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>인사 발령 등록</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
   <jsp:include page="user-index.jsp" flush="true"/>
   
   <div class="contents">
      <h2>인사 발령 등록</h2>
      <form method="post" action="user-PA-registration-success.do">
         <label for="pa_uno">사원코드: </label>
         <input type="text" name="pa_uno"><br>
         <label for="pdname">사원명: </label>
         <input type="text" name="pdname"><br>
         <label for="classification">발령구분: </label>
         <input type="text" name="classification"><br>
         <label for="issuance">발령일자: </label>
         <input type="date" name="issuance"><br>
         <label for="pposition">발령직급: </label>
         <select name="pposition">
            <% while (rs_pname.next()) { %>
               <option><%= rs_pname.getString("pname") %></option>
            <% } %>
         </select><br>
         <label for="pa_dept">발령부서: </label>
         <select name="pa_dept">
            <% while (rs_lowdname.next()) { %>
               <option><%= rs_lowdname.getString("lowdname") %></option>
            <% } %>
         </select><br>
         <input type="submit" value="등록">
         <input type="reset" value="초기화">
      </form>
   </div>
<%
   } catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage() + "<br><a href='main-calendar.do'>메인 화면으로 돌아가기</a>"); }
%>
</body>
</html>