import java.io.IOException;
import java.io.InputStream;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import Database.project_Doa;
import Database.projectbean;
@MultipartConfig
/**
 * Servlet implementation class profile
 */
@WebServlet("/profile")
public class profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public profile() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession ses = request.getSession();
		String e = ses.getAttribute("loginemail").toString();
		String name = request.getParameter("uname");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String dob = request.getParameter("dob");
		RequestDispatcher rd1 = request.getRequestDispatcher("profile.jsp");
		project_Doa pd = new project_Doa();
		projectbean bean = new projectbean();
		InputStream inputStream = null;
		Part filePart = request.getPart("file");
		if (filePart != null || name != "" || name != null || email != "" || email != null || mobile != ""
				|| mobile != null || dob != "" || dob != "") {
			inputStream = filePart.getInputStream();
			bean.setName(name);
			bean.setDob(dob);
			bean.setInput(inputStream);
			bean.setEmail(email);
			bean.setMobile(mobile);
			int r = pd.updateUser(bean, e);
			if (r > 0) {
				request.setAttribute("msg", "profileupdate");
				rd1.forward(request, response);
			} else {
				request.setAttribute("msg", "profilenotupdate");
				rd1.forward(request, response);
			}
		} else {
			request.setAttribute("msg", "profileempty");
			rd1.forward(request, response);
		}
	}
}
