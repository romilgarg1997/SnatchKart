import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Database.Admin_Doa;
import Database.Adminbean;
/**
 * Servlet implementation class finalcheckout
 */
@WebServlet("/finalcheckout")
public class finalcheckout extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public finalcheckout() {
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
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		if (request.getParameter("msg").equals("cash")) {
			HttpSession session = request.getSession();
			List<String> addr = (ArrayList<String>) session.getAttribute("tempadd");
			List<Integer> quan = (ArrayList<Integer>) session.getAttribute("quantity");
			List<Integer> pid = (ArrayList<Integer>) session.getAttribute("pid");
			String amount = session.getAttribute("checkcost").toString();
			Admin_Doa ad = new Admin_Doa();
			for(int i=0;i<pid.size();i++)
			{
				ResultSet rs=ad.getProductbypid(pid.get(i));
				try {
					rs.next();
					int quantity=rs.getInt("quantity");
					quantity=quantity-quan.get(i);
					ad.updateQuantity(pid.get(i), quantity);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			Adminbean bean = new Adminbean();
			bean.setPidlist(pid.toString());
			bean.setQuanlist(quan.toString());
			bean.setEmail(addr.get(3));
			bean.setAmount(amount);
			bean.setMode("cash");
			
			int r = ad.setOrder(bean);
			if (r > 0) {
				request.setAttribute("msg", "ordersucc");
				rd.forward(request, response);
			}
		}
	}
}
