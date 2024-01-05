<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ATM-Login</title>
</head>
<body>
<%@page import="atmApp.LoginDao" %>
<jsp:useBean id="obj" class="atmApp.User" />
<jsp:setProperty property="*" name="obj"/>
 

<%
if(session.getAttribute("name")==null){
	int c = Integer.parseInt(request.getParameter("card_no"));
	int p = Integer.parseInt(request.getParameter("pin"));
	boolean status = LoginDao.login(c,p);
	String name = LoginDao.getName();
	int card_no = LoginDao.getCard_no();
	int month = LoginDao.getMonth();
	int year = LoginDao.getYear();
	int amount = LoginDao.getAmount();
	if(status){
		%>
		<script type="text/javascript">
			alert("Successfully Logged In !!!");
			window.location.href="index.jsp";
		</script>
		<%
		session.setAttribute("name", name);
		session.setAttribute("card_no", card_no);
		session.setAttribute("month", month);
		session.setAttribute("year", year);
		session.setAttribute("amount", amount);	
	}
	else{
		%>
		<script type="text/javascript">
			alert("You Entered Wrong Fields !!!");
			window.location.href="login.jsp";
		</script>
		<%
	}
}
else{
	%>
	<script type="text/javascript">
		alert("Already Logged In !!!");
		window.location.href="index.jsp"
	</script>
	<%
}
%>

</body>
</html>