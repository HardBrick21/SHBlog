package Blog.Dao;

/*
*  @Author : Houlixuan
*  @Description :用户数据库操作接口
*  @Date : Create in 12:27 2017/11/19
*  
 */


import Blog.Pojo.User;

import java.util.List;

public interface UserDao {
	
	/**
	 * 插入用户
	 * @param User
	 */
	void inserUser(User User);
	
	/**
	 * 根据ID删除用户
	 * @param userId
	 */
	void delectUser(int userId);
	
	/**
	 * 根据用户ID查询用户
	 * @param userId
	 */
	User listUser(int userId);
	
	/**
	 *  列出所有用户
	 * @return
	 */
	List<User> listUser();
	
	/**
	 *查询用户名是否存在
	 * @param username
	 * @return
	 */
	User getUser(String username);
	
	int insertUser(User user);
	
}
