<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPar E html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	function openLocation(page) {
		// 		alert("sdsddf");
		parent.content.location.href = page;
	}
	function openWin() {
		wind = open("http:\\www.mail.ru");
	}
</script>
</head>
<body style="background: #f5acd1">

	<h3>
		<p style="color: red">Main menu</p>
	</h3>
	<br>
	<a href="createSheduleTrain.jsp" target="content">Create train shedule</a>
	<br>
	<a href="sheduleTrain.jsp" target="content">Shedule train</a>
	<br>
	<a href="Route.jsp" target="content">Route train</a>
	<br>
	<a href="javascript:openLocation('orderTicket.jsp')">Order tickets</a>
	
	
	
	
	<br>

</body>
</html>