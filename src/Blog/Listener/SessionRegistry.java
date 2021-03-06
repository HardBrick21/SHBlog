package Blog.Listener;

/*
*  @Author : Houlixuan
*  @Description :
*  @Date : Create in 10:21 2017/11/8
*  
 */


import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class SessionRegistry {
	private static final Map<String, HttpSession> SESSIONS = new HashMap<>();
	
	public static void addSession(HttpSession session) {
		
		SESSIONS.put(session.getId(), session);
		
	}
	
	public static void updateSession(HttpSession session, String oldSessionId) {
		synchronized (SESSIONS) {
			SESSIONS.remove(oldSessionId);
			addSession(session);
		}
	}
	
	public static void removeSession(HttpSession session) {
		SESSIONS.remove(session.getId());
	}
	
	public static List<HttpSession> getAllSessions() {
		return new ArrayList<>(SESSIONS.values());
	}
	
	public static int getNumberOfSessions() {
		return SESSIONS.size();
	}
	
	private SessionRegistry() {
	}
	
}
