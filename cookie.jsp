<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //1. 쿠키객체를 생성한다.
    Cookie cookie =  new Cookie("myCookie", "쿠키맛나요");
    //2.쿠키의 생성 경로 설정
    cookie.setPath(request.getContextPath());
    //3. 유지시간(1시간)
    cookie.setMaxAge(3600);
    //4.응답헤터에 쿠키 정보 저장
    response.addCookie(cookie);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키 설정 직후 쿠키 값 확인하기</h2>
	<%
	Cookie[] cookies = request.getCookies(); //요청 헤더의 모든 쿠키 얻기
	if(cookies!=null){
		for(Cookie c : cookies) { // 쿠키 각각의
			String cookieName = c.getName(); //쿠키 이름 얻기
			String cookieValue = c.getValue(); //쿠기 값 얻기
			out.println(String.format("%s : %s<br/>", cookieName, cookieValue));
		}
	}else{
		out.print("쿠키 정보가 없습니다.");
	}
	%>
	<h2>페이지 이동 후 쿠키값 확인하기</h2>
	<a href = "CookieReuslt.jsp">다음 페이지에서 쿠키값 확인하기</a>
</body>
</html>