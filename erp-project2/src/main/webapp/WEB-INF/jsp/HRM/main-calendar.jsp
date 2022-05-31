<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/HRM/main.css'/>"/>
<title>메인 페이지</title> 
</head>
<body>
	<jsp:include page="main-index.jsp" flush="true"/>
	<div class="main">
		<div class="content-wrap">
			<div class="content-left">
				<div class="main-wrap">
					<div id="main-day" class="main-day"></div>
					<div id="main-date" class="main-date"></div>
				</div>
				<div class="todo-wrap">
					<div class="todo-title">Todo List</div>
					<div class="input-wrap">
						<input type="text" placeholder="please write here!!" id="input-box" class="input-box">
						<button type="button" id="input-data" class="input-data">INPUT</button>
						<div id="input-list" class="input-list"></div>
					</div>
				</div>
			</div>
			<div class="content-right">
			  <table id="calendar" align="center">
			    <thead>
			      <tr class="btn-wrap clearfix">
			        <td>
			          <label id="prev">
			              &#60;
			          </label>
			        </td>
			        <td align="center" id="current-year-month" colspan="5"></td>
			        <td>
			          <label id="next">
			              &#62;
			          </label>
			        </td>
			      </tr>
			      <tr>
			          <td class = "sun" align="center">Sun</td>
			          <td align="center">Mon</td>
			          <td align="center">Tue</td>
			          <td align="center">Wed</td>
			          <td align="center">Thu</td>
			          <td align="center">Fri</td>
			          <td class= "sat" align="center">Sat</td>
			        </tr>
			    </thead>
			    <tbody id="calendar-body" class="calendar-body"></tbody>
			  </table>
			</div>
		</div>
	</div>
	<script src="<c:url value='/js/main-calendar.js'/>"></script>
</body>
</html>