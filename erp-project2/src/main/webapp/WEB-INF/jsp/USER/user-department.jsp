<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" errorPage="error.jsp"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<% 
request.setCharacterEncoding("UTF-8"); 
String url = "jdbc:mysql://localhost:3306/erp?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String uid = "root"; String pass = "Q1w2e3r4!";
String sql = "select * from dept order by dno";
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, uid, pass);
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서 등록</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/USER/style.css'/>"/>
</head>
<body>
	<jsp:include page="user-index.jsp" flush="true"/>
	<script type="text/javaScript" language="javascript" defer="defer">
    function jsp(num)
    {
        var theForm = document.frmSubmit;
          if(num == 1)
        {
            theForm.method = "post";
            theForm.action = "user-department-insert.do";
        }
        else if(num == 2)
           {
              theForm.method = "post";
              theForm.action = "user-department-delete.do";
        }
        theForm.submit();
    }
  </script>
	
	
	<div class="contents">
	<form name = frmSubmit>
		<fieldset>
			<h2>부서 등록</h2>
				<label for="dno">부서코드: </label>
				<input type="text" name="dno" required/>
				<label for="dname">부서명: </label>
				<input type="text" name="dname" required/><p>
				<label for="lowdno">하위부서코드: </label>
				<input type="text" name="lowdno" required/>
				<label for="lowdname">하위부서명: </label>
				<input type="text" name="lowdname" required/><p>
			
			<input type="button" onClick="jsp(1)" value="등록">
			<input type="button" onClick="jsp(2)" value="삭제">
		</fieldset>
		</form>
<p>
<table width="400" border="1">
<tr> <th>부서코드 <th>부서명 <th>하위부서코드 <th>하위부서명
<%while(rs.next()){%>		
<tr align= "center"> <td><%=rs.getString("dno") %> <td><%=rs.getString("dname") %>
<td><%=rs.getString("lowdno") %> 
<td><a href="user-department-information.do?lowdname=<%=rs.getString("lowdname") %>"><%=rs.getString("lowdname") %></a>
<%}%>
</table>
	</div>
	
	<%	} catch (Exception e) { out.print("죄송합니다. 시스템상 문제가 생겼습니다. <br>" + e.getMessage());
}
%>
</body>
</html>