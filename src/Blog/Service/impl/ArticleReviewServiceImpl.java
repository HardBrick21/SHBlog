package Blog.Service.impl;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 22:07 2017/12/4
*  
 */


import Blog.Dao.ArticleReviewDao;
import Blog.Pojo.Articlereview;
import Blog.Service.ArticleReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("ArticleReviewService")
public class ArticleReviewServiceImpl implements ArticleReviewService {
	
	@Autowired
	private ArticleReviewDao articleReviewDao;
	
	@Override
	public String addArticleReview(Articlereview articlereview) {
		articleReviewDao.insertReview(articlereview);
		return "success";
	}
	
	@Override
	public List<Articlereview> getArticleReview(int articleId) {
		return articleReviewDao.listArticleReviews(articleId);
	}
}
