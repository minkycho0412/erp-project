<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수당 등록</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/table.css'/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="payroll-index.jsp" flush="true"/>
	<div class="contents">
		<fieldset>
			<h2>수당 등록</h2>
			<form action="" method="post">
				<label for="ano">수당코드: </label> 
				<input type="text" name="ano" required/> &emsp;	<br>
				<label for="aname">수당명: </label>
				<input type="text" name="aname" required/> &emsp; <br>
				<label for="arate">수당비율: </label>
				<input type="text" name="arate" required/> &emsp; <br>
				<label for="aamount">금액: </label>
				<input type="text" name="aamount" required/> &emsp;
				<input type="submit" value="등록"/>
			</form>
			<% String ano = request.getParameter("ano");
		   String aname = request.getParameter("aname");
		   String arate = request.getParameter("arate");
		   String aamount = request.getParameter("aamount");
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
								<th>수당코드</th>
								<th>수당명</th>
								<th>수당비율</th>
								<th>금액</th>
							</tr>
						</thead>
		            	<tbody>
							<tr class="alert" role="alert">
								<td><%= ano %><br></td>
								<td><%= aname %><br></td>
								<td><%= arate %><br></td>
								<td><%= aamount %><br></td>
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