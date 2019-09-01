package datepicker;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class datepickerServlet
 */
@WebServlet("/datepickerServlet")
public class datepickerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/plain");
		PrintWriter pw = response.getWriter();

		String date = null;
		date = request.getParameter("date");

		if (!date.isEmpty() && date != null) {
			pw.println("The entered date is: " + date);
		} else {
			pw.println("Not available!");
		}

	}

}
