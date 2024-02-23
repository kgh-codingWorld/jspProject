<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UseBeanAction.jsp</title>
</head>
<body>
	<h2>액션 태그로 몸값 한 번에 받기</h2>
	<jsp:useBean id="person" class="common.Person" />
	<jsp:setProperty property="*" name="person" />
	<!-- UseBeanForm.jsp에서 req로 넘어온 값을 보관(set), property="*" 모든 값 -->
	<ul>
		<li>이름: <jsp:getProperty name="person" property="name" /></li>
		<li>나이: <jsp.getProperty name="person" property="age" /></li>
	</ul>
</body>
</html>