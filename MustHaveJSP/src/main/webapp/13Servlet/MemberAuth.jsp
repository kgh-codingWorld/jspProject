<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>MemberAuth.jsp</title></head><body>
	<h2>MVC 패턴으로 회원인증</h2>
	<h3>M: 모델(MemberAuth.java)</H3>
	<h3>V: 뷰(MemberAuth.jsp)</h3>
	<h3>C: 컨트롤러(web.xml)</h3>
	<p>
	<strong>${ authMessage }</strong>
	</p>
	<br>
	<a href="./MemberAuth.ez?id=kkw&pass=1234">회원인증(회원)</a>
	<br>
	<a href="./MemberAuth.ez?id=ez304&pass=1234">회원인증(관리자)</a>
	<br>
	<a href="./MemberAuth.ez?id=kkk&pass=1234">회원인증(비회원)</a>
</body>
</html>