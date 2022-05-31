<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

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
			<label for="usearch">사원검색: </label>
			<select name="usearch">
				<option value="uno">사원번호</option>
				<option value="uname">사원명</option>
			</select>
			<input type="text" name="usearch" /><br>
			
			<label for="dname">부서검색: </label>
			<input type="text" name="dname" /><br>
			<label for="pname">직급검색: </label>
			<input type="text" name="pname" /><br>
			<label for="joindate">입사일: </label>
			<input type="date" name="startdate" /> 부터
			<input type="date" name="enddate" /> 까지 <br>
			<input type="submit" value="조회"/>
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
								<th>부서</th>
								<th>직급</th>
								<th>입사일</th>
								<th>이메일</th>
								<th>인사카드</th>
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
								<td><a href="user-personal-record.do">보기</a></td>
							</tr>
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
</body>
</html>