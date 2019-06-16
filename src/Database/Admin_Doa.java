package Database;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class Admin_Doa {
	AdminConnect con1 = new AdminConnect();
	// category start
	public int setCategory(Adminbean bean) {
		String cat = bean.getCategory_name();
		int res = 0;
		try {
			PreparedStatement pr = con1.con.prepareStatement("insert into category(category)values(?)");
			pr.setString(1, cat);
			res = pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	public ResultSet getCategory() {
		ResultSet rs = null;
		try {
			PreparedStatement pr = con1.con.prepareStatement("select * from category");
			rs = pr.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public int deleteCategoryById(String cid) {
		int rs = 0;
		try {
			PreparedStatement pr = con1.con.prepareStatement("delete  from category where cid=?");
			pr.setInt(1, Integer.parseInt(cid));
			rs = pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	// category end
	// sub-category start
	public int setSubCategory(Adminbean bean) {
		String cat = bean.getSub_cat();
		int cid = bean.getCat_id();
		int res = 0;
		try {
			PreparedStatement pr = con1.con.prepareStatement("insert into sub_category(cid,sub_category)values(?,?)");
			pr.setInt(1, cid);
			pr.setString(2, cat);
			res = pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	public ResultSet getSubCategory() {
		ResultSet rs = null;
		try {
			PreparedStatement pr = con1.con
					.prepareStatement("select * from category join sub_category on  category.cid=sub_category.cid");
			rs = pr.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet getCategoryByCid(String cid) {
		ResultSet rs = null;
		try {
			PreparedStatement pr = con1.con
					.prepareStatement("select * from category where cid=?");
			pr.setString(1,cid);
			rs = pr.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet getSubCategoryBycid(String cid) {
		ResultSet rs = null;
		try {
			PreparedStatement pr = con1.con.prepareStatement("select * from sub_category where cid=?");
			pr.setString(1, cid);
			rs = pr.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
		}
		return rs;
	}
	public ResultSet getSubCategoryBysid(String cid) {
		ResultSet rs = null;
		try {
			PreparedStatement pr = con1.con.prepareStatement("select * from category join sub_category on  category.cid=sub_category.cid where sid=?");
			pr.setInt(1, Integer.parseInt(cid));
			rs = pr.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public int deleteSubCategoryById(String sid) {
		int rs = 0;
		try {
			PreparedStatement pr = con1.con.prepareStatement("delete  from sub_category where sid=?");
			pr.setInt(1, Integer.parseInt(sid));
			rs = pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public int setProduct(Adminbean bean) {
		int res = 0;
		try {
			PreparedStatement pr = con1.con.prepareStatement(
					"insert into product(cid,sid,proname,prodiscription,regprice,saleprice,quantity,tax,img,date)values(?,?,?,?,?,?,?,?,?,?)");
			pr.setInt(1, bean.getCat_id());
			pr.setInt(2, bean.getSid());
			pr.setString(3, bean.getProductname());
			pr.setString(4, bean.getProdiscription());
			pr.setInt(5, bean.getRegprice());
			pr.setInt(6, bean.getSaleprice());
			pr.setInt(7, bean.getQuantity());
			pr.setInt(8, bean.getTax());
			pr.setBlob(9, bean.getInput());
			java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
			pr.setTimestamp(10, date);
			res = pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	public int deleteProduct(String pid) {
		int rs = 0;
		try {
			PreparedStatement pr = con1.con.prepareStatement("delete  from product where pid=?");
			pr.setInt(1, Integer.parseInt(pid));
			rs = pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet getProduct() {
		ResultSet rs = null;
		try {
			PreparedStatement pr = con1.con.prepareStatement(
					"SELECT * from category c JOIN sub_category sc ON c.cid=sc.cid JOIN product p ON p.sid=sc.sid order by date desc");
			rs = pr.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet getProductbycid(int id) {
		ResultSet rs = null;
		try {
			PreparedStatement pr = con1.con.prepareStatement(
					"SELECT * from category c JOIN sub_category sc ON c.cid=sc.cid JOIN product p ON p.sid=sc.sid where p.cid=? order by date desc ");
			pr.setInt(1, id);
			rs = pr.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet getProductBySid(String sid) {
		ResultSet rs = null;
		try {
			PreparedStatement pr = con1.con.prepareStatement("SELECT * from category c JOIN sub_category sc ON c.cid=sc.cid JOIN product p ON p.sid=sc.sid where p.sid=? order by date desc");
			pr.setInt(1, Integer.parseInt(sid));
			rs = pr.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet getProductbypid(String pid) {
		ResultSet rs = null;
		try {
			PreparedStatement pr = con1.con.prepareStatement(
					"SELECT * from category c JOIN sub_category sc ON c.cid=sc.cid JOIN product p ON p.sid=sc.sid where p.pid=?");
			pr.setString(1, pid);
			rs = pr.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet getProductbypid(int pid) {
		ResultSet rs = null;
		try {
			PreparedStatement pr = con1.con.prepareStatement(
					"SELECT * from category c JOIN sub_category sc ON c.cid=sc.cid JOIN product p ON p.sid=sc.sid where p.pid=?");
			pr.setInt(1, pid);
			rs = pr.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet getadminLogin() {
		ResultSet rs = null;
		try {
			PreparedStatement pr = con1.con.prepareStatement("SELECT * from adminlogin");
			rs = pr.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public int setPassword(String nw, String old) {
		int res = 0;
		try {
			PreparedStatement pr = con1.con
					.prepareStatement("UPDATE `adminstration`.`adminlogin` SET `password` = ? WHERE `password`=?;");
			pr.setString(1, nw);
			pr.setString(2, old);
			res = pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	public int updateCategoryName(String id, String data) {
		int res = 0;
		try {
			PreparedStatement pr = con1.con
					.prepareStatement("UPDATE `adminstration`.`category` SET `category` = ? WHERE (`cid` = ?);");
			pr.setString(1, data);
			pr.setString(2, id);
			res = pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	public void updateSubcategory(String cid, String data, String sid) {
		try {
			PreparedStatement pr = con1.con
					.prepareStatement("UPDATE sub_category SET cid = ?, sub_category=? WHERE (`sid` = ?);");
			pr.setString(1, cid);
			pr.setString(2,data);
			pr.setString(3, sid);
			pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public int updateProduct(Adminbean bean, String pid) {
		int res = 0;
		try {
			PreparedStatement pr = con1.con.prepareStatement(
					"update product set cid=?,sid=?,proname=?,prodiscription=?,regprice=?,saleprice=?,quantity=?,tax=? where pid=?");
			pr.setInt(1, bean.getCat_id());
			pr.setInt(2, bean.getSid());
			pr.setString(3, bean.getProductname());
			pr.setString(4, bean.getProdiscription());
			pr.setInt(5, bean.getRegprice());
			pr.setInt(6, bean.getSaleprice());
			pr.setInt(7, bean.getQuantity());
			pr.setInt(8, bean.getTax());
			pr.setString(9, pid);
			res = pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	public int setOrder(Adminbean bean) {
		int res=0;
		try {
			PreparedStatement pr = con1.con
					.prepareStatement("insert into ordercheck(pidlist,quanlist,email,mode,amount)values(?,?,?,?,?)");
			pr.setString(1, bean.getPidlist());
			pr.setString(2,bean.getQuanlist());
			pr.setString(3, bean.getEmail());
			pr.setString(4, bean.getMode());
			pr.setString(5, bean.getAmount());
			res = pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	public ResultSet getAllOrder() {
		ResultSet rs = null;
		try {
			PreparedStatement pr = con1.con.prepareStatement("SELECT * from ordercheck");
			rs = pr.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public void updateQuantity(int pid,int quantity) {
		int res = 0;
		try {
			PreparedStatement pr = con1.con.prepareStatement(
					"update product set quantity=? where pid=?");
			pr.setInt(1, quantity);
			pr.setInt(2, pid);
			res = pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}