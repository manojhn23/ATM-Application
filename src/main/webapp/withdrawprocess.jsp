<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@include file="common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ATM-Withdraw</title>
</head>
<body>
<%@page import="atmApp.Transaction" %>
<%
int a =(int)session.getAttribute("amount");
int b = Integer.parseInt(request.getParameter("withdraw"));
int c = (int) session.getAttribute("card_no");
if(a<b) {
%>
	<script type="text/javascript">
		alert("Balance is insufficient !!!");
		window.location.href="withdraw.jsp"
	</script>
	<%
	}
	else{
		int status = Transaction.payment((a-b),c);
		if(status>0){
	%>
		<script type="text/javascript">
			alert("Successfully withdraw !!!");
			window.location.href="user.jsp";
			</script>
<%
session.setAttribute("amount", a-b);
	}
	else{ %>
		<script type="text/javascript">
			alert("Some Error Occurs, Try Again !!!");
			window.location.href="withdraw.jsp";
			</script>
<%	
	}
}
%>
</body>
</html>