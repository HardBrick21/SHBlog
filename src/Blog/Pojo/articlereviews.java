package Blog.Pojo;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 20:58 2017/11/9
*  
 */


import java.util.Date;

public class articlereviews {
	private int reviewid;
	private int articleid;
	private int reviewuserid;
	private String reviewcontent;
	private Date reviewtime;
	
	public int getReviewid() {
		return reviewid;
	}
	
	public void setReviewid(int reviewid) {
		this.reviewid = reviewid;
	}
	
	public int getArticleid() {
		return articleid;
	}
	
	public void setArticleid(int articleid) {
		this.articleid = articleid;
	}
	
	public int getReviewuserid() {
		return reviewuserid;
	}
	
	public void setReviewuserid(int reviewuserid) {
		this.reviewuserid = reviewuserid;
	}
	
	public String getReviewcontent() {
		return reviewcontent;
	}
	
	public void setReviewcontent(String reviewcontent) {
		this.reviewcontent = reviewcontent;
	}
	
	public Date getReviewtime() {
		return reviewtime;
	}
	
	public void setReviewtime(Date reviewtime) {
		this.reviewtime = reviewtime;
	}
	
	@Override
	public String toString() {
		return "articlereviews{" +
				"reviewid=" + reviewid +
				", articleid=" + articleid +
				", reviewuserid=" + reviewuserid +
				", reviewcontent='" + reviewcontent + '\'' +
				", reviewtime=" + reviewtime +
				'}';
	}
}
