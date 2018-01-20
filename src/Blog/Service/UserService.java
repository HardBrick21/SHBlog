package Blog.Service;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 13:22 2017/11/19
*  
 */


import Blog.Pojo.User;

import java.util.List;

public interface UserService {
	/**
	 * 列出所有用户
	 * @return
	 */
	List<User> list();
	
	/**
	 * 注册
	 * @param user
	 */
	String insertUser(User user);
	
	/**
	 * 查找单个用户
	 * @param uid
	 * @return
	 */
	User getUser(int uid);
	
	/**
	 * 根据用户名查询用户信息是否正确
	 * @param user
	 * @return
	 */
	boolean isCanLogin(User user);
	
	/**
	 * 根据用户名获得用户
	 * @param username
	 * @return
	 */
	User getUser(String username);
	
}
