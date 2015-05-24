
<%@page import="jacl.Train"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<jsp:useBean id="routers" class="jacl.Routers" scope="session" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<b> <font color="#ff3400">Add to selected train stations:

			<hr> List train <br> <%
 	Train train = new Train();
 	try {
 		train.setNumer(Integer.parseInt(request.getParameter("numer")));
 		train.setFirstStation(request.getParameter("fstation")
 				.toUpperCase());
 		train.setLastStation(request.getParameter("lstation")
 				.toUpperCase());
 		train.setTime(request.getParameter("time"));
 		routers.addRoute(train);

 	} catch (Exception e) {

 	}
 	for (int i = 0; i < routers.count(); i++) {
 %> <a href="createStation.jsp?trainId=<%=i%>"> <%
 	out.write("" + routers.getTrain(i).getNumer() + "\t");
 		out.write(routers.getTrain(i).getFirstStation() + "\t");
 		out.write(routers.getTrain(i).getLastStation() + "\t");
 		out.write(routers.getTrain(i).getTime() + "\t");
 %> <br> <%
 	}
 %>
		</a>
	</font>
	</b>
	<hr>
</body>
</html>