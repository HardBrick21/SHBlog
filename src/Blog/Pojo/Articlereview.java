package Blog.Pojo;

/*
*  @Author : Houlixuan
*  @Description :文章评论
*  @Date : Create in 20:58 2017/11/9
*  
 */


import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Articlereview {
	
	//-----
	private String username;
	private String icon;
	//----
	private int reviewid;
	private int articleid;
	private int reviewuserid;
	private String reviewcontent;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
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
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getIcon() {
		return icon;
	}
	
	public void setIcon(String icon) {
		this.icon = icon;
	}
	
	@Override
	public String toString() {
		return "Articlereview{" +
				"reviewid=" + reviewid +
				", articleid=" + articleid +
				", reviewuserid=" + reviewuserid +
				", reviewcontent='" + reviewcontent + '\'' +
				", reviewtime=" + reviewtime +
				'}';
	}
}
