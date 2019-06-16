import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class signout
 */
@WebServlet("/signout")
public class signout extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signout() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		String url=request.getHeader("referer");
		RequestDispatcher rd1 = null;
		try {
			URI uri = new URI(url);
			String u=uri.getPath();
			String[] result = u.split("/");
			rd1=request.getRequestDispatcher(result[2]);
		HttpSession ses = request.getSession(false);
		ses.setAttribute("loginuser", "");
		ses.setAttribute("loginemail", "");
		ses.invalidate();
		request.setAttribute("msg", "signout");
		request.setAttribute("link",result[2]);
		rd1.forward(request, response);
		} catch (URISyntaxException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
