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
 * Servlet implementation class signup
 */
@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public signup() {
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
		int r = 0, c = 0;
		String url = request.getHeader("referer");
		RequestDispatcher rd = null;
		try {
			URI uri = new URI(url);
			String u = uri.getPath();
			String[] result = u.split("/");
			if (result[2].equals("signupsep.jsp")) {
				request.setAttribute("link", "checkout-3.jsp");
				rd = request.getRequestDispatcher("checkout-3.jsp");
			} else {
				request.setAttribute("link", result[2]);
				rd = request.getRequestDispatcher(result[2]);
			}
			HttpSession ses1 = request.getSession();
			HttpSession ses2 = request.getSession();
			
			projectbean pb = new projectbean();
			String name = request.getParameter("Name");
			String email = request.getParameter("Email");
			String password = request.getParameter("password");
			String dob = request.getParameter("dob");
			String Confirm = request.getParameter("Confirm");
			if (!name.equals("") && !email.equals("") && !password.equals("") && !Confirm.equals("") &&!dob.equals("")) {
				if (password.equals(Confirm)) {
					project_Doa pd = new project_Doa();
					ResultSet rs = pd.userlogin();
					try {
						while (rs.next()) {
							if (rs.getString("email").equals(email)) {
								c = 1;
							}
						}
					} catch (SQLException e) {}
					if (c == 0) {
						ses1.setAttribute("loginuser", request.getParameter("Name"));
						ses2.setAttribute("loginemail", request.getParameter("Email"));
						pb.setName(name);
						pb.setEmail(email);
						pb.setPassword(password);
						pb.setMobile(request.getParameter("mobile"));
						pb.setDob(dob);
						r = pd.userregis(pb);
						if (r > 0) {
							request.setAttribute("msg", "signupsuc");
							rd.forward(request, response);
						} else {
							request.setAttribute("msg", "signupunsuc");
							rd.forward(request, response);
						}
					} else {
						request.setAttribute("msg", "signupexist");
						rd.forward(request, response);
					}
				} else {
					request.setAttribute("msg", "signuppassnomatch");
					rd.forward(request, response);
				}
			} else {
				request.setAttribute("msg", "signupempty");
				rd.forward(request, response);
			}
		} catch (URISyntaxException e1) {}
	}
}
