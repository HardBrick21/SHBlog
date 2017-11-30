package Blog.Pojo;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 20:50 2017/11/9
*  
 */


import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Articles {
	private int articleid;
	private String articletitle;
	private Articletype articletype;
	private int articletypeid;
	private int articletagid;
	private String author;
	private int isreprint;  //默认为0
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date pubtime;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date updatetime;
	private String content;
	private int reviewnum;
	private int likenum;
	private int viewnum;
	private String thumbnail;
	private String intro;
	
	public int getArticletypeid() {
		return articletypeid;
	}
	
	public void setArticletypeid(int articletypeid) {
		this.articletypeid = articletypeid;
	}
	
	public String getIntro() {
		return intro;
	}
	
	public void setIntro(String intro) {
		this.intro = intro;
	}
	
	public String getThumbnail() {
		return thumbnail;
	}
	
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	
	public Articletype getArticletype() {
		return articletype;
	}
	
	public void setArticletype(Articletype articletype) {
		this.articletype = articletype;
	}
	
	public int getArticleid() {
		return articleid;
	}
	
	public void setArticleid(int articleid) {
		this.articleid = articleid;
	}
	
	public String getArticletitle() {
		return articletitle;
	}
	
	public void setArticletitle(String articletitle) {
		this.articletitle = articletitle;
	}
	
	
	public int getArticletagid() {
		return articletagid;
	}
	
	public void setArticletagid(int articletagid) {
		this.articletagid = articletagid;
	}
	
	public int getIsreprint() {
		return isreprint;
	}
	
	public void setIsreprint(int isreprint) {
		this.isreprint = isreprint;
	}
	
	public Date getPubtime() {
		return pubtime;
	}
	
	public void setPubtime(Date pubtime) {
		this.pubtime = pubtime;
	}
	
	public Date getUpdatetime() {
		return updatetime;
	}
	
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public int getReviewnum() {
		return reviewnum;
	}
	
	public void setReviewnum(int reviewnum) {
		this.reviewnum = reviewnum;
	}
	
	public int getLikenum() {
		return likenum;
	}
	
	public void setLikenum(int likenum) {
		this.likenum = likenum;
	}
	
	public int getViewnum() {
		return viewnum;
	}
	
	public void setViewnum(int viewnum) {
		this.viewnum = viewnum;
	}
	
	public String getAuthor() {
		return author;
	}
	
	public void setAuthor(String author) {
		this.author = author;
	}
	
	@Override
	public String toString() {
		return "Articles{" +
				"articleid=" + articleid +
				", articletitle='" + articletitle + '\'' +
				", articletype=" + articletype +
				", articletypeid=" + articletypeid +
				", articletagid=" + articletagid +
				", author='" + author + '\'' +
				", isreprint=" + isreprint +
				", pubtime=" + pubtime +
				", updatetime=" + updatetime +
				", content='" + content + '\'' +
				", reviewnum=" + reviewnum +
				", likenum=" + likenum +
				", viewnum=" + viewnum +
				", thumbnail='" + thumbnail + '\'' +
				", intro='" + intro + '\'' +
				'}';
	}
}
