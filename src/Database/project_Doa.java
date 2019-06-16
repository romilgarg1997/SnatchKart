package Database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class project_Doa {
	public Connection con;
	public project_Doa() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-commerce", "root", "romil@123");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public int userregis(projectbean pb) {
		int res = 0;
		try {
			PreparedStatement pr = con.prepareStatement("insert into user(name,email,password,mobile,dob)values(?,?,?,?,?)");
			pr.setString(1, pb.getName());
			pr.setString(2, pb.getEmail());
			pr.setString(3, pb.getPassword());
			pr.setString(4, pb.getMobile());
			pr.setString(5, pb.getDob());
			res = pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	public ResultSet userlogin() {
		ResultSet rs = null;
		try {
			PreparedStatement pr = con.prepareStatement("select * from user");
			rs = pr.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet userlogin(int id) {
		ResultSet rs = null;
		try {
			PreparedStatement pr = con.prepareStatement("select * from user where uid=?");
			pr.setInt(1, id);
			rs = pr.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet userlogin(String email) {
		ResultSet rs = null;
		try {
			PreparedStatement pr = con.prepareStatement("select * from user where email=?");
			pr.setString(1, email);
			rs = pr.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public int addContact(projectbean pb) {
		int res = 0;
		try {
			PreparedStatement pr = con.prepareStatement("insert into contact(name,email,subject,message,date)values(?,?,?,?,?)");
			pr.setString(1, pb.getName());
			pr.setString(2, pb.getEmail());
			pr.setString(3, pb.getSubject());
			pr.setString(4, pb.getMessage());
			java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
			pr.setTimestamp(5, date);
			res = pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	public ResultSet getContactUs() {
		ResultSet rs = null;
		try {
			PreparedStatement pr = con.prepareStatement("select * from contact");
			rs = pr.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public int deleteConById(String cid) {
		int rs = 0;
		try {
			PreparedStatement pr = con.prepareStatement("delete  from contact where con_id=?");
			pr.setInt(1, Integer.parseInt(cid));
			rs = pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public void conclose() throws SQLException {
		con.close();
	}
	public int updatePass(String id,String pass) throws SQLException {
		int rs=0;
		PreparedStatement pr = con.prepareStatement("update user set password=? where uid=?");
		pr.setString(1, pass);
		pr.setInt(2, Integer.parseInt(id));
		rs = pr.executeUpdate();
		PreparedStatement pr1 = con.prepareStatement("UPDATE user SET ranforgotpass = NULL WHERE (uid= ?)");
		pr1.setInt(1, Integer.parseInt(id));
		pr1.executeUpdate();
		return rs;
	}
	public int updateUser(projectbean bean,String email) {
		int rs=0;
		try {
		PreparedStatement pr = con.prepareStatement("update user set name=?,email=?,dob=?,mobile=?,img=? where email=?");
		pr.setString(1, bean.getName());
		pr.setString(2, bean.getEmail());
		pr.setString(3, bean.getDob());
		pr.setString(4,bean.getMobile());
		pr.setBlob(5, bean.getInput());
		pr.setString(6,email );
		rs = pr.executeUpdate();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public void randomstr(String ran,int id) {
		int rs=0;
		try {
		PreparedStatement pr = con.prepareStatement("update user set ranforgotpass=? where uid=?");
		pr.setString(1, ran);
		pr.setInt(2,id);
		rs = pr.executeUpdate();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public ResultSet getAddress(int id)
	{
		ResultSet rs = null;
		try {
			PreparedStatement pr = con.prepareStatement("select * from address where uid=?");
			pr.setInt(1, id);
			rs = pr.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet getAddressByAid(int id)
	{
		ResultSet rs = null;
		try {
			PreparedStatement pr = con.prepareStatement("select * from address where aid=?");
			pr.setInt(1, id);
			rs = pr.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public int setAddress(projectbean pb)
	{
		int res = 0;
		try {
			PreparedStatement pr = con.prepareStatement("insert into address(uid,name,mobile,Address,locality,district,state,pincode)values(?,?,?,?,?,?,?,?)");
			pr.setString(1, pb.getUid());
			pr.setString(2, pb.getName());
			pr.setString(3, pb.getMobile());
			pr.setString(4, pb.getAddress());
			pr.setString(5, pb.getLocality());
			pr.setString(6, pb.getDistrict());
			pr.setString(7, pb.getState());
			pr.setString(8, pb.getPin());
			res = pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	public int deleteAddByAid(String aid) {
		int rs = 0;
		try {
			PreparedStatement pr = con.prepareStatement("delete  from address where aid=?");
			pr.setInt(1, Integer.parseInt(aid));
			rs = pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public int updateAddress(projectbean bean) {
		int rs=0;
		try {
		PreparedStatement pr = con.prepareStatement("update address set name=?,mobile=?,Address=?,district=?,state=?,pincode=? where aid=?");
		pr.setString(1, bean.getName());
		pr.setString(2, bean.getMobile());
		pr.setString(3, bean.getAddress());
		pr.setString(4,bean.getDistrict());
		pr.setString(5, bean.getState());
		pr.setString(6,bean.getPin());
		pr.setString(7,bean.getUid());
		rs = pr.executeUpdate();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public int setAddressCheckout(projectbean bean) {
		// TODO Auto-generated method stub
		return 1;
	}
}
