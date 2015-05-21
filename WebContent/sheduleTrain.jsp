<%@page import="jacl.Train"%>
<%@page import="jacl.Trains"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:useBean id="t1" class="jacl.Trains" scope="session" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
		
		
	</script>
	<b> <font color="#ff3400">Train shedule:

			<hr> 

			<%
				out.write("Numer" + "\t");
				out.write("First station" + "\t");
				out.write("Last station" + "\t");
				out.write("Time");
			%> <br> <%
 	for (int i = 0; i < t1.count(); i++) {
 		request.setAttribute("train", t1.getTrain(i));
 %> <a href=<%request.setAttribute("train", t1.getTrain(i)); %>/"route.jsp" >
				<%
				
					out.write("" + t1.getTrain(i).getNumer() + "\t");
						out.write(t1.getTrain(i).getFirstStation() + "\t");
						out.write(t1.getTrain(i).getLastStation() + "\t");
						out.write(t1.getTrain(i).getTime() + "\t");
				%> <br> <%
 	}
 %>
		</a>
	</font>
	</b>
	<hr>

	</font>
	</b>
	<hr>

</body>
</html>