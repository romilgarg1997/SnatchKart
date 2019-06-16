import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Database.Admin_Doa;
/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public adminlogin() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user, pass;
		RequestDispatcher rd = request.getRequestDispatcher("Admin/login.jsp");
		RequestDispatcher rd1 = request.getRequestDispatcher("Admin/index.jsp");
		user = request.getParameter("username");
		pass = request.getParameter("password");
		Admin_Doa ad = new Admin_Doa();
		ResultSet rs = ad.getadminLogin();
		String userdb = null;
		String userpass = null;
		try {
			if (rs.next()) {
				try {
					userdb = rs.getString("username");
					userpass = rs.getString("password");
				} catch (SQLException e) {}
			}
		} catch (SQLException e) {}
		if (user.equals(userdb) && pass.equals(userpass)) {
			HttpSession ses = request.getSession();
			ses.setAttribute("loginses", user);
			if (request.getParameter("check") != null){
				Cookie c = new Cookie("logincook", user);
				c.setMaxAge(300);
				response.addCookie(c);
			}
			request.setAttribute("msg", "loginsuc");
			rd1.forward(request, response);
		} else {
			request.setAttribute("msg", "incorrect");
			rd.forward(request, response);
		}
	}
}
