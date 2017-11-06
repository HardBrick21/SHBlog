package Blog.Listener;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 22:01 2017/11/6
*  
 */


import Blog.Log4j.TestLog4j;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionIdListener;
import javax.servlet.http.HttpSessionListener;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebListener
public class SessionListener implements HttpSessionListener, HttpSessionIdListener {
	
	static Logger logger = Logger.getLogger(TestLog4j.class);
	static {
		PropertyConfigurator.configure("Blog/log4j.xml");
	}
	@Override
	public void sessionIdChanged(HttpSessionEvent httpSessionEvent, String s) {
		logger.info(this.date()+" : Session ID" + s + "改变为 " + httpSessionEvent.getSession().getId() );
	}
	
	@Override
	public void sessionCreated(HttpSessionEvent httpSessionEvent) {
		logger.info(this.date() + ": Session  " + httpSessionEvent.getSession().getId()+ " 创建。");
	}
	
	@Override
	public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
		logger.info(this.date() + ": Session  " + httpSessionEvent.getSession().getId()+ " 销毁。");
	}
	
	private SimpleDateFormat format = new SimpleDateFormat("EEE, yyy MMM d HH:mm:ss");
	private String date(){
		return this.format.format(new Date());
	}
}
