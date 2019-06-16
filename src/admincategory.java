import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Database.*;
/**
 * Servlet implementation class category
 */
@WebServlet("/category")
public class admincategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("Admin/category.jsp");
		Adminbean bean = new Adminbean();
		Admin_Doa ad = new Admin_Doa();
		if (request.getParameter("msg") != null) {
			if (request.getParameter("msg").equals("add")) {
				int r = 0;
				String catt = request.getParameter("cat");
				if (!catt.equalsIgnoreCase("")) {
					bean.setCategory_name(catt);
					r = ad.setCategory(bean);
					if (r > 0) {
						request.setAttribute("msg", "suc");
					} else {
						request.setAttribute("msg", "unsuc");
					}
					rd.forward(request, response);
				} else {
					request.setAttribute("msg", "emp");
					rd.forward(request, response);
				}
			} else if (request.getParameter("msg").equals("del")) {
				int r;
				r = ad.deleteCategoryById(request.getParameter("catid"));
				if (r > 0) {
					request.setAttribute("msg", "delsuc");
					rd.forward(request, response);
				} else {
					request.setAttribute("msg", "delunsuc");
					rd.forward(request, response);
				}
			} else if (request.getParameter("msg").equals("update")) {
				ad.updateCategoryName(request.getParameter("cid"), request.getParameter("catname"));
			}
		}
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
