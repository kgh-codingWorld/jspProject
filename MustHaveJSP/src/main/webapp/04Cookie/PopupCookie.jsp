<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
//ajax에서 값이 1로 넘어옴
String chkVal = request.getParameter("inactiveToday"); // 매개값 inactiveToday 요청 헤더에서 가져와서 변수에 담아

if (chkVal != null && chkVal.equals("1")){ // 가져온 걸 담은 변수가 존재하고 1이면
	Cookie cookie = new Cookie("PopupClose", "off"); // 그럼 쿠키 만들어 key: popupClose, value: off
	cookie.setPath(request.getContextPath()); // 요청헤더에 담긴 
	cookie.setMaxAge(60*60*24); // 유지 기간 설정
	response.addCookie(cookie); // 응답 객체에 추가
	out.println("쿠키: 하루 동안 여맂 않음");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PopupCookie.jsp</title>
</head>
<body>

</body>
</html>