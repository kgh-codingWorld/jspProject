<!-- 지시어: 코드변환에 필요한 정보를 jsp 엔진에 보냄 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    
<!-- 선언부: 멤버변수(필드), 메서드 선언-->
<%! 
	String str1 = "JSP";
	String str2 = "안녕하세요";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HelloJSP.jsp</title>
</head>
<body>
	<h2>처음 만들어보는 <%= str1 %></h2> <!-- 표현식: 하나의 값 출력용 -->
	<p>
		<%
			out.println(str2+str1+"입니다. 지금부터 시작합니다. 다란");
		%> <!-- 스크립틀릿: 자바 풀코드 작성하는 곳 -->
	</p>
</body>
</html>