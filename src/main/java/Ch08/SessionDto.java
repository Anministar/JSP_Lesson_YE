package Ch08;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

public class SessionDto {
	
	private Map<String, HttpSession> sessionMap;			// userid와 세션정보를 key와 value 형태로 담을꺼임.
	
	
	// default 생성자
	public SessionDto() {
		sessionMap = new HashMap<>();
	}


	// Getter and Setter
	public Map<String, HttpSession> getSessionMap() {
		return sessionMap;
	}
	
	
	
	// toString()

}
