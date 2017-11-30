package Blog.Pojo;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 21:03 2017/11/9
*  
 */


public class Articletag {
	private int tagid;
	private String tagname;
	
	public int getTagid() {
		return tagid;
	}
	
	public void setTagid(int tagid) {
		this.tagid = tagid;
	}
	
	public String getTagname() {
		return tagname;
	}
	
	public void setTagname(String tagname) {
		this.tagname = tagname;
	}
	
	@Override
	public String toString() {
		return "Articletag{" +
				"tagid=" + tagid +
				", tagname='" + tagname + '\'' +
				'}';
	}
}
