package Blog.Service.impl;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 13:23 2017/11/19
*  
 */


import Blog.Dao.UserDao;
import Blog.Pojo.User;
import Blog.Service.UserService;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("UserService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDao userDao;
	
	@Override
	public List<User> list() {
		return userDao.listUser();
	}
	
	@Override
	public String insertUser(User user) {
		
		if (user.getUsername().equals(userDao.getUser(user.getUsername()).getUsername())) {
			return "用户名已被注册";
		} else {
			userDao.inserUser(user);
			return "success";

		}
	}
	
	@Override
	public User getUser(int uid) {
		return userDao.listUser(uid);
	}
	
	@Override
	public boolean isCanLogin(User user) {
		if (user.getPassword().equals(userDao.getUser(user.getUsername()).getPassword())
				&& user.getUsername().equals(userDao.getUser(user.getUsername()).getUsername())) {
			return true;
		} else {
			return false;
		}
	}
	
}
