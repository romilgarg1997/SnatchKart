import java.io.IOException;
import javax.mail.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Database.project_Doa;
import Database.projectbean;
/**
 * Servlet implementation class address
 */
@WebServlet("/address")
public class Useraddress extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Useraddress() {
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
		project_Doa pd = new project_Doa();
		projectbean bean = new projectbean();
		RequestDispatcher rd = request.getRequestDispatcher("address.jsp");
		if (request.getParameter("msg").equals("add")) {
			if (request.getParameter("name") != null || request.getParameter("name") != ""
					|| request.getParameter("mobile") != null || request.getParameter("mobile") != ""
					|| request.getParameter("address") != null || request.getParameter("address") != ""
					|| request.getParameter("pin") != null || request.getParameter("pin") != ""
					|| request.getParameter("district") != null || request.getParameter("district") != ""
					|| request.getParameter("state") != null || request.getParameter("state") != "") {
				bean.setUid(request.getParameter("id"));
				bean.setName(request.getParameter("name"));
				bean.setMobile(request.getParameter("mobile"));
				bean.setAddress(request.getParameter("address"));
				bean.setLocality(request.getParameter("locality"));
				bean.setPin(request.getParameter("pin"));
				bean.setDistrict(request.getParameter("district"));
				bean.setState(request.getParameter("state"));
				int r = pd.setAddress(bean);
				if (r > 0) {
					request.setAttribute("msg", "addresssuc");
				} else {
					request.setAttribute("msg", "addressunsuc");
				}
				rd.forward(request, response);
			} else {
				request.setAttribute("msg", "addressunsucempty");
				rd.forward(request, response);
			}
		} else if (request.getParameter("msg").equals("del")) {
			String aid = request.getParameter("id");
			int r = pd.deleteAddByAid(aid);
			if (r > 0) {
				request.setAttribute("msg", "addressdelsuc");
			} else {
				request.setAttribute("msg", "addressdelunsuc");
			}
			rd.forward(request, response);
		} else if (request.getParameter("msg").equals("update")) {
			bean.setUid(request.getParameter("id"));
			bean.setName(request.getParameter("name"));
			bean.setMobile(request.getParameter("mobile"));
			bean.setAddress(request.getParameter("address"));
			bean.setLocality(request.getParameter("locality"));
			bean.setPin(request.getParameter("pincode"));
			bean.setDistrict(request.getParameter("district"));
			bean.setState(request.getParameter("state"));
			int r = pd.updateAddress(bean);
			if (r > 0) {
				request.setAttribute("msg", "addressupdtaesuc");
				rd.forward(request, response);
			} else {
				request.setAttribute("msg", "addressupdateunsuc");
				rd.forward(request, response);
			}
		}
	}
}
