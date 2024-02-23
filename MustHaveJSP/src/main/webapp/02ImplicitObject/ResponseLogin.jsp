<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>ResponseLogin.jsp</title></head>
<body>
	<%
		String id = request.getParameter("user_id"); /* user_id를 parameter로 받아 id에 넣음 */
		String pwd = request.getParameter("user_pwd");
		if(id.equalsIgnoreCase("kkw")&&pwd.equalsIgnoreCase("1234")){ /* 대소문자 관계없이 아이디와 비밀번호가 일치하면(원래는 db에 있는 걸 사용해야 함) */
			response.sendRedirect("ResponseWelcome.jsp"); /* 브라우저에 응답 보냄, ResponseWelcome.jsp로 가주셈 */
		}
		else {
			request.getRequestDispatcher("ResponseMain.jsp?loginErr=1") /* 일치하지 않으면 다시 돌아가게 해야 함, ResponseMain.jsp 파일에서 loginErr에 값 1을 넣음 */
			.forward(request, response);
		}
	%>
</body>
</html>