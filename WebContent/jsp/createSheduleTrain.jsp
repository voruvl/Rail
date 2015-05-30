<%@page import="jacl.Train"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<jsp:useBean id="routers" class="jacl.Routers" scope="application" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
function setfocus() {
	document.form.numer.select();
	document.form.numer.focus();
}
</script>
<title>Insert title here</title>
</head>
<body onload="javascript:setfocus()">
	<center>
		<font color="green"> <b>Entering new train </b></font>
	</center>
	<hr color="green">
	<form action="sheduleTrain.jsp" name="form" method="get">
		<b>Numer train:</b><br> <input type="text" name="numer" value=""><br>
		<b>First station:</b><br> <input type="text" name="fstation"
			value=""><br> <b>Last station:</b><br> <input
			type="text" name="lstation" value=""><br> <b>Time
			train:</b><br> 
		
			<input type="time" name="time" value=""><br>
		<input type="submit" value="Insert">
		
	</form>
	

</body>
</html>