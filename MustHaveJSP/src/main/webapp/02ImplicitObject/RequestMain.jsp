<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>Request Main</title>
</head>
<body>
	<h2>1. 클라이언트와 서버의 환경정보 읽기</h2> <!-- 제목 -->
	<a href="./RequestWebInfo.jsp?eng=Hello&kor=안녕"> <!-- 링크 , 현재 폴더(.)에 있는 RequestWebInfo.jsp에 eng=Hello&han=안녕을 넘겨줌-->
	Get 방식 전송
	</a><!-- get 방식으로 요청 -->
	<br />
	<form action="RequestWebInfo.jsp" method="post"><!-- RequestWebInfo.jsp에 post 방식 요청 -->
	영어: <input type="text" name="eng" value="Bye"/><br /> <!-- '/>' xml 표기 방식 -->
	한글: <input type="text" name="kor" value="잘가"/><br />
	<input type="submit" value="POST 방식 전송"/>
	</form>
	
	<h2>2. 클라이언트의 요청 매개변수 읽기</h2>
	<form method="post" action="RequestParameter.jsp"><!-- RequestParameter.jsp에 post 방식 요청 -->
	아이디: <input type="text" name="id" value="" /> <br />
	성별:
	<input type="radio" name="sex" value="man" />남자<!-- radio: 값이 하나만 전송됨 -->
	<input type="radio" name="sex" value="woman" />여자
	<br />
	관심사항:
	<input type="checkbox" name="favo" value="eco" />경제<!-- 배열로 받을 것인지 for문으로 받을 것인지 선택하기 나름 -->
	<input type="checkbox" name="favo" value="pol" checked="checked" />정치
	<input type="checkbox" name="favo" value="ent" />연예<br />
	자기소개:
	<textarea name="intro" cols="30" rows="4"></textarea><!-- 게시물의 내용을 쓸 때 textarea 많이 씀 -->
	<br />
	<input type="submit" value="전송하기" /><!-- post 방식에서는 submit이 있어야 함. 값을 전송해야하므로. -->
	</form>
	
	<h2>3. HTTP 요청 헤더 정보 읽기</h2>
	<a href="RequestHeader.jsp"> <!-- HTTP 요청 헤더 읽기 -->
	요청 헤더 정보 읽기
	</a>
</body>
</html>