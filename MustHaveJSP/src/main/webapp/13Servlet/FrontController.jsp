<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FrontController.jsp</title>
</head>
<body>
	<h3>한 번에 3가지 요청 처리하기(controller의 역할)</h3>
	${ resultValue }<!-- EL문 -->
	<ol>
		<li> URI: ${ uri } </li>
		<li> 요청명: ${ commandStr } </li>
	</ol>
	
	<ul>
		<li><a href="./regist.ez">회원가입</a>
		<li><a href="./login.ez">로그인</a>
		<li><a href="./freeBoard.ez">자유게시판</a>
	</ul>
</body>
</html>