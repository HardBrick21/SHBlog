package Blog.Service;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 22:05 2017/12/4
*  
 */


import Blog.Pojo.Articlereview;

import java.util.List;

public interface ArticleReviewService {
	
	/**
	 * 增加评论
	 * @param articlereview
	 */
	String addArticleReview(Articlereview articlereview);
	
	/**
	 * 获取评论
	 * @param articleId
	 * @return
	 */
	List<Articlereview> getArticleReview(int articleId);
	
}
