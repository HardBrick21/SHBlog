package Blog.Dao;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 19:16 2017/11/25
*  
 */


import Blog.Pojo.Articletype;

import java.util.List;

public interface ArticleTypeDao {
	/**
	 * 查询所有类型
	 * @return
	 */
	List<Articletype> listArticleType();
	
	/**
	 * 添加类型
	 */
	void insertArticleType(String typename);
	
	/**
	 * 删除类型
	 */
	void delectArticleType(int typeid);
	
	/**
	 *根据类型id返回类型名称
	 * @param typeid
	 * @return
	 */
	String getTypeName(int typeid);
	
}
