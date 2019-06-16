package Database;
import java.io.InputStream;
public class Adminbean {
	String category_name = null;
	String sub_cat = null;
	int cat_id;
	String productname =null;
	int regprice;
	int tax;
	String prodiscription = null;
	int saleprice;
	int quantity;
	int sid;
	InputStream input=null;
	String pidlist;
	String quanlist;
	String email;
	String mode;
	String amount;
	String pid;
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPidlist() {
		return pidlist;
	}
	public void setPidlist(String pidlist) {
		this.pidlist = pidlist;
	}
	public String getQuanlist() {
		return quanlist;
	}
	public void setQuanlist(String quanlist) {
		this.quanlist = quanlist;
	}
	public InputStream getInput() {
		return input;
	}
	public void setInput(InputStream input) {
		this.input = input;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public int getRegprice() {
		return regprice;
	}
	public void setRegprice(int regprice) {
		this.regprice = regprice;
	}
	public int getTax() {
		return tax;
	}
	public void setTax(int tax) {
		this.tax = tax;
	}
	public String getProdiscription() {
		return prodiscription;
	}
	public void setProdiscription(String prodiscription) {
		this.prodiscription = prodiscription;
	}
	public int getSaleprice() {
		return saleprice;
	}
	public void setSaleprice(int saleprice) {
		this.saleprice = saleprice;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getCat_id() {
		return cat_id;
	}
	public void setCat_id(int cat_id) {
		this.cat_id = cat_id;
	}
	public String getSub_cat() {
		return sub_cat;
	}
	public void setSub_cat(String sub_cat) {
		this.sub_cat = sub_cat;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
}
