import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Database.projectbean;
/**
 * Servlet implementation class checkout_3
 */
@WebServlet("/checkout_3")
public class checkout_3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public checkout_3() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
		List<String> addr=(ArrayList<String>)session.getAttribute("tempadd");
		List<Integer> quan=(ArrayList<Integer>)session.getAttribute("quantity"); 
		List<Integer> pid=(ArrayList<Integer>)session.getAttribute("pid"); 
		response.sendRedirect("checkout-4.jsp");
	}
}
