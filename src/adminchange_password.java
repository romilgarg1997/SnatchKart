import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Database.Admin_Doa;
/**
 * Servlet implementation class change_password
 */
@WebServlet("/change_password")
public class adminchange_password extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminchange_password() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		RequestDispatcher rd = request.getRequestDispatcher("Admin/Change_Password.jsp");
		String old=null,nw=null,confirm=null;
		old=request.getParameter("old");
		nw=request.getParameter("new");
		confirm=request.getParameter("confirm");
		Admin_Doa ad=new Admin_Doa();
		ResultSet rs=ad.getadminLogin();
		try {
			if(rs.next())
			{
				if(old.equals(rs.getString("password")))
				{
					if(nw.equals(confirm))
					{
						int r=ad.setPassword(nw,old);
						if (r > 0) 
						{
							request.setAttribute("msg", "suc");
							rd.forward(request, response);
						} 
						else 
						{
							request.setAttribute("msg", "unsuc");
							rd.forward(request, response);
						}
					}
					else
					{
						request.setAttribute("msg", "diff");
						rd.forward(request, response);
					}
				}
				else
				{
					request.setAttribute("msg", "old");
					rd.forward(request, response);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
