<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>ResponseMain.jsp</title></head>
<body>
	<h2>1. 로그인 폼</h2>
	<%
	String loginErr = request.getParameter("loginErr"); /* 갔다왔을 때 변수 loginErr에 뭔가 있으면 로그인 실패*/
	if (loginErr != null) out.print("로그인 실패");
	%>
	<form action="./ResponseLogin.jsp" method="post">
	아이디: <input type="text" name="user_id" /><br/>
	비밀번호: <input type="text" name="user_pwd" /><br/>
	<input type="submit" value="로그인" />
	</form>
</body>
</html>