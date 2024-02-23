<%@page import="java.sql.PreparedStatement"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ExeUpdate.jsp</title>
</head>
<body>
	<h2>회원 추가 테스트(executeUpdate() 사용)</h2>
	
	<%
	JDBConnect jdbc = new JDBConnect(); //기본 생성자를 사용하여 db에 연결
	String id = "test1";
	String pass = "1234";
	String name = "테스트회원1";
	
	String sql = "INSERT INTO MEMBER VALUES(?,?,?,SYSDATE)";
	PreparedStatement pstmt = jdbc.con.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, pass);
	pstmt.setString(3, name); //쿼리문 완성
	
	int intResult = pstmt.executeUpdate(); //쿼리문 실행 후 결과를 int로 받음
	out.println(intResult + "행이 입력되었습니다.");
	
	//연결 닫기
	jdbc.close();
	
	%>
</body>
</html>