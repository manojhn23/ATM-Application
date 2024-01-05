<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ATM-Register</title>
</head>
<body>
<%@ page import="atmApp.RegisterDao" %>
<jsp:useBean id="obj" class="atmApp.User" />
<jsp:setProperty property="*" name="obj"/>
<% int status=RegisterDao.register(obj);
if(status>0){ %>
	<script type="text/javascript">
		alert("You Successfully Registered !!!");	
		window.location.href="index.jsp";
	</script>
	<%
} 
 else{ %>
	<script type="text/javascript">
		 alert("Entered wrong fields !!!");
		 window.location.href="register.jsp";
	</script>	
<%}
 %>

</body>
</html>