<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% //스크립틀릿(자바 풀 코드 작성용)
// 페이지 영역에 사용할 속성 값 생성
pageContext.setAttribute("pageInteger", 1000); //pageContext (페이지 영역), setAttribute (값 만들어 저장, 매개값은 parameter~~)
pageContext.setAttribute("pageString", "page영역의 문자열");
pageContext.setAttribute("pagePerson", new Person("김기원", 40));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PageContextMain.jsp</title>
</head>
<body>
<h2>page 영역의 속성값 읽기</h2>
<%
int pInteger = (Integer)(pageContext.getAttribute("pageInteger")); /* setAttribute에서 저장된 값을 getAttribute로 불러와 pInteger에 넣음(타입변환) */
String pString = pageContext.getAttribute("pageString").toString(); /* 왜 굳이 문자열을 toString으로 또 바꾸는 거지? > 객체를 문자화*/
Person pPerson = (Person)(pageContext.getAttribute("pagePerson")); 
%>
<!-- 출력 -->
<ul>
	<li>Integer 객체 : <%= pInteger %></li>
	<li>String 객체 : <%= pString %></li>
	<li>Person 객체 : <%= pPerson.getName() %>, <%= pPerson.getAge() %></li>
</ul>
<!-- 페이지 영역에 자료 전이 테스트 자바빈즈 활용 -->
<!-- 위에서 만든 페이지 영역의 속성 값을 출력해보자 -->

<h2>include된 파일에서 page 영역 읽어오기</h2>
<%@ include file="PageInclude.jsp" %>

<h2>페이지 이동 후 page 영역 읽어오기</h2>
<a href="PageLocation.jsp">PageLocation.jsp 바로가기</a>


</body>
</html>