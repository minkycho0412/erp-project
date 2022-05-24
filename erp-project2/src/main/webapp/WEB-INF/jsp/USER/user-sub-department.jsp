<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하위 부서 등록</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="user-index.jsp" flush="true"/>
	<br><br><br><br>
	<fieldset>
		<h2>하위 부서 등록</h2>
		<form>
			<label for="lowdno">하위부서코드: </label>
			<input type="text" name="lowdno" required/><br>
			<label for="lowdname">하위부서명:&nbsp; &nbsp;</label>
			<input type="text" name="lowdname" required/>&emsp;
			<input type="submit" value="등록"/>
		</form>
		<% String lowdno = request.getParameter("lowdno");
	   String lowdname = request.getParameter("lowdname");
	   %>
	</fieldset>
	<br><br><br>
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	
	<button>수정</button>&emsp;&emsp;
   	<button>삭제</button>
   	<br><br>
   	
	<table width="300">
	   <tr>
		   <th>선택</th>
		   <th>부서코드</th>
		   <th>하위부서명</th>
	   </tr>
	
	   <tr>
		   <td><input type = "checkbox" value = "on"></td>
		   <td><%= lowdno %></td>
		   <td><a href="user-sub-department-list.do"><%= lowdname %></a></td>
	   </tr>
	   
	   <tr>
		   <td><input type = "checkbox" value = "on"></td>
		   <td><br></td>
		   <td><br></td>
	   </tr>
	   
	</table>
</body>
</html>