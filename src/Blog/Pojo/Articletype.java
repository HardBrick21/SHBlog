package Blog.Pojo;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 21:02 2017/11/9
*  
 */


public class Articletype {
	private int typeid;
	private String typename;
	
	public int getTypeid() {
		return typeid;
	}
	
	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
	
	public String getTypename() {
		return typename;
	}
	
	public void setTypename(String typename) {
		this.typename = typename;
	}
	
	@Override
	public String toString() {
		return "Articletype{" +
				"typeid=" + typeid +
				", typename='" + typename + '\'' +
				'}';
	}
}
