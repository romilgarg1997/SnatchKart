import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
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
/**
 * Servlet implementation class forgotpasswordmail
 */
@WebServlet("/forgotpasswordmail")
public class forgotpasswordmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public forgotpasswordmail() {
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
	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		project_Doa pd = new project_Doa();
		String url=request.getHeader("referer");
		RequestDispatcher rd = null;
		try {
			URI uri = new URI(url);
			String u=uri.getPath();
			String[] result = u.split("/");
			request.setAttribute("link", result[2]);
			rd=request.getRequestDispatcher(result[2]);
		} catch (URISyntaxException e1) {
			e1.printStackTrace();
		}
		String email = request.getParameter("email");
		ResultSet rs = pd.userlogin();
		if (email != null || email != "") {
			try {
				while (rs.next()) {
					if (rs.getString("email").equals(email)) {
						try {
							String host = "smtp.gmail.com";
							String user = "infosnatchkart@gmail.com";
							String pss = "Romil@123";
							String to = email;
							String from = user;
							String random = getAlphaNumericString(6);
							pd.randomstr(random, rs.getInt("uid"));
							String subject1 = "Link for Reset Password";
							String message = "<html>\r\n" + "<head>\r\n" + "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n" + "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n" + "<title>Set up a new password for SnatchKart</title>\r\n" + "<style type=\"text/css\" rel=\"stylesheet\" media=\"all\">\r\n" + "*:not(br):not(tr):not(html) {\r\n" + "font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif;\r\n" + "box-sizing: border-box;\r\n" + "}\r\n" + "\r\n" + "body {\r\n" + "width: 100% !important;\r\n" + "height: 100%;\r\n" + "margin: 0;\r\n" + "line-height: 1.4;\r\n" + "background-color: #F2F4F6;\r\n" + "color: #74787E;\r\n" + "-webkit-text-size-adjust: none;\r\n" + "}\r\n" + "\r\n" + "p, ul, ol, blockquote {\r\n" + "line-height: 1.4;\r\n" + "text-align: left;\r\n" + "}\r\n" + "\r\n" + "a {\r\n" + "color: #3869D4;\r\n" + "}\r\n" + "\r\n" + "a img {\r\n" + "border: none;\r\n" + "}\r\n" + "\r\n" + "td {\r\n" + "word-break: break-word;\r\n" + "}\r\n" + "\r\n" + ".email-wrapper {\r\n" + "width: 100%;\r\n" + "margin: 0;\r\n" + "padding: 0;\r\n" + "-premailer-width: 100%;\r\n" + "-premailer-cellpadding: 0;\r\n" + "-premailer-cellspacing: 0;\r\n" + "background-color: #F2F4F6;\r\n" + "}\r\n" + "\r\n" + ".email-content {\r\n" + "width: 100%;\r\n" + "margin: 0;\r\n" + "padding: 0;\r\n" + "-premailer-width: 100%;\r\n" + "-premailer-cellpadding: 0;\r\n" + "-premailer-cellspacing: 0;\r\n" + "}\r\n" + "\r\n" + ".email-masthead {\r\n" + "padding: 25px 0;\r\n" + "text-align: center;\r\n" + "}\r\n" + "\r\n" + ".email-masthead_logo {\r\n" + "width: 94px;\r\n" + "}\r\n" + "\r\n" + ".email-masthead_name {\r\n" + "font-size: 16px;\r\n" + "font-weight: bold;\r\n" + "color: #bbbfc3;\r\n" + "text-decoration: none;\r\n" + "text-shadow: 0 1px 0 white;\r\n" + "}\r\n" + "\r\n" + ".email-body {\r\n" + "width: 100%;\r\n" + "margin: 0;\r\n" + "padding: 0;\r\n" + "-premailer-width: 100%;\r\n" + "-premailer-cellpadding: 0;\r\n" + "-premailer-cellspacing: 0;\r\n" + "border-top: 1px solid #EDEFF2;\r\n" + "border-bottom: 1px solid #EDEFF2;\r\n" + "background-color: #FFFFFF;\r\n" + "}\r\n" + "\r\n" + ".email-body_inner {\r\n" + "width: 570px;\r\n" + "margin: 0 auto;\r\n" + "padding: 0;\r\n" + "-premailer-width: 570px;\r\n" + "-premailer-cellpadding: 0;\r\n" + "-premailer-cellspacing: 0;\r\n" + "background-color: #FFFFFF;\r\n" + "}\r\n" + "\r\n" + ".email-footer {\r\n" + "width: 570px;\r\n" + "margin: 0 auto;\r\n" + "padding: 0;\r\n" + "-premailer-width: 570px;\r\n" + "-premailer-cellpadding: 0;\r\n" + "-premailer-cellspacing: 0;\r\n" + "text-align: center;\r\n" + "}\r\n" + "\r\n" + ".email-footer p {\r\n" + "color: #AEAEAE;\r\n" + "}\r\n" + "\r\n" + ".body-action {\r\n" + "width: 100%;\r\n" + "margin: 30px auto;\r\n" + "padding: 0;\r\n" + "-premailer-width: 100%;\r\n" + "-premailer-cellpadding: 0;\r\n" + "-premailer-cellspacing: 0;\r\n" + "text-align: center;\r\n" + "}\r\n" + "\r\n" + ".body-sub {\r\n" + "margin-top: 25px;\r\n" + "padding-top: 25px;\r\n" + "border-top: 1px solid #EDEFF2;\r\n" + "}\r\n" + "\r\n" + ".content-cell {\r\n" + "padding: 35px;\r\n" + "}\r\n" + "\r\n" + ".preheader {\r\n" + "display: none !important;\r\n" + "visibility: hidden;\r\n" + "mso-hide: all;\r\n" + "font-size: 1px;\r\n" + "line-height: 1px;\r\n" + "max-height: 0;\r\n" + "max-width: 0;\r\n" + "opacity: 0;\r\n" + "overflow: hidden;\r\n" + "}\r\n" + "\r\n" + ".attributes {\r\n" + "margin: 0 0 21px;\r\n" + "}\r\n" + "\r\n" + ".attributes_content {\r\n" + "background-color: #EDEFF2;\r\n" + "padding: 16px;\r\n" + "}\r\n" + "\r\n" + ".attributes_item {\r\n" + "padding: 0;\r\n" + "}\r\n" + "\r\n" + ".related {\r\n" + "width: 100%;\r\n" + "margin: 0;\r\n" + "padding: 25px 0 0 0;\r\n" + "-premailer-width: 100%;\r\n" + "-premailer-cellpadding: 0;\r\n" + "-premailer-cellspacing: 0;\r\n" + "}\r\n" + "\r\n" + ".related_item {\r\n" + "padding: 10px 0;\r\n" + "color: #74787E;\r\n" + "font-size: 15px;\r\n" + "line-height: 18px;\r\n" + "}\r\n" + "\r\n" + ".related_item-title {\r\n" + "display: block;\r\n" + "margin: .5em 0 0;\r\n" + "}\r\n" + "\r\n" + ".related_item-thumb {\r\n" + "display: block;\r\n" + "padding-bottom: 10px;\r\n" + "}\r\n" + "\r\n" + ".related_heading {\r\n" + "border-top: 1px solid #EDEFF2;\r\n" + "text-align: center;\r\n" + "padding: 25px 0 10px;\r\n" + "}\r\n" + "\r\n" + ".discount {\r\n" + "width: 100%;\r\n" + "margin: 0;\r\n" + "padding: 24px;\r\n" + "-premailer-width: 100%;\r\n" + "-premailer-cellpadding: 0;\r\n" + "-premailer-cellspacing: 0;\r\n" + "background-color: #EDEFF2;\r\n" + "border: 2px dashed #9BA2AB;\r\n" + "}\r\n" + "\r\n" + ".discount_heading {\r\n" + "text-align: center;\r\n" + "}\r\n" + "\r\n" + ".discount_body {\r\n" + "text-align: center;\r\n" + "font-size: 15px;\r\n" + "}\r\n" + "\r\n" + ".social {\r\n" + "width: auto;\r\n" + "}\r\n" + "\r\n" + ".social td {\r\n" + "padding: 0;\r\n" + "width: auto;\r\n" + "}\r\n" + "\r\n" + ".social_icon {\r\n" + "height: 20px;\r\n" + "margin: 0 8px 10px 8px;\r\n" + "padding: 0;\r\n" + "}\r\n" + "\r\n" + ".purchase {\r\n" + "width: 100%;\r\n" + "margin: 0;\r\n" + "padding: 35px 0;\r\n" + "-premailer-width: 100%;\r\n" + "-premailer-cellpadding: 0;\r\n" + "-premailer-cellspacing: 0;\r\n" + "}\r\n" + "\r\n" + ".purchase_content {\r\n" + "width: 100%;\r\n" + "margin: 0;\r\n" + "padding: 25px 0 0 0;\r\n" + "-premailer-width: 100%;\r\n" + "-premailer-cellpadding: 0;\r\n" + "-premailer-cellspacing: 0;\r\n" + "}\r\n" + "\r\n" + ".purchase_item {\r\n" + "padding: 10px 0;\r\n" + "color: #74787E;\r\n" + "font-size: 15px;\r\n" + "line-height: 18px;\r\n" + "}\r\n" + "\r\n" + ".purchase_heading {\r\n" + "padding-bottom: 8px;\r\n" + "border-bottom: 1px solid #EDEFF2;\r\n" + "}\r\n" + "\r\n" + ".purchase_heading p {\r\n" + "margin: 0;\r\n" + "color: #9BA2AB;\r\n" + "font-size: 12px;\r\n" + "}\r\n" + "\r\n" + ".purchase_footer {\r\n" + "padding-top: 15px;\r\n" + "border-top: 1px solid #EDEFF2;\r\n" + "}\r\n" + "\r\n" + ".purchase_total {\r\n" + "margin: 0;\r\n" + "text-align: right;\r\n" + "font-weight: bold;\r\n" + "color: #2F3133;\r\n" + "}\r\n" + "\r\n" + ".purchase_total--label {\r\n" + "padding: 0 15px 0 0;\r\n" + "}\r\n" + "\r\n" + ".align-right {\r\n" + "text-align: right;\r\n" + "}\r\n" + "\r\n" + ".align-left {\r\n" + "text-align: left;\r\n" + "}\r\n" + "\r\n" + ".align-center {\r\n" + "text-align: center;\r\n" + "}\r\n" + "\r\n" + "@media only screen and (max-width: 600px) {\r\n" + ".email-body_inner, .email-footer {\r\n" + "width: 100% !important;\r\n" + "}\r\n" + "}\r\n" + "\r\n" + "@media only screen and (max-width: 500px) {\r\n" + ".button {\r\n" + "width: 100% !important;\r\n" + "}\r\n" + "}\r\n" + "\r\n" + ".button {\r\n" + "background-color: #3869D4;\r\n" + "border-top: 10px solid #3869D4;\r\n" + "border-right: 18px solid #3869D4;\r\n" + "border-bottom: 10px solid #3869D4;\r\n" + "border-left: 18px solid #3869D4;\r\n" + "display: inline-block;\r\n" + "color: #FFF;\r\n" + "text-decoration: none;\r\n" + "border-radius: 3px;\r\n" + "box-shadow: 0 2px 3px rgba(0, 0, 0, 0.16);\r\n" + "-webkit-text-size-adjust: none;\r\n" + "}\r\n" + "\r\n" + ".button--green {\r\n" + "background-color: #22BC66;\r\n" + "border-top: 10px solid #22BC66;\r\n" + "border-right: 18px solid #22BC66;\r\n" + "border-bottom: 10px solid #22BC66;\r\n" + "border-left: 18px solid #22BC66;\r\n" + "}\r\n" + "\r\n" + ".button--red {\r\n" + "background-color: #FF6136;\r\n" + "border-top: 10px solid #FF6136;\r\n" + "border-right: 18px solid #FF6136;\r\n" + "border-bottom: 10px solid #FF6136;\r\n" + "border-left: 18px solid #FF6136;\r\n" + "}\r\n" + "\r\n" + "h1 {\r\n" + "margin-top: 0;\r\n" + "color: #2F3133;\r\n" + "font-size: 19px;\r\n" + "font-weight: bold;\r\n" + "text-align: center;\r\n" + "}\r\n" + "\r\n" + "h2 {\r\n" + "margin-top: 0;\r\n" + "color: #2F3133;\r\n" + "font-size: 16px;\r\n" + "font-weight: bold;\r\n" + "text-align: left;\r\n" + "}\r\n" + "\r\n" + "h3 {\r\n" + "margin-top: 0;\r\n" + "color: #2F3133;\r\n" + "font-size: 14px;\r\n" + "font-weight: bold;\r\n" + "text-align: left;\r\n" + "}\r\n" + "\r\n" + "p {\r\n" + "margin-top: 0;\r\n" + "color: #74787E;\r\n" + "font-size: 16px;\r\n" + "line-height: 1.5em;\r\n" + "text-align: left;\r\n" + "}\r\n" + "\r\n" + "p.sub {\r\n" + "font-size: 12px;\r\n" + "}\r\n" + "\r\n" + "p.center {\r\n" + "text-align: center;\r\n" + "}\r\n" + "</style>\r\n" + "</head>\r\n" + "<body>\r\n" + "<span class=\"preheader\">Use this link to reset your password.\r\n" + "The link is only valid for 24 hours.</span>\r\n" + "<table class=\"email-wrapper\" width=\"100%\" cellpadding=\"0\"\r\n" + "cellspacing=\"0\">\r\n" + "<tr>\r\n" + "<td align=\"center\">\r\n" + "<table class=\"email-content\" width=\"100%\" cellpadding=\"0\"\r\n" + "cellspacing=\"0\">\r\n" + "<tr>\r\n" + "<td class=\"email-masthead\"><h1>SnatchKart</h1>" + "</td>\r\n" + "</tr>\r\n" + "<tr>\r\n" + "<td class=\"email-body\" width=\"100%\" cellpadding=\"0\"\r\n" + "cellspacing=\"0\">\r\n" + "<table class=\"email-body_inner\" align=\"center\" width=\"570\"\r\n" + "cellpadding=\"0\" cellspacing=\"0\">\r\n" + "<!-- Body content -->\r\n" + "<tr>\r\n" + "<td class=\"content-cell\">\r\n" + "<h2>Hi,"+rs.getString("name")+"</h2>"+"<p>\r\n" + "You recently requested to reset your password for your\r\n" + "SnatchKart account. Use the button below to reset it. <strong>This\r\n" + "password reset is only valid for the next 24 hours.</strong>\r\n" + "</p> <!-- Action -->\r\n" + "<table class=\"body-action\" align=\"center\" width=\"100%\"\r\n" + "cellpadding=\"0\" cellspacing=\"0\">\r\n" + "<tr>\r\n" + "<td align=\"center\">\r\n" + "<table width=\"100%\" border=\"0\" cellspacing=\"0\"\r\n" + "cellpadding=\"0\">\r\n" + "<tr>\r\n" + "<td align=\"center\">\r\n" + "<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n" + "<tr>\r\n" + "<td><a \"class=\\\"button button--green\\\" target=\\\"_blank\\\" href=http://localhost:7008/E-commerce/passforget.jsp?id="+rs.getString("uid")+"&rc="+random+">Reset\r\n" + "your password</a></td>\r\n" + "</tr>\r\n" + "</table>\r\n" + "</td>\r\n" + "</tr>\r\n" + "</table>\r\n" + "</td>\r\n" + "</tr>\r\n" + "</table>\r\n" + "<p>\r\n" + "If you did not request a password reset, please ignore this\r\n" + "email or <a href=mailto:infosnatchkart@gmail.com/>contact\r" + "support</a> if you have questions.\r\n" + "</p>\r\n" + "<p>\r\n" + "Thanks, <br>The SnatchKart Team \r\n" + "</p> <!-- Sub copy -->\r\n" + "<table class=\"body-sub\">\r\n" + "<tr>\r\n" + "<td>\r\n" + "<p class=\"sub\">If you are having trouble with the\r\n" + "button above, copy and paste the URL below into your web\r\n" + "browser.</p>\r\n" + "<p class=\"sub\">http://localhost:7008/E-commerce/passforget.jsp?id="+rs.getString("uid")+"&rc="+random+"</td>\r\n" + "</tr>\r\n" + "</table>\r\n" + "</td>\r\n" + "</tr>\r\n" + "</table>\r\n" + "</td>\r\n" + "</tr>\r\n" + "<tr>\r\n" + "<td>\r\n" + "<table class=\"email-footer\" align=\"center\" width=\"570\"\r\n" + "cellpadding=\"0\" cellspacing=\"0\">\r\n" + "<tr>\r\n" + "<td class=\"content-cell\" align=\"center\">\r\n" + "<p class=\"sub align-center\">&copy;2019 SnatchKart. All\r\n" + "rights reserved | Design by Romil Garg.</p>\r\n" + "</td>\r\n" + "</tr>\r\n" + "</table>\r\n" + "</td>\r\n" + "</tr>\r\n" + "</table>\r\n" + "</td>\r\n" + "</tr>\r\n" + "</table>\r\n" + "</body>\r\n" + "</html>";
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
							msg.setContent(message, "text/html");
							Transport transport = mailSession.getTransport("smtp");
							transport.connect(host, user, pss);
							transport.sendMessage(msg, msg.getAllRecipients());
							transport.close();
							request.setAttribute("msg", "forgotmailsuc");
							rd.forward(request, response);
						} catch (Exception e) {}
					}
					else
					{
						request.setAttribute("msg", "forgotmailerr");
						rd.forward(request, response);
					}
				}
			} catch (SQLException e) {}
		} else {
			request.setAttribute("msg", "forgotmailempty");
			rd.forward(request, response);
		}
	}
	static String getAlphaNumericString(int n) {
		String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "0123456789" + "abcdefghijklmnopqrstuvxyz";
		StringBuilder sb = new StringBuilder(n);
		for (int i = 0; i < n; i++) {
			int index = (int) (AlphaNumericString.length() * Math.random());
			sb.append(AlphaNumericString.charAt(index));
		}
		return sb.toString();
	}
}
