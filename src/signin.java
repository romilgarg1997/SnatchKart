import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Database.project_Doa;
import Database.projectbean;
/**
 * Servlet implementation class signin
 */
@WebServlet("/signin")
public class signin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public signin() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ResultSet r = null;
		String url = request.getHeader("referer");
		RequestDispatcher rd1 = null;
		try {
			URI uri = new URI(url);
			String u = uri.getPath();
			String[] result = u.split("/");
			if (result[2].equals("checkout-1.jsp")) {
				request.setAttribute("link", "checkout-2.jsp");
				rd1 = request.getRequestDispatcher("checkout-2.jsp");
			} else {
				request.setAttribute("link", result[2]);
				rd1 = request.getRequestDispatcher(result[2]);
			}
			projectbean pb = new projectbean();
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			if (!email.equals("") && !password.equals("")) {
				pb.setEmail(email);
				pb.setPassword(password);
				project_Doa pd = new project_Doa();
				String userdb = null;
				String userpass = null;
				String name = null;
				r = pd.userlogin();
				try {
					while (r.next()) {
						if (r.getString("email").equals(email)) {
							try {
								userdb = r.getString("email");
								userpass = r.getString("password");
								name = r.getString("name");
							} catch (SQLException e) {e.printStackTrace();}
						}
					}
				} catch (SQLException e) {e.printStackTrace();}
				if (email.equals(userdb) && password.equals(userpass)) {
					HttpSession ses1 = request.getSession();
					HttpSession ses2 = request.getSession();
					ses1.setAttribute("loginuser", name);
					ses2.setAttribute("loginemail", email);
					request.setAttribute("msg", "loginsuc");
				} else {
					request.setAttribute("msg", "loginunsuc");
				}
			} else {
				request.setAttribute("msg", "loginempty");
			}
			rd1.forward(request, response);
		} catch (URISyntaxException e1) {e1.printStackTrace();}
	}
}
