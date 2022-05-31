<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서/직급 기본급 등록</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/table.css'/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="payroll-index.jsp" flush="true"/>
	<div class="contents">
		<fieldset>
			<h2>부서/직급 기본급 등록</h2>
			<form action="" method="post">
				<label for="dno">부서코드: </label> 
				<input type="text" name="dno" required/> &emsp;	<br>
				<label for="pno">직급코드: </label>
				<input type="text" name="pno" required/> &emsp; <br>
				<label for="sno">기본급: </label>
				<input type="text" name="sno" required/> &emsp;
				<input type="submit" value="등록"/>
			</form>
			<% String dno = request.getParameter("dno");
		   String pno = request.getParameter("pno");
		   String sno = request.getParameter("sno");
		   %>
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
								<th>부서코드</th>
								<th>기본급</th>
							</tr>
						</thead>
		            	<tbody>
							<tr class="alert" role="alert">
								<td><%= dno %><br></td>
								<td><%= pno %><br></td>
								<td><%= sno %><br></td>
							</tr>
						</tbody>
			          </table>
			        </div>
			      </div>
			    </div>
			</div>
	    </section>
	</div>
</body>
</html>