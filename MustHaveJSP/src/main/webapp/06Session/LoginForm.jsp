<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginForm.jsp</title>
</head>
<body>
<!-- LoginForm은 input 박스의 값을 LoginProcess로 보냄(req, resp) -->

<jsp:include page="../Common/Link.jsp" /> <!-- 외부에서 만든 메뉴 삽입 -->
	<h2>로그인 페이지</h2>
	<span style="color: red; font-size: 1.2em;">
		<%= request.getAttribute("LoginErrMsg")==null ?
				"" : request.getAttribute("LoginErrMsg")%> <!-- 삼항연산자 -->
	</span>	
	<% 
	if (session.getAttribute("UserId") == null) { //로그인 상태 확인
		//로그아웃 상태
	%>
	<script> /* 호출해야 실행됨 */
	function validateForm(form){
		if (!form.user_id.value){
			alert("아이디를 입력하세요.");
			return false;
		}
		if (form.user_pw.value == ""){
			alert("패스워드를 입력하세요.");
			return false;
		}
	}
	</script>
	<form action="LoginProcess.jsp" method="post" name="LoginFrm"
	onsubmit="return validateForm(this);"> <!-- submit을 누르면 onsubmit이 1차로 실행됨, 여기서 true가 나와야 action이 실행됨 -->
	아이디: <input type="text" name="user_id" /><br/>
	패스워드: <input type="password" name="user_pw" /><br/>
	<input type="submit" value="로그인하기" />
	</form>
	<%
	} else { //로그인된 상태
	%>
		<%=session.getAttribute("UserName") %> 회원님, 로그인하셨습니다. <br />
		<%=session.getAttribute("UserId") %> 회원님, 반갑습니다. <br />
		<a href="Logout.jsp">[로그아웃]</a>
	<%
	}
	%>
</body>
</html>