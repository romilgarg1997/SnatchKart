import java.io.IOException;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Database.project_Doa;
import Database.projectbean;
/**
 * Servlet implementation class contactdata
 */
@WebServlet("/contactdata")
public class contactdata extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public contactdata() {
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
		String email = request.getParameter("Email");
		String subject = request.getParameter("Subject");
		RequestDispatcher rd = request.getRequestDispatcher("contact.jsp");
		RequestDispatcher rd1 = request.getRequestDispatcher("Admin/index.jsp");
		projectbean pb = new projectbean();
		project_Doa pd = new project_Doa();
		if (request.getParameter("msg").equals("add")) {
			pb.setName(request.getParameter("Name"));
			pb.setEmail(email);
			pb.setSubject(subject);
			pb.setMessage(request.getParameter("Message"));
			pd.addContact(pb);
			sendMail(email, subject);
			request.setAttribute("msg", "contactsuc");
			rd.forward(request, response);
		} else {
			pd.deleteConById(request.getParameter("cid"));
			request.setAttribute("msg", "contactdel");
			rd1.forward(request, response);
		}
		try {
			pd.conclose();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void sendMail(String email, String subject) {
		project_Doa pd1 = new project_Doa();
		ResultSet rs = pd1.getContactUs();
		try {
			while (rs.next()) {
				if (rs.getString("email").equals(email) && rs.getString("subject").equals(subject)) {
					try {
						String host = "smtp.gmail.com";
						String user = "infosnatchkart@gmail.com";
						String pss = "Romil@123";
						String to = email;
						String from = user;
						String subject1 = "# " + rs.getString("con_id") + " / Regarding yout query: " + subject;
						String message = "Thank you for your valuable feedback and we will get in touch with you with the solution if additional queries please reply on this mail.";
						boolean sessionDebug = false;
						Properties pros = System.getProperties();
						pros.put("mail.smtp.starttls.enable", "tue");
						pros.put("mail.smtp.host", "host");
						pros.put("mail.smtp.auth", "true");
						pros.put("mail.smtp.port", "587");
						pros.put("mail.smtp.starttls.required", "true");
						Session mailSession = Session.getDefaultInstance(pros, null);
						mailSession.setDebug(sessionDebug);
						Message msg = new MimeMessage(mailSession);
						msg.setFrom(new InternetAddress(from));
						InternetAddress[] address = { new InternetAddress(to) };
						msg.setRecipients(Message.RecipientType.TO, address);
						msg.setSubject(subject1);
						msg.setSentDate(new Date(0));
						msg.setText(message);
						Transport transport = mailSession.getTransport("smtp");
						transport.connect(host, user, pss);
						transport.sendMessage(msg, msg.getAllRecipients());
						transport.close();
					} catch (Exception e) {
						System.out.println(e);
					}
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}