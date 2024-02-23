<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ApplicationMain.jsp</title>
</head>
<body>
	<h2>web.xml에 설정한 내용 읽어오기</h2>
	초기화 매개변수 : <%= application.getInitParameter("INIT_PARAM") %> <!-- 표현식 -->
</body>
</html>