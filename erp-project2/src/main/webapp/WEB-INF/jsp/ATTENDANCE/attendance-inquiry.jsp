<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String uid = "root"; String pass = "Q1w2e3r4!";
String sql = "SELECT U.uname, A.* FROM user U, attendance A WHERE U.uno = A.attend_uno";
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, uid, pass);
	PreparedStatement pre = conn.prepareStatement(sql);
	ResultSet rs = pre.executeQuery();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>근태(휴가) 조회</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/table.css'/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="attendance-index.jsp" flush="true"/>
	<div class="contents">
		<h2>근태(휴가) 조회</h2>
		<form action="" method="post">
			<label for="usearch">사원검색: </label>
			<select name="usearch">
				<option value="uno">사원번호</option>
				<option value="uname">사원명</option>
			</select>
			<input type="text" name="user" /><br>
			
			<label for="dname">부서검색: </label>
			<input type="text" name="dname"><br>
			
			<label for="dname">날짜검색: </label>
			<input type="date" name="search_date"><br>
			
			<input type="submit" value="조회">
		</form>
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
								<th>부서명</th>
								<th>휴가 종류</th>
								<th>산정기간</th>
								<th>총 휴가일수</th>
								<th>사용한 휴가일수</th>
								<th>남은 휴가일수</th>
							</tr>
						</thead>
		            	<tbody>
		            	
		            		<% while (rs.next()) { %>
							<tr class="alert" role="alert">
								<td><br></td>
								<td><br></td>
								<td><br></td>
								<td><br></td>
								<td><br></td>
								<td><br></td>
								<td><br></td>
							</tr>
						</tbody>
			          </table>
			        </div>
			      </div>
			    </div>
			</div>
	    </section>
	</div>
	<%
		} } catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage() + "<br><a href='main-calendar.do'>메인 화면으로 돌아가기</a>"); }
	%>
</body>
</html>