package Database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class AdminConnect {
	public Connection con;
	public AdminConnect() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/adminstration", "root", "romil@123");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}