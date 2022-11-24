package utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieManager {

	public static void makeCookie(HttpServletResponse response, String cName, String cValue, int cTime) {

		// 1. 쿠키객체를 생성한다.
		Cookie cookie = new Cookie(cName, cValue);
		// 2.쿠키의 생성 경로 설정
		cookie.setPath("/");
		// 3. 유지시간(1시간)
		cookie.setMaxAge(cTime);
		// 4.응답헤터에 쿠키 정보 저장
		response.addCookie(cookie);

	}

	public static String readCookie(HttpServletRequest request, String cName) {
		String cookieValue = "";
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie c : cookies) { // 쿠키 각각의
				String cookieName = c.getName(); // 쿠키 이름 얻기
				if(cookieName.equals(cName)) {
					cookieValue = c.getValue(); // 쿠기 값 얻기
				}
				
			}
		}
		
		return cookieValue;
	}
	//쿠키 삭제
	public static void deleteCookie(HttpServletResponse response, String cName) {
		makeCookie(response,cName,"",0);
	}
	
}
