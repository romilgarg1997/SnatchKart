import java.util.List;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Database.project_Doa;
import Database.projectbean;
/**
 * Servlet implementation class checkout_2
 */
@WebServlet("/checkout_2")
public class checkout_2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public checkout_2() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		project_Doa pd=new project_Doa();
		projectbean bean=new projectbean();
		RequestDispatcher rd=request.getRequestDispatcher("checkout-3.jsp");
		RequestDispatcher rd1=request.getRequestDispatcher("checkout-2.jsp");
		if(request.getParameter("name")!=null||request.getParameter("name")!=""||
				request.getParameter("mobile")!=null||request.getParameter("mobile")!=""||
				request.getParameter("address")!=null||request.getParameter("address")!=""||
				request.getParameter("pin")!=null||request.getParameter("pin")!=""||
				request.getParameter("district")!=null||request.getParameter("district")!=""||
				request.getParameter("state")!=null||request.getParameter("state")!="")
		{
			List<String> addr=new ArrayList<String>(10);
			java.util.Enumeration names = request.getParameterNames();
			while(names.hasMoreElements())
			{
				String name=(String)names.nextElement();	
				addr.add(request.getParameter(name));
			}
			HttpSession session=request.getSession();
			session.setAttribute("tempadd", addr);	
		}
		response.sendRedirect("checkout-3.jsp");
	}
}
