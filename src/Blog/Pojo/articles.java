package Blog.Pojo;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 20:50 2017/11/9
*  
 */


import java.util.Date;

public class articles {
	private int articleid;
	private String articletitle;
	private int articletypeid;
	private int articletagid;
	private int authorid;
	private int isreprint;
	private Date pubtime;
	private Date updatetime;
	private String content;
	private int reviewnum;
	private int likenum;
	private int viewnum;
	
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
	
	public int getArticletypeid() {
		return articletypeid;
	}
	
	public void setArticletypeid(int articletypeid) {
		this.articletypeid = articletypeid;
	}
	
	public int getArticletagid() {
		return articletagid;
	}
	
	public void setArticletagid(int articletagid) {
		this.articletagid = articletagid;
	}
	
	public int getAuthorid() {
		return authorid;
	}
	
	public void setAuthorid(int authorid) {
		this.authorid = authorid;
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
	
	@Override
	public String toString() {
		return "articles{" +
				"articleid=" + articleid +
				", articletitle='" + articletitle + '\'' +
				", articletypeid=" + articletypeid +
				", articletagid=" + articletagid +
				", authorid=" + authorid +
				", isreprint=" + isreprint +
				", pubtime=" + pubtime +
				", updatetime=" + updatetime +
				", content='" + content + '\'' +
				", reviewnum=" + reviewnum +
				", likenum=" + likenum +
				", viewnum=" + viewnum +
				'}';
	}
}
