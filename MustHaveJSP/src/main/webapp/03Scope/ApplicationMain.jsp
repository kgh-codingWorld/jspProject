<%@page import="java.util.HashMap"%>
<%@page import="common.Person"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ApplicatoinMain.jsp</title>
</head>
<body>
<!-- 톰캣(was)이 가지고 있는 메모리 영역인 application 싱글톤 객체의 값을 저장과 출력 테스트 -->
<h2>application 영역</h2>
<%
Map<String, Person> maps = new HashMap<>();
maps.put("actor1", new Person("김기원", 99));
maps.put("actor2", new Person("이젠컴퓨터아카데미수원", 19));
application.setAttribute("maps", maps);
%>
application 영역에 속성이 저장되었습니다.
</body>
</html>