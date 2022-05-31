<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">>
<title>인사 발령 조회</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/table.css'/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
<link href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,700" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<body>
	<jsp:include page="user-index.jsp" flush="true"/>
	<div class="contents">
		<h2>Search</h2>
		<form action="" method="post">
			<label for="usearch">사원검색: </label>
			<select name="usearch">
				<option value="uno">사원번호</option>
				<option value="uname">사원명</option>
			</select>
			<input type="text" name="usearch" /><br>
			
			<label for="classification">발령구분: </label>
			<input type="text" name="classification" /><br>
			<label for="issuance">발령일자: </label>
			<input type="date" name="startdate" /> 부터
			<input type="date" name="enddate" /> 까지 <br>
			<input type="submit" value="조회"/>
		</form>
		<% String dname = request.getParameter("dname");
		String pname = request.getParameter("pname");
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
									<th>검색</th>
									<th>발령일자</th>
									<th>사원번호</th>
									<th>사원명</th>
									<th>발령구분</th>
									<th>이전직위/직급</th>
									<th>발령직위/직급</th>
									<th>이전부서</th>
									<th>발령부서</th>
								</tr>
							</thead>
			            	<tbody>
								<tr class="alert" role="alert">
									<td><br></td>
									<td><br></td>
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
</body>
</html>