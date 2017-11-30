package Blog.Test.Log4j;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class TestLog4j {
	public static void main(String[] args) throws InterruptedException {
		//PropertyConfigurator.configure("Blog/log4j.xml");
		Logger logger = LogManager.getLogger();
		
		logger.warn("111");
		logger.info("111222");
	}
}
