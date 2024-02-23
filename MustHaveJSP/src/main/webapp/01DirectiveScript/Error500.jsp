<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error500.jsp</title>
</head>
<body>
	<%
	try{	
	int myAge = Integer.parseInt(request.getParameter("age"))+10;
		out.println("10년 후에 당신의 나이는 "+myAge+"세 입니다.");
	} catch(Exception e){
		out.println("예외 발생: 매개변수 age가 null 입니다.");
		out.println("주소에 ?age=숫자를 입력하세요.");
	}
	%>
</body>
</html>