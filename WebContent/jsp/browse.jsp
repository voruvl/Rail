<%@page import="jacl.Page"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:useBean id="browser" class="jacl.Browser" scope="application"></jsp:useBean>

<style type="text/css">
div.page:ACTIVE {
	box-shadow: -5px -5px 10px #777777;
}

div.page {
	margin-left: 10px;
	margin-bottom: 10px;
	left: 10px;
	float: left;
	position: relative;
	padding: 10px;
	width: 150px;
	height: 120px;
	text-align: justify;
	border: 1px solid;
	border-radius: 20px;
	float: left;
	top: 20px;
	position: relative;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<center>
		<form action="browse.jsp" method="post">
			<input type="text" value="" name="namePage" /> <input type="submit"
				value="Add" />

		</form>
	</center>

	<div>

		<%
			String namePage = request.getParameter("namePage");
			if (namePage != null) {
				Page pageBrowse = new Page();
				pageBrowse.setName(namePage);
				browser.addPage(pageBrowse);
			}

			if (browser.count() != 0) {
				for (int index = 0; index < browser.count(); index++) {
		%>

		<div class="page">
			<a href="http://www.<%=browser.getPage(index).getName()%>"
				target="content"> <img
				src="http://mini.s-shot.ru/1024x768/150/jpeg/?<%=browser.getPage(index).getName()%>" />
			</a>
			<center>
				<i><%=browser.getPage(index).getName()%></i>
			</center>
		</div>
		<%
			}
			}
		%>


	</div>
</body>
</html>