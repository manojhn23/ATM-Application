<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ATM-Delete</title>
</head>
<body>
<%@ page import="atmApp.DeleteDao" %>
<%
int c =(int) session.getAttribute("card_no");
int p = Integer.parseInt(request.getParameter("pin"));
int status = DeleteDao.deleteAcc(c,p);
if(status>0){
	%>
	<script type="text/javascript">
		alert("Account Deleted Successfully !!!");
		window.location.href="index.jsp";
	</script>
	<%
	session.invalidate();
}
else{
	%>
	<script type="text/javascript">
		alert("An Error Occurs !!!");
		window.location.href="delete.jsp";
	</script>
	<%
}
%>

</body>
</html>