<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String loginId = CookieManager.readCookie(request, "loginId"); 
// CookieManager 클래스의 readCookie메서드를 활요앟여 리므이 loginId인 쿠키를 읽어와 loginId 변수에 저장한다.
// 아이디가 있다면 아이디 입력폼의 기본값으로 쓰인다.
String cookieCheck = ""; //cookieCheck 변수 생성
if (!loginId.equals("")){ //loginId에 빈문자열 외의 문자열을 저장했다면
	cookieCheck = "checked"; //cookieCheck에 checked가 대입된다.
	//[아이디 저장하기] 체크박스에 checked 속성을 부여한다.
} //쿠키의 내용을 확인하여 체크 여부를 결정한다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IdSaveMain.jsp</title>
</head>
<body>
	<h2>로그인 페이지</h2>
	<form action="IdSaveProcess.jsp" method="post">
	아이디: <input type="text" name="user_id" value="<%= loginId %>"/>
	<input type="checkbox" name="save_check" value="Y" <%= cookieCheck %> />
	아이디 저장하기
	<br />
	패스워드: <input type="text" name="user_pw" />
	<input type="submit" value="로그인하기"/>
	</form>
</body>
</html>