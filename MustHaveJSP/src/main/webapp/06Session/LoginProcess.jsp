<%@page import="membership.MemberDTO"%>
<%@page import="membership.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//로그인 폼으로부터 받은 아이디와 패스워드
String userId = request.getParameter("user_id");
String userPwd = request.getParameter("user_pw");

//web.xml에서 가져온 데이터베이스 연결 정보
String oracleDriver = application.getInitParameter("OracleDriver");
String oracleURL = application.getInitParameter("OracleURL");
String oracleId = application.getInitParameter("OracleId");
String oraclePwd = application.getInitParameter("OraclePwd");

//jdbc 연결(dto, dao 셋팅하고 작업 진행)
MemberDAO dao = new MemberDAO(oracleDriver, oracleURL, oracleId, oraclePwd); // jdbc 연결(이름이 다르기 때문에 순서가 중요함)
MemberDTO dto = dao.getMemberDTO(userId, userPwd); //폼으로 받은 값을 getMemberDTO의 매개값으로 전달
dao.close(); // jdbc 연결 해제
// 결론: id, pwd를 넣어 찾은 값을 dto에 가지고 있게 함

// 로그인 성공 여부에 따른 처리
if (dto.getId() != null){ // dto에 값이 있으면
	session.setAttribute("UserId", dto.getId()); // session 영역에 dto 값을 넣음
	session.setAttribute("UserName", dto.getName());
	response.sendRedirect("LoginForm.jsp"); // 응답이 LoginForm.jsp으로 돌아감
}
else{
	// 로그인 실패
	request.setAttribute("LoginErrMsg", "로그인 오류입니다."); // 요청 영역에 LoginErrMsg를 담아 보냄
	request.getRequestDispatcher("LoginForm.jsp").forward(request, response); // LoginForm으로 돌아가는데 request영역과 response 영역을 가지고 감 
}
%>



























<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginProcess.jsp</title>
</head>
<body>
	<!-- jdbc를 활용하여 member dto를 가져와 session에 저장할 것 -->

</body>
</html>