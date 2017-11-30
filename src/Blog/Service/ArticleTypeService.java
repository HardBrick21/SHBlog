package Blog.Service;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 10:42 2017/11/26
*  
 */


import Blog.Pojo.Articletype;

import java.util.List;

public interface ArticleTypeService {
	/**
	 * 列出所有类型
	 * @return
	 */
	List<Articletype> listArticleType();
	
	/**
	 * 添加类型
	 * @param articleTypeName
	 */
	void addArticleType(String articleTypeName);
	
	/**
	 * 删除类型
	 * @param articleTypeId
	 */
	void delectArticleType(int articleTypeId);
	
	String typeName(int typeId);
}
