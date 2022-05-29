<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" errorPage="error.jsp"%>

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>부서 등록</title>
<body>
	<script language = javascript>
    function jsp(num)
    {
        var theForm = document.frmSubmit;
          if(num == 1)
        {
            theForm.method = "post";
            theForm.action = "department-insert.jsp";
        }
        else if(num == 2)
           {
              theForm.method = "post";
              theForm.action = "department-delete.jsp";
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
		
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection
("jdbc:mysql://localhost:3306/erp?serverTimezone=UTC", "root", "");
Statement cre = conn.createStatement(); 
ResultSet rs = cre.executeQuery("select * from dept order by dno"); 
%> 
<p>
<table width="400" border="1">
<tr> <th>부서코드 <th>부서명 <th>하위부서코드 <th>하위부서명
<%while(rs.next()){%>		
<tr align= "center"> <td><%=rs.getString("dno") %> <td><%=rs.getString("dname") %>
<td><%=rs.getString("lowdno") %> 
<td><a href="department-information.jsp?lowdname=<%=rs.getString("lowdname") %>"><%=rs.getString("lowdname") %></a>
<%}%>
</table>
	</div>
</body>
</html>