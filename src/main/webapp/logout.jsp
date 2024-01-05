<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ATM-Logout</title>
</head>
<body>
<% 
if(session.getAttribute("name")!=null){
	session.invalidate();
	%>
		<script type="text/javascript">
		alert("Logged out successfully !!!");
		window.location.href="index.jsp"
	</script>
	<%
}
else{
	
	%>
	<script type="text/javascript">
		alert("Log in first !!!");
		window.location.href="index.jsp";
	</script>
	
	<%
}
%>
<%@include file="footer.jsp" %>
</body>
</html>