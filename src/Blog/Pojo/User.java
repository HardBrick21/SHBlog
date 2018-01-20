package Blog.Pojo;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 11:22 2017/11/5
*  
 */


import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class User {

	private int userid;
	private String username;
	private String password;
	private String email;
	private String name;
	private String gender;
	private String icon;
	private int role;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date createTime;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date updateTime;
	
	private int reviewid;
	private int articleid;
	private int reviewuserid;
	private Date reviewtime;
	private String reviewcontent;
	
	
	
	/*------------*/
	
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
	
	public Date getReviewtime() {
		return reviewtime;
	}
	
	public void setReviewtime(Date reviewtime) {
		this.reviewtime = reviewtime;
	}
	

	
	public String getReviewcontent() {
		return reviewcontent;
	}
	
	public void setReviewcontent(String reviewcontent) {
		this.reviewcontent = reviewcontent;
	}
	
	
	public int getUserid() {
		return userid;
	}
	
	public void setUserid(int userid) {
		this.userid = userid;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getGender() {
		return gender;
	}
	
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getIcon() {
		return icon;
	}
	
	public void setIcon(String icon) {
		this.icon = icon;
	}
	
	public int getRole() {
		return role;
	}
	
	public void setRole(int role) {
		this.role = role;
	}
	
	public Date getCreateTime() {
		return createTime;
	}
	
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	public Date getUpdateTime() {
		return updateTime;
	}
	
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	
	@Override
	public String toString() {
		return "User{" +
				"userid=" + userid +
				", username='" + username + '\'' +
				", password='" + password + '\'' +
				", email='" + email + '\'' +
				", name='" + name + '\'' +
				", gender='" + gender + '\'' +
				", icon='" + icon + '\'' +
				", role=" + role +
				", createTime=" + createTime +
				", updateTime=" + updateTime +
				'}';
	}
}
