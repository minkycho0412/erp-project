<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>수당 등록</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/table.css'/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="payroll-index.jsp" flush="true"/>
	<div class="contents">
		<h2>수당 등록</h2>
		<form action="payroll-benefit-registration-insert.do" method="post">
			<label for="ano">수당코드: </label> 
			<input type="text" name="ano" required /><br>
			<label for="aname">수당명: </label>
			<input type="text" name="aname" required /><br>
			<label for="arate">수당비율: </label>
			<input type="text" name="arate" required /><br>
			<label for="aamount">금액: </label>
			<input type="text" name="aamount" required /><br>
			<label for="overtime">초과근무여부: </label>
			<input type="text" name="overtime" required /><br>
			<input type="submit" value="등록"/>
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
								<th>수당코드</th>
								<th>수당명</th>
								<th>수당비율</th>
								<th>금액</th>
								<th>추가근무여부</th>
							</tr>
						</thead>
		            	<tbody>
							<tr class="alert" role="alert">
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
</body>
</html>