package Blog.Dao;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 19:16 2017/11/25
*  
 */


import Blog.Pojo.Articles;

import java.util.List;

public interface ArticleDao {
	
	/**
	 * 查询所有文章
	 * @return
	 */
	List<Articles> listArticle();
	
	/**
	 * 根据类型列出文章
	 * @return
	 */
	List<Articles> listArticleByType();
	
	/**
	 * 插入文章
	 * @param articles
	 */
	void insertArticle(Articles articles);
	
	/**
	 * 根据文章id删除文章
	 * @param articleId
	 */
	void delectArticle(int articleId);
	
	/**
	 * 获取具体文章
	 * @param articleid
	 * @return
	 */
	Articles getArticle(int articleid);
	
	/**
	 * 返回最新的文章id
	 * @return
	 */
	int latestId();
	
	/**
	 * 文章数量
	 * @return
	 */
	int count();
}
