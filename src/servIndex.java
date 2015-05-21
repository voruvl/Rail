
import jacl.Train;
import jacl.Trains;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class servIndex
 */
@WebServlet("/servIndex")
public class servIndex extends HttpServlet {
	Trains trains=new Trains();
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public servIndex() {
		super();
		
	createTrain(1, "Grodno", "Minsk","12:00");
	createTrain(2, "Grodno", "Moskow","12:54");
	createTrain(3, "Grodno", "Brest","18:46");
	}
	public void createTrain(int idNum,String fSta,String lSta,String time){
		Train tr = new Train();
		tr.setNumer(idNum);
		tr.setFirstStation(fSta);
		tr.setLastStation(lSta);
		tr.setTime(time);
		trains.addTrain(tr);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<head>");
		out.print("</head>");
		out.print("<body>");

		out.print(getTrain());
		out.print("<form name='myForm' method='get' action='servIndex'>");
		out.print("<input type='text' name='myText'> ");
		out.print("<input type='submit' value='hello'>");
		out.print("</form>");
		out.print("</body>");
		out.print("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	public String getTrain(){
		String str="";
		for (int index=0;index<trains.count();index++) {
			str+="<p>" + trains.getTrain(index)+ "</p>";
		}
		return str;
		
	}

}
