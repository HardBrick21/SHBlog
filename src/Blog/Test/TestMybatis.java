package Blog.Test;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 19:55 2017/11/18
*  
 */


import java.io.IOException;

public class TestMybatis {
	static int i;
	public static void main(String[] args) throws IOException {
		
		
				System.out.println(i);
			
		
		//String resource = "mybatis-config.xml";
		//InputStream inputStream = Resources.getResourceAsStream(resource);
		//SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		//SqlSession sqlSession = sqlSessionFactory.openSession();
		
		//插入数据
		//User User = new User();
		//User.setUsername("test11");
		//User.setPassword("12333");
		//User.setGender("man");
		//User.setEmail("12113@qqq.ccc");
		//User.setName("hou11");
		//User.setIcon("11231");
		//User.setCreateTime(new Date(System.currentTimeMillis()));
		//User.setUpdateTime(new Date(System.currentTimeMillis()));
		//sqlSession.insert("InsertUser", User);
		
		//ListAll(sqlSession);
		//sqlSession.commit();
		//sqlSession.close();
	}
	
	//public static void ListAll(SqlSession sqlSession){
	//
	//	Map<String,Object> params = new HashMap<>();
	//	params.put("userid", 3);
	//	List<User> User = sqlSession.selectList("ListUser",params);
	//
	//	for (Blog.Pojo.User u : User){
	//		System.out.println(u.toString());
	//	}
	//}
}
