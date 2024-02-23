<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SessionLocation.jsp</title>
</head>
<body>
<h2>이동 후 page 영역의 속성값 읽기</h2>
<%
ArrayList<String> lists = (ArrayList<String>)session.getAttribute("lists");
for(String str : lists)
	out.print(str + "<br/>");
%>

</body>
</html>