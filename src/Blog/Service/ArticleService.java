package Blog.Service;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 20:55 2017/11/25
*  
 */


import Blog.Pojo.Articles;

import java.util.List;

public interface ArticleService {
	
	/**
	 * 发布文章
	 * @param articles
	 */
	String uploadArticle(Articles articles);
	
	/**
	 * 列出文章
	 * @return
	 */
	List<Articles> listArticle();
	
	/**
	 * 查询文章和类型
	 * @return
	 */
	List<Articles> listArticleAndType();
	
	/**
	 * 删除文章
	 * @param articleId
	 */
	void delectArticle(int articleId);
	
	/**
	 * 得到具体文章
	 * @param aid
	 * @return
	 */
	Articles getArticle(int aid);
	
	/**
	 * 得到最新文章id
	 * @return
	 */
	int getLatest();
	
	/**
	 * 文章数量
	 * @return
	 */
	int count();
}
