<%@page import="jacl.Station"%>
<%@page import="jacl.Train"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%!int index;%>

<jsp:useBean id="routers" class="jacl.Routers" scope="application" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<font color="green"> <b>Entering new order, selected train </b></font>

	<hr color="green">
	<%
			for (int i = 0; i < routers.count(); i++) {
%>
	<a href="firstStation.jsp?trainId=<%=i%>"> <%
 	Train train = routers.getTrain(i);
 		out.write("" + train.getNumer() + "\t");
 		out.write(train.getFirstStation() + "\t");
 		out.write(train.getLastStation() + "\t");
 		out.write(train.getTime() + "\t");
 %><br> <%
 	}
 %>
</body>
</html>