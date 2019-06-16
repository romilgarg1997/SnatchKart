import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Database.project_Doa;
/**
 * Servlet implementation class changepassword
 */
@WebServlet("/changepassword")
public class changepassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changepassword() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
		RequestDispatcher rd1=request.getRequestDispatcher("changepassword.jsp");
		String id=request.getParameter("id");
		project_Doa pd=new project_Doa();
		ResultSet rs=pd.userlogin(Integer.parseInt(id));
		int r;
		try {
			if(rs.next())
			{
				if(rs.getString("password").equals(request.getParameter("oldpassword")))
				{
					if(request.getParameter("password").equals(request.getParameter("confirm")))
					{
						r=pd.updatePass(id,request.getParameter("password"));
						if(r>0)
						{
							request.setAttribute("msg","changesuc");
							rd.forward(request, response);
						}
						else
						{
							request.setAttribute("msg","changeunsuc");
							rd.forward(request, response);
						}
					}
					else
					{
						request.setAttribute("msg","changediff");
						rd1.forward(request, response);
					}
				}
				else
				{
					request.setAttribute("msg","changeolddiff");
					rd1.forward(request, response);
				}
			}
			else
			{
				request.setAttribute("msg","changeidnotexist");
				rd.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
