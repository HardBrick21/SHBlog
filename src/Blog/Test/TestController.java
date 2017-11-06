package Blog.Test;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 22:22 2017/11/6
*  
 */

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class TestController {
	
	@RequestMapping("/test")
	public void test(HttpSession session){
		
		session.setAttribute("msg", "测试");
		
	}
}
