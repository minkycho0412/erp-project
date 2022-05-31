<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String uid = "root"; String pass = "Q1w2e3r4!";
String sql = "select * from position order by pno";
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, uid, pass);
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직급 등록</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/table.css'/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="user-index.jsp" flush="true"/>
	<div class="contents">
		<script language = javascript>
		    function jsp(num)
		    {
		        var theForm = document.frmSubmit;
		          if(num == 1)
		        {
		            theForm.method = "post";
		            theForm.action = "position-insert.jsp";
		        }
		        else if(num == 2)
		           {
		              theForm.method = "post";
		              theForm.action = "position-delete.jsp";
		        }
		        theForm.submit();
		    }
	    </script>
	    
	    <fieldset>
			<form name = frmSubmit>
				<h2>직급 등록</h2>
					<label for="pno">직급코드: </label>
					<input type="text" name="pno" required/>
					<label for="pname">직급명: </label>
					<input type="text" name="pname" required/><p>
				
				<input type="button" onClick="jsp(1)" value="등록">
				<input type="button" onClick="jsp(2)" value="삭제">
			</form>
		</fieldset>
		<br><br>
		
		<section class="ftco-section">
			  <div class="container">
			    <div class="row">
			      <div class="col-md-12">
			        <div class="table-wrap">
			          <table class="table">
			            <thead class="thead-dark">
							<tr class="alert" role="alert">
								<th>직급코드</th>
								<th>직급명</th>
							</tr>
						</thead>
		            	<tbody>
		            	<%while(rs.next()){%>
							<tr class="alert" role="alert">
								<td><%=rs.getString("pno")%></td>
								<td><%=rs.getString("pname") %></td>
							</tr>
						<%}%>
						</tbody>
			          </table>
			        </div>
			      </div>
			    </div>
			</div>
	    </section>
	    
    <%
    	} catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage()); }
	%>
	</div>
</body>
</html>