<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CookieMain.jsp</title>
</head>
<body>
	<h2>1. 쿠키(Cookie) 설정</h2>
	<%
	Cookie cookie = new Cookie("myCookie", "쿠키쿠키"); // myCookie: 이름, 쿠키쿠키: 값
	Cookie id = new Cookie("id", "kkw"); // 쿠키 생성
	Cookie pw = new Cookie("pw", "1234"); // 쿠키 생성
	
	cookie.setPath(request.getContextPath()); // 경로를 컨텍스트 루트로 /MustHaveJSP가 반환되어 설정 > 웹 애플리케이션 전체에서 쿠키를 사용하겠다는 의미
	cookie.setMaxAge(3600); // 유지기간을 1시간으로 설정
	response.addCookie(cookie); // 응답 헤더(클라이언트)에 쿠키 추가
	
	id.setPath(request.getContextPath()); // 경로를 컨텍스트 루트로 설정
	id.setMaxAge(3600); // 유지 기간을 1시간으로 설정
	response.addCookie(id); // 응답 헤더에 쿠키 추가
	
	pw.setPath(request.getContextPath()); // 경로를 컨텍스트 루트로 설정
	pw.setMaxAge(3600); // 유지 기간을 1시간으로 설정
	response.addCookie(pw); // 응답 헤더에 쿠키 추가
	%>
	
	<%
	//요청헤더에 담겨있는 쿠키를 가져옴
	Cookie[] cookies = request.getCookies(); // 쿠키들이 들어갈 배열 생성, 요청헤더:'응답헤더에 추가한 쿠키 몽땅 가져와'
	if (cookies != null){ // 쿠키 배열이 있으면
		for (Cookie c : cookies) { // 쿠키 각각의 반복문
			String cookieName = c.getName(); // 쿠키 이름 얻기
			String cookieValue = c.getValue(); // 쿠키 값 얻기
			int cookieAge = c.getMaxAge();
			
			out.println(String.format("%s : %s <br/>", cookieName, cookieValue));
			// 쿠키의 이름과 값을 반복 출력한다(%s에 각각 cookieName, cookieValue 넣기).
		}
	}
	%>
	<h2>페이지 이동 후 쿠키값 확인</h2>
	<a href="CookieResult.jsp">다음 페이지에서 쿠키값 확인하기</a>
</body>
</html>