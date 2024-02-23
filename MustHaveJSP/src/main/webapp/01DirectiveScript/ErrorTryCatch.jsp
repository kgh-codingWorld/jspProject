<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="IsErrorPage.jsp" %> <!-- 예외발생 시 떠넘어가는 파일 지정 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ErrorTryCatch.jsp</title>
</head>
<body>
	<%
		int myAge = Integer.parseInt(request.getParameter("age"))+10;
		out.println("10년 후에 당신의 나이는 "+myAge+"세 입니다.");
	%>
</body>
</html>