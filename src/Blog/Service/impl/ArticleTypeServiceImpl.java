package Blog.Service.impl;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 10:50 2017/11/26
*  
 */


import Blog.Dao.ArticleTypeDao;
import Blog.Pojo.Articletype;
import Blog.Service.ArticleTypeService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("ArticleTypeService")
public class ArticleTypeServiceImpl implements ArticleTypeService {
	
	@Autowired
	private ArticleTypeDao articleTypeDao;
	
	@Override
	public List<Articletype> listArticleType() {
		return articleTypeDao.listArticleType();
	}
	
	@Override
	public void addArticleType(String articleTypeName) {
		articleTypeDao.insertArticleType(articleTypeName);
	}
	
	@Override
	public void delectArticleType(int articleTypeId) {
		articleTypeDao.delectArticleType(articleTypeId);
	}
	
	@Override
	public String typeName(int typeId) {
		return articleTypeDao.getTypeName(typeId);
	}
}
