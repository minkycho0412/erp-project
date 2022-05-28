<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태(휴가) 조회</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<% String search_name; %>
<body>
	<jsp:include page="attendance-index.jsp" flush="true"/>
	<h2>근태(휴가) 조회</h2>
	<form method="post">
		검색 필터:
		<select name=search_name_option><option>사원명 <option>부서명</select>
		<input type="text" name=search_name><p>
		날짜 조회: <input type="date" name="search_date"><p>
		<input type="submit" value="조회">
		<%
		request.setCharacterEncoding("UTF-8");
		search_name=request.getParameter("search_name");
		%>
		<br><br>
		<table style="width:600" border="1">
			<tr>
			<th>사원번호 <th>사원명 <th>부서명 <th>휴가 종류 <th>산정기간<th>총 휴가일수<th>사용한 휴가일수<th>남은 휴가일수
			<tr>
			<td><td><%=search_name %><td><td><td><td><td><td>
			<tr>
			<td><td><td><td><td><td><td><td>
		</table>
	</form>
</body>
</html>