<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setAttribute("requestString", "request 문자열");
  request.setAttribute("requestPerson", new Person("안중근", 31)); /* 오른쪽이 값, 왼쪽이 키인 듯 */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestMain.jsp</title>
</head>
<body>
<!-- request 내장 객체의 데이터 전이 범위를 확인 -->
<!-- 값의 전달은 get, post 방식을 사용하는 parameter와 다른 하나는 setAttribute가 있다. -->
<h2>request 영역의 속성값 삭제하기</h2>
<%
	request.removeAttribute("requestString");
	request.removeAttribute("requestInteger");
%>
<h2>request 영역의 속성값 읽기</h2>
<%
Person rPerson = (Person)(request.getAttribute("requestPerson")); /* 변수에 넣어 읽기 */
%>
<ul>
	<li>String 객체 : <%= request.getAttribute("requestString") %></li>
	<li>Person 객체 : <%= rPerson.getName() %>, <%= rPerson.getAge() %></li>
	
</ul>

<h2>포워드된 페이지에서 request 영역 속성값 읽기</h2>
<%
request.getRequestDispatcher("RequestForward.jsp?paramKor=한글&paramEng=English")
.forward(request, response);
%>
</body>
</html>