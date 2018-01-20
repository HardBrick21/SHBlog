package Blog.Dao;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 21:56 2017/12/4
*  
 */


import Blog.Pojo.Articlereview;

import java.util.List;

public interface ArticleReviewDao {
	
	/**
	 * 增加评论
	 * @param articlereview
	 */
	void insertReview(Articlereview articlereview);
	
	/**
	 * 查询本文章的评论
	 * @param articleId
	 * @return
	 */
	List<Articlereview> listArticleReviews(int articleId);
	
	
}
