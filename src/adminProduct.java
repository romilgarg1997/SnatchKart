import java.io.IOException;
import java.io.InputStream;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import Database.Admin_Doa;
import Database.Adminbean;
/**
 * Servlet implementation class Sub_Category
 */
@MultipartConfig
@WebServlet("/Product")
public class adminProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public adminProduct() {
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
		RequestDispatcher rd = request.getRequestDispatcher("Admin/Product.jsp");
		Adminbean bean = new Adminbean();
		Admin_Doa ad = new Admin_Doa();
		if (request.getParameter("msg") != null) {
			if (request.getParameter("msg").equals("add")) {
				int r = 0;
				String productname = request.getParameter("productname");
				String regprice = request.getParameter("regprice");
				String tax = request.getParameter("tax");
				String prodiscription = request.getParameter("prodescription");
				String saleprice = request.getParameter("saleprice");
				String quantity = request.getParameter("quantity");
				String cid = request.getParameter("cid");
				String sid = request.getParameter("sid");
				InputStream inputStream = null;
				Part filePart = request.getPart("file");
				inputStream = filePart.getInputStream();
				if (!productname.equalsIgnoreCase("") && !regprice.equalsIgnoreCase("") && !tax.equalsIgnoreCase("")
						&& !prodiscription.equalsIgnoreCase("") && !saleprice.equalsIgnoreCase("")
						&& !quantity.equalsIgnoreCase("") && inputStream != null) {
					bean.setProductname(productname);
					bean.setRegprice(Integer.parseInt(regprice));
					bean.setTax(Integer.parseInt(tax));
					bean.setProdiscription(prodiscription);
					bean.setSaleprice(Integer.parseInt(saleprice));
					bean.setQuantity(Integer.parseInt(quantity));
					bean.setInput(inputStream);
					bean.setCat_id(Integer.parseInt(cid));
					bean.setSid(Integer.parseInt(sid));
					r = ad.setProduct(bean);
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
				r = ad.deleteProduct(request.getParameter("catid"));
				if (r > 0) {
					request.setAttribute("msg", "delsuc");
					rd.forward(request, response);
				} else {
					request.setAttribute("msg", "delunsuc");
					rd.forward(request, response);
				}
			} else if (request.getParameter("msg").equals("update")) {
				if (!request.getParameter("proanme").equalsIgnoreCase("")
						&& !request.getParameter("regprice").equalsIgnoreCase("")
						&& !request.getParameter("tax").equalsIgnoreCase("")
						&& !request.getParameter("prodis").equalsIgnoreCase("")
						&& !request.getParameter("saleprice").equalsIgnoreCase("")
						&& !request.getParameter("quantity").equalsIgnoreCase("")) {
					String pid = request.getParameter("pid");
					bean.setProductname(request.getParameter("proanme"));
					bean.setRegprice(Integer.parseInt(request.getParameter("regprice")));
					bean.setTax(Integer.parseInt(request.getParameter("tax")));
					bean.setProdiscription(request.getParameter("prodis"));
					bean.setSaleprice(Integer.parseInt(request.getParameter("saleprice")));
					bean.setQuantity(Integer.parseInt(request.getParameter("quantity")));
					bean.setCat_id(Integer.parseInt(request.getParameter("cid")));
					bean.setSid(Integer.parseInt(request.getParameter("sid")));
					int r;
					r = ad.updateProduct(bean, pid);
					if (r > 0) {
						request.setAttribute("msg", "updatesuc");
					} else {
						request.setAttribute("msg", "updatenosuc");
					}
					rd.forward(request, response);
				} else {
					request.setAttribute("msg", "updateemp");
					rd.forward(request, response);
				}
			}
		}
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
