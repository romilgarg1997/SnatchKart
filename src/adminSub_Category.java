import Database.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Sub_Category
 */
@WebServlet("/Sub_Category")
public class adminSub_Category extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public adminSub_Category() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("Admin/sub_category.jsp");
		Adminbean bean = new Adminbean();
		Admin_Doa ad = new Admin_Doa();
		if (request.getParameter("msg") != null) {
			if (request.getParameter("msg").equals("add")) {
				int r = 0;
				String catt = request.getParameter("subcat");
				String cid = request.getParameter("cid");
				if (!catt.equalsIgnoreCase("")) {
					bean.setSub_cat(catt);
					bean.setCat_id(Integer.parseInt(cid));
					r = ad.setSubCategory(bean);
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
				r = ad.deleteSubCategoryById(request.getParameter("catid"));
				if (r > 0) {
					request.setAttribute("msg", "delsuc");
					rd.forward(request, response);
				} else {
					request.setAttribute("msg", "delunsuc");
					rd.forward(request, response);
				}
			} else if (request.getParameter("msg").equals("update")) {

				ad.updateSubcategory(request.getParameter("cid"), request.getParameter("data"),
						request.getParameter("sid"));
			}
		}
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

}
