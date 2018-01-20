package Blog.Controller;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 13:30 2017/11/19
*  
 */

import Blog.Pojo.Articlereview;
import Blog.Pojo.Articles;
import Blog.Pojo.User;
import Blog.Service.ArticleReviewService;
import Blog.Service.ArticleService;
import Blog.Service.ArticleTypeService;
import Blog.Service.UserService;
import cn.dsna.util.images.ValidateCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("")
public class UserController {
	
	@Autowired
	@Qualifier("UserService")
	private UserService userService;
	
	@Autowired
	@Qualifier("ArticleService")
	private ArticleService articleService;
	
	@Autowired
	@Qualifier("ArticleTypeService")
	private ArticleTypeService articleTypeService;
	
	@Autowired
	@Qualifier("ArticleReviewService")
	private ArticleReviewService articleReviewService;
	
	
	//@RequestMapping(value = "/listUser")
	//public ModelAndView LisrUser(){
	//	ModelAndView mav = new ModelAndView();
	//	List<User> ul = UserService.list();
	//
	//	//放入转发参数
	//	mav.addObject("ul", ul);
	//	//放入jsp路径
	//	mav.setViewName("Front/listUsr");
	//	return mav;
	//
	//}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String Home(Model model) {
		
		List<Articles> articlesType = articleService.listArticleAndType();
		List<Articles> articles = articleService.listArticle();
		model.addAttribute("article", articles);
		model.addAttribute("type", articlesType);
		
		return "Front/HomePage";
	}
	
	@RequestMapping("/article/{articleid}")
	public String articlePage(Model model, @PathVariable("articleid") int articleid) {
		List<Articles> articlesType = articleService.listArticleAndType();
		Articles article = articleService.getArticle(articleid);
		List<Articlereview> articlereviews = articleReviewService.getArticleReview(articleid);
		int latest = articleService.getLatest();
		int count = articleService.count();
		model.addAttribute("article", article);
		model.addAttribute("type", articlesType);
		model.addAttribute("review", articlereviews);
		model.addAttribute("latest", latest);
		model.addAttribute("count",count);
		//System.out.println(articlereviews);
		
		return "Front/articlePage";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		return "Front/registerPage";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(HttpServletRequest request, Model model, User user) {
		
		user.setCreateTime(new Date(System.currentTimeMillis()));
		user.setUpdateTime(new Date(System.currentTimeMillis()));
		user.setIcon("/icon/1509514750962.jpg");
		
		String result = userService.insertUser(user);
		
		if ("success".equals(result)) {
			System.out.println("success");
			//model.addAttribute("msg",result);
			return "Front/loginPage";
		} else {
			model.addAttribute("msg", result);
			return "Front/registerPage";
		}
		
	}
	
	@RequestMapping("/code")
	public void code(HttpSession session, HttpServletResponse response) throws IOException {
		
		// 设置图片的宽高 字符个数 干扰条数
		
		ValidateCode vc = new ValidateCode(180, 40, 4, 15);
		
		// 获取验证码图片中的数据
		String code = vc.getCode();
		
		// 保存验证码到session中
		session.setAttribute("code", code);
		System.out.println("code=" + code);
		
		// 向浏览器输出图片数据
		vc.write(response.getOutputStream());
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		
		System.out.println("--login--");
		return "Front/loginPage";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(User user, Model model, String code, HttpSession session) {
		
		// 获取存储的验证码
		String ccode = (String) session.getAttribute("code");
		
		if (!ccode.equalsIgnoreCase(code)) {
			// 不相等 转发到登陆页面 显示验证码不正确
			model.addAttribute("msg", "验证码错误");
			System.out.println("验证码错误" + ccode + code);
			return "Front/loginPage";
		}
		
		if (userService.isCanLogin(user)) {
			// 将用户信息放回话到session中
			User nowUser = userService.getUser(user.getUsername());
			session.setAttribute("user", nowUser);
			System.out.println("登陆成功");
			// 登陆成功 重定向到首页
			
			return "redirect:/";
		} else {
			// 登陆失败 转发到登陆页面 提示登录失败
			
			model.addAttribute("msg", "用户名或密码错误");
			System.out.println("用户名或密码错误   --username----" +
					user.getUsername() + "---password---" + user.getPassword());
			return "Front/loginPage";
		}
		
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		// 注销 销毁session对象
		
		if (session != null) {
			session.invalidate();
		}
		
		// 重定向到首页
		
		return "redirect:/";
		
	}
	
	@RequestMapping(value = "/review/{articleid}")
	public String reviewArticle(@PathVariable("articleid") int articleId, HttpSession session, Articlereview articlereview) {
		User u = (User) session.getAttribute("user");
		if (u == null) {
			return "Front/loginPage";
		}
		articlereview.setReviewuserid(u.getUserid());
		articlereview.setReviewtime(new Date(System.currentTimeMillis()));
		String result = articleReviewService.addArticleReview(articlereview);
		if (result.equals("success"))
			return "forward:/article/" + articleId;
		else
			return null;
	}
	
	
}
