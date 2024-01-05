<%
if(session.getAttribute("name")==null){
	%>
	<script type="text/javascript">
alert("Logged Out Unexpectedly, Relogin once !!!");
window.location.href="index.jsp";
</script>
<% }
%>
