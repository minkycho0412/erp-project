<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사 조회</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/table.css'/>"/>
<link
      href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,700"
      rel="stylesheet"
      type="text/css"
    />

    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />
</head>
<body>
	<jsp:include page="user-index.jsp" flush="true"/>
	
	<div class="contents">
		<fieldset>
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
			<% String dname = request.getParameter("dname");
			String pname = request.getParameter("pname");
				%>
		</fieldset>
		<br><br>
		
		
	<section class="ftco-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-6 text-center mb-5">
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="table-wrap" width="700">
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
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>