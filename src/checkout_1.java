import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Database.Admin_Doa;
import Database.projectbean;
/**
 * Servlet implementation class checkout
 */
@WebServlet("/checkout_1")
public class checkout_1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public checkout_1() {
		super();}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd1 = request.getRequestDispatcher("checkout-1.jsp");
		RequestDispatcher rd2 = request.getRequestDispatcher("checkout-2.jsp");
		java.util.Enumeration names = request.getParameterNames();
		List<Integer> quan = new ArrayList<Integer>(10);
		List<Integer> pid = new ArrayList<Integer>(10);
		while (names.hasMoreElements()) {
			String name = (String) names.nextElement();
			if (name.startsWith("quantity")) {
				quan.add(Integer.parseInt(request.getParameter(name)));} 
			else if (name.startsWith("my")) {
				pid.add(Integer.parseInt(request.getParameter(name)));}}
		Admin_Doa ad = new Admin_Doa();
		for (int i = 0; i < pid.size(); i++) {
			int quantity = 0;
			int id = pid.get(i);
			ResultSet rs = ad.getProductbypid(String.valueOf(id));
			try {
				rs.next();
				quantity = rs.getInt("quantity");
			} catch (SQLException e) {}
			if (quan.get(i) > quantity) {
				quan.set(i, quantity);
			}
		}
		String url = request.getHeader("referer");
		URI uri = null;
		try {uri = new URI(url);} catch (URISyntaxException e) {}
		String u = uri.getPath();
		String[] result = u.split("/");
		HttpSession ses3 = request.getSession();
		ses3.setAttribute("quantity", quan);
		HttpSession ses4 = request.getSession();
		ses4.setAttribute("pid", pid);
		if (result[2].equals("checkout-3.jsp")) {
			response.sendRedirect("checkout-3.jsp");
		} else {
			response.sendRedirect("checkout-1.jsp");
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
