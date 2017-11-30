package Blog.Controller;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 12:47 2017/11/25
*  
 */

import Blog.Pojo.Articles;
import Blog.Pojo.Articletype;
import Blog.Service.ArticleService;
import Blog.Service.ArticleTypeService;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	@Qualifier("ArticleService")
	private ArticleService articleService;
	
	@Autowired
	@Qualifier("ArticleTypeService")
	private ArticleTypeService articleTypeService;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String admin() {
		return "Back/adminPage";
	}
	
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String form(Model model) {
		List<Articletype> articletypes = articleTypeService.listArticleType();
		model.addAttribute("types", articletypes);
		return "Back/adminForm";
	}
	
	@RequestMapping(value = "/form", method = RequestMethod.POST)
	public String formPost(Model model) {
		List<Articletype> articletypes = articleTypeService.listArticleType();
		model.addAttribute("types", articletypes);
		return "Back/adminForm";
	}
	
	/**
	 * 文件上传功能
	 * 发布文章
	 */
	
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String upload(MultipartFile file, HttpServletRequest request, Articles articles) throws IOException {
		
		//SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		articles.setPubtime(new Date(System.currentTimeMillis()));
		articles.setUpdatetime(new Date(System.currentTimeMillis()));
		if (!file.isEmpty()) {
			String name = file.getOriginalFilename();
			String picname = System.currentTimeMillis() + name.substring(name.lastIndexOf("."));
			System.out.println(picname);
			//String basepath = System.getProperty("file.separator")+"Resources"+System.getProperty("file.separator")+"icon"+System.getProperty("file.separator");
			String basepath = "e:\\icon\\";
			File picfile = new File(basepath + picname);
			if (!picfile.exists())
				picfile.mkdirs();
			
			System.out.println(picfile);
			//将传递来的文件写入到文件中
			
			file.transferTo(picfile);
			articles.setThumbnail("/icon/" + picname);
		}
		String result = articleService.uploadArticle(articles);
		
		if ("success".equals(result)) {
			System.out.println("发布成功");
			return "forward:/admin/form";
		} else {
			System.out.println("发布失败");
			return "forward:/admin/form";
		}
		
	}
	
	@RequestMapping(value = "/pic")
	@ResponseBody
	public String uploadImgToOSS(HttpServletRequest request, HttpServletResponse response, @RequestParam("image") MultipartFile file) throws IOException {
		
		String name = file.getOriginalFilename();
		String picname = System.currentTimeMillis() + name.substring(name.lastIndexOf("."));
		System.out.println(picname);
		//String basepath = System.getProperty("file.separator")+"Resources"+System.getProperty("file.separator")+"icon"+System.getProperty("file.separator");
		String basepath = "e:\\icon\\";
		File picfile = new File(basepath + picname);
		if (!picfile.exists())
			picfile.mkdirs();
		
		System.out.println(picfile);
		//将传递来的文件写入到文件中
		
		file.transferTo(picfile);
		
		String data = "http://localhost:8080/icon/"+picname;
		//Map<String, Object> map = new HashMap<String, Object>();
		//map.put("errno", 0);
		//map.put("data",data);
		//System.out.println(map.toString());
		//ObjectMapper json = new ObjectMapper();
		//String param = json.writeValueAsString(map);
		//System.out.println(param);
		JSONObject jsonObject = new JSONObject();
		//JSONArray jsonArray = new JSONArray();
		//jsonArray.add(data);
		//
		jsonObject.put("errno", 0);
		jsonObject.put("data", data);
		System.out.println(jsonObject);
		
		String result = jsonObject.toString();
		System.out.println(result);
		return result;
		
	}
	
	@RequestMapping("/articlelist")
	public String articleList(Model model){
		List<Articles> articles = articleService.listArticle();
		model.addAttribute("articles",articles);
		return "Back/articleList";
	}
	
	@RequestMapping("/delectarticle/{articleid}")
	public String delectArticle(@PathVariable("articleid") int id){
		articleService.delectArticle(id);
		return "forward:/admin/articlelist";
	}
	
	
}
