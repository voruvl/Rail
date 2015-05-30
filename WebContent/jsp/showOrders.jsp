<%@page import="jacl.Station"%>
<%@page import="jacl.Train"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:useBean id="orders" class="jacl.Orders" scope="application" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h2 style="color: rgb(100,120,200);opacity:0.6;">Show all orders</h2>
	</center>

	<%
		Train train;
		int fStation;
		int lStation;
		for (int i = 0; i < orders.count(); i++) {
			train = orders.getOrder(i).getTrain();
			fStation = orders.getOrder(i).getFirstStation();
			lStation = orders.getOrder(i).getLastStation();
			int fullPrice=0;
			for (int p = fStation; p < lStation + 1; p++) {
				Station station = train.getStations().get(p);
				fullPrice += station.getPrice();
			}
			out.write("Train № " + train.getNumer() + " route "
					+ train.getFirstStation() + "-"
					+ train.getLastStation() + " from "
					+ train.getStations().get(fStation).getNameStation()
					+ " to "
					+ train.getStations().get(lStation).getNameStation()
					+ ", full price: " + fullPrice);
	%><br>
	<%
		}
	%>
</body>
</html>