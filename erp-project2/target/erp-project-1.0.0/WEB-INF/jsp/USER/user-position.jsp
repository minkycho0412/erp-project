<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" errorPage="error.jsp"%>

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>직급 등록</title>
<body>
	<script language = javascript>
    function jsp(num)
    {
        var theForm = document.frmSubmit;
          if(num == 1)
        {
            theForm.method = "post";
            theForm.action = "position-insert.jsp";
        }
        else if(num == 2)
           {
              theForm.method = "post";
              theForm.action = "position-delete.jsp";
        }
        theForm.submit();
    }
  </script>
	
	
	<div class="contents">
	<form name = frmSubmit>
		<fieldset>
			<h2>직급 등록</h2>
				<label for="pno">직급코드: </label>
				<input type="text" name="pno" required/>
				<label for="pname">직급명: </label>
				<input type="text" name="pname" required/><p>
			
			<input type="button" onClick="jsp(1)" value="등록">
			<input type="button" onClick="jsp(2)" value="삭제">
		</fieldset>
		</form>
		
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection
("jdbc:mysql://localhost:3306/erp?serverTimezone=UTC", "root", "Q1w2e3r4!");
Statement cre = conn.createStatement(); 
ResultSet rs = cre.executeQuery("select * from position order by pno"); 
%> 
<p>
<table width="200" border="1">
<tr> <th>직급코드 <th>직급명
<%while(rs.next()){%>		
<tr align= "center"> <td><%=rs.getString("pno") %> <td><%=rs.getString("pname") %>
<%}%>
</table>
	</div>
</body>
</html>