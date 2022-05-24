<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%> 
<title>ErrorPage</title>
<body style="background-color:#E3CEF6">
	<%response.setStatus(200); %>
	에러 종류: <%=exception.getClass().getName()%><br> 
	에러 내용: <%=exception.getMessage()%> <p>
	<!-- 이전 페이지 -->
	<a href="main-calendar.do">전 화면으로 돌아가기</a>
</body>