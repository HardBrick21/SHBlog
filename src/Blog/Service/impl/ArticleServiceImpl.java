package Blog.Service.impl;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 21:00 2017/11/25
*  
 */


import Blog.Dao.ArticleDao;
import Blog.Pojo.Articles;
import Blog.Service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("ArticleService")
public class ArticleServiceImpl implements ArticleService{
	
	@Autowired
	private ArticleDao articleDao;
	
	@Override
	public String uploadArticle(Articles articles) {
		articleDao.insertArticle(articles);
		return "success";
	}
	
	@Override
	public List<Articles> listArticle() {
		return articleDao.listArticle();
	}
	
	@Override
	public List<Articles> listArticleAndType() {
		return articleDao.listArticleByType();
	}
	
	@Override
	public void delectArticle(int articleId) {
		articleDao.delectArticle(articleId);
	}
	
	@Override
	public Articles getArticle(int aid) {
		return articleDao.getArticle(aid);
	}
	
	
}
