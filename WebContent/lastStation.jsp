<%@page import="jacl.Station"%>
<%@page import="jacl.Train"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%!int index;%>

<jsp:useBean id="routers" class="jacl.Routers" scope="session" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		index = Integer.parseInt(request.getParameter("trainId"));
		int first = Integer.parseInt(request.getParameter("first"));
		Train train = routers.getTrain(index);
		for (int i = first + 1; i < train.getStations().size(); i++) {
	%>
	<a href="showOrder.jsp?trainId=<%=index%>&first=<%=first%>&last=<%=i%>"> <%
 	Station station = train.getStations().get(i);
 		out.write(station.getNameStation() + "\t");
 		out.write("" + station.getPrice() + "\t");
 %> <br> <%
 	}
 %>
	</a>
</body>
</html>