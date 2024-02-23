<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %> <!-- isErrorPage="true" 선언 시 예외를 떠안는다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IsErrorPage.jsp</title>
</head>
<body>
	<h2>서비스 중 일시적인 오류가 발생하였습니다.</h2>
	<p>
	오류명: <%= exception.getClass().getName() %> <br>
	</p>
	<h3>관리자 연락처: 010-1234-5678로 문의 바랍니다. 문의는 포도가 먹고싶은데엥 무늬는 포도가 먹고싶어요 여보옹</h3>
</body>
</html>