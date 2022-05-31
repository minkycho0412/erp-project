<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>급여 조회</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/table.css'/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="payroll-index.jsp" flush="true"/>
	<div class="contents">
		<fieldset>
			<h2>Search</h2>
			<form action="" method="post">
				<label for="usearch">검색필터: </label>
				<select name="usearch">
					<option value="uname">사원명</option>
					<option value="dname">부서명</option>
					<option value="pname">직급</option>
				</select>
				<input type="text" name="usearch" /><br>
			
				<label for="issuance">기간조회: </label>
				<input type="date" name="startdate" /> 부터
				<input type="date" name="enddate" /> 까지
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				<input type="submit" value="조회"/>
			</form>
			<% String dname = request.getParameter("dname");
			String pname = request.getParameter("pname");
		 	%>
		</fieldset>
		<br><br>
		<p>*지급 내역과 공제 내역의 상세정보를 확인하시려면, 해당 금액을 클릭해주세요.</p>

		<section class="ftco-section">
			  <div class="container">
			    <div class="row">
			      <div class="col-md-12">
			        <div class="table-wrap">
			          <table class="table">
			            <thead class="thead-dark">
							<tr class="alert" role="alert">
								<th>귀속연월</th>
								<th>사원번호</th>
								<th>사원명</th>
								<th>부서명</th>
								<th>직급</th>
								<th>지급총액</th>
								<th>공제총액</th>
								<th>실지급액</th>
							</tr>
						</thead>
		            	<tbody>
							<tr class="alert" role="alert">
								<td><br></td>
								<td><br></td>
								<td><br></td>
								<td><br></td>
								<td><br></td>
								<td><a href="payroll-payment.do">총액</td>
								<td><a href="payroll-deduction.do">총액</td>
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