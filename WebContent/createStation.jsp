<%@page import="jacl.Train"%>
<%@page import="jacl.Routers"%>
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
		<font color="green"> <b>Entering new station </b></font>

		<hr color="green">
		<%
			Train train;
			index = Integer.parseInt(request.getParameter("trainId"));
			train = routers.getTrain(index);
			out.write("" + train.getNumer() + "\t");
			out.write(train.getFirstStation() + "\t");
			out.write(train.getLastStation() + "\t");
			out.write(train.getTime() + "\t");
		%>
	</center>
	<form action="createStation.jsp" method="get">
		<b>Station:</b><br> <input type="text" name="station" value=""><br>
		<b>Price:</b><br> <input type="text" name="price" value="">
		<input type="hidden" name="trainId" value="<%=index%>"> <br>
		<input type="submit" value="Insert">
	</form>

	<%
		Station station = new Station();
		try {
			station.setNameStation(request.getParameter("station")
					.toUpperCase());
			station.setPrice(Integer.parseInt(request.getParameter("price")));
			train.addStation(station);

		} catch (NumberFormatException e) {
	%>

	<script type="text/javascript">
		alert("Entering value not numer")
	</script>
	<%
		} catch (NullPointerException e) {
		}
	%>

	<hr>
	<center>
		<b> <font color="#ff3400">Stations: </font></b>
	</center>
	<hr color="#dd2312">
	<br>
	<table border="1px inset">
		<tr>
			<td><font color="#ff3400"> <%
 	out.write("STATION");
 %>
			</font></td>
			<td><font color="#ff3400"> <%
 	out.write("PRICE");
 %>
			</font></td>
			<td><font color="#ff3400"> <%
 	out.write("№Train");
 %>
			</font></td>
		</tr>
		<tr>

			<%
				for (int i = 0; i < train.getStations().size(); i++) {
					Station stationWrite=train.getStations().get(i);
			%>
			<td>
				<%
					out.write(stationWrite.getNameStation() + "\t");
				%>
			</td>
			<td>
				<%
					out.write("" + stationWrite.getPrice() + "\t");
				%>
			</td>
			
		</tr>

		<%
			}
		%>

	</table>
</body>
</html>