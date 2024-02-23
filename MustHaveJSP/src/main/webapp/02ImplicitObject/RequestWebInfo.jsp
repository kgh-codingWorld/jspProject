<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>RequestWebInfo.jsp</title>
</head>
<body>
	<h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
	<ul>
		<li>데이터 전송 방식: <%= request.getMethod() %></li> <!-- main jsp 파일을 통해 요청된 방식이 들어옴 -->
		<li>URL: <%= request.getRequestURL() %></li>
		<li>URI: <%= request.getRequestURI() %></li>
		<li>프로토콜: <%= request.getProtocol() %></li>
		<li>서버명: <%= request.getServerName() %></li> 
		<li>서버 포트: <%= request.getServerPort() %></li>
		<li>클라이언트 IP 주소: <%= request.getRemoteAddr() %></li>
		<li>쿼리스트링: <%= request.getQueryString() %></li>
		<li>전송된 값1: <%= request.getParameter("eng") %></li><!-- 전달 받은 정보 가져오기 -->
		<li>전송된 값2: <%= request.getParameter("kor") %></li>
	</ul>
</body>
</html>