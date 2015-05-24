<%@page import="jacl.Station"%>
<%@page import="java.util.List"%>
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
		Train train = routers.getTrain(index);
		for (int i = 0; i < train.getStations().size(); i++) {
	%>
	<a href="lastStation.jsp?trainId=<%=index%>&first=<%=i%>"> <%
 	Station station = train.getStations().get(i);
 		out.write(station.getNameStation() + "\t");
 		out.write("" + station.getPrice() + "\t");
 %> <br> <%
 	}
 %>
	</a>
</body>
</html>