<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ArrayList<String> lists = new ArrayList<String>();
lists.add("이젠");
lists.add("컴퓨터");
lists.add("아카데미");
lists.add("수원");
session.setAttribute("lists", lists);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SesstionMain.jsp</title>
</head>
<body>
<h2>페이지 이동 후 session 영역의 속성 읽기</h2>
<a href="SessionLocation.jsp">SessionLocation.jsp 바로가기</a>
</body>
</html>