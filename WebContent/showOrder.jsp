<%@page import="jacl.Train"%>
<%@page import="jacl.Station"%>
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
	<center>
	<h3>
	Show you order
	</h3>
	</center>
	<br>
	<%
		index = Integer.parseInt(request.getParameter("trainId"));
		int first = Integer.parseInt(request.getParameter("first"));
		int last = Integer.parseInt(request.getParameter("last"));
		Train train = routers.getTrain(index);
		int fullPrice=0;
		for (int i = first + 1; i < last; i++) {
			Station station = train.getStations().get(i);
			fullPrice += station.getPrice();
		}
		out.write("Train № "+train.getNumer() + " route " + train.getFirstStation() + "-"
				+ train.getLastStation() + ", from station "
				+ train.getStations().get(first).getNameStation()
				+ " to station: "
				+ train.getStations().get(last).getNameStation() +", full price: "
						+ fullPrice);

		
	%>
	</a>
</body>
</html>