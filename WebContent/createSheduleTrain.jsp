<%@page import="jacl.Trains"%>
<%@page import="jacl.Train"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	var id;
	var first;
	var last
	function getDataTrain() {
		id = document.createTrain.idTrain.value;
		first = document.createTrain.firstStation.value;

		last = document.createTrain.lastStation.value;
		document.write(typeof id)
	}
</script>
</head>
<body>
	<center>
		<font color="green"> <b>Entering new train </b></font>
	</center>
	<hr color="green">
	<form action="createSheduleTrain.jsp" method="get">

		<b>Numer train:</b><br> <input type="text" name="numer" value=""><br>
		<b>First station:</b><br> <input type="text" name="fstation"
			value=""><br> <b>Last station:</b><br> <input
			type="text" name="lstation" value=""><br> <b>Time
			train:</b><br> <input type="text" name="time" value=""><br>
		<input type="submit" value="Insert">
		<jsp:useBean id="t1" class="jacl.Trains"  scope="session"/>
	</form>



	<%
		Train tr = new Train();
		try {
			tr.setNumer(Integer.parseInt(request.getParameter("numer")));
			tr.setFirstStation(request.getParameter("fstation")
					.toUpperCase());
			tr.setLastStation(request.getParameter("lstation")
					.toUpperCase());
			tr.setTime(request.getParameter("time"));
			t1.addTrain(tr);

		} catch (Exception e) {	
		
		%>
	<script type="text/javascript">
		alert("Entering value not numer")
	</script>
	<%
		}
	%><hr>
	<center>
		<b> <font color="#ff3400">Train shedule: 
	</center>
	<hr color="#dd2312">
	<br>
	<table border="1px inset" >
			<tr>
				<td>
					<%
						out.write("Numer" + "\t");
					%>
				</td>
				<td>
					<%
						out.write("First station" + "\t");
					%>
				</td>
				<td>
					<%
						out.write("Last station" + "\t");
					%>
				</td>
				<td>
					<%
						out.write("Time");
					%>
				</td>
			</tr>
			<br>
			<tr>
				<%
					for (int i = 0; i < t1.count(); i++) {
				%>
				<td>
					<%
						out.write("" + t1.getTrain(i).getNumer() + "\t");
					%>
				</td>
				<td>
					<%
						out.write(t1.getTrain(i).getFirstStation() + "\t");
					%>
				</td>
				<td>
					<%
						out.write(t1.getTrain(i).getLastStation() + "\t");
					%>
				</td>
				<td>
					<%
						out.write(t1.getTrain(i).getTime() + "\t");
					%>
				</td>
			</tr>
			<br>
			<%
				}
			%>

		</table>
	
</body>
</html>