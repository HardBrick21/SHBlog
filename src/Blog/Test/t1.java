package Blog.Test;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 19:25 2017/11/6
*  
 */


public class t1 {
	public static void main(String[] args) {
		
		String basepath = Thread.currentThread().getContextClassLoader().getResource("").toString();
		System.out.println(basepath);
	}
}
