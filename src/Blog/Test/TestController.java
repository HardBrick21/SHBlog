package Blog.Test;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 22:22 2017/11/6
*  
 */

import javax.servlet.http.HttpSession;


public class TestController {
	

	public String index(){
		return "redirect:/";
	}
	

	public void test(HttpSession session){
		
		session.setAttribute("msg", "测试");
		
	}
}
