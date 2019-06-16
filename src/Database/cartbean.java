package Database;
import java.util.ArrayList;
import java.util.List;
public class cartbean {
	List<Integer> quan=new ArrayList<Integer>(10);
	List<Integer> pid=new ArrayList<Integer>(10);
	public List<Integer> getQuan() {
		return quan;
	}
	public void setQuan(List<Integer> quan) {
		this.quan = quan;
	}
	public List<Integer> getPid() {
		return pid;
	}
	public void setPid(List<Integer> pid) {
		this.pid = pid;
	}
}
