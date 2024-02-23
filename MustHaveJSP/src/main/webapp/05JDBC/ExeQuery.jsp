<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ExeQuery.jsp</title>
</head>
<body>
	<h2>회원 목록 조회 테스트(executeQuery() 사용)</h2>
	<%
	JDBConnect jdbc = new JDBConnect();
	
	String sql = "SELECT ID, PASS, NAME, REGIDATE FROM MEMBER";
	Statement stmt = jdbc.con.createStatement(); // 쿼리문 생성
	
	ResultSet rs = stmt.executeQuery(sql); //위에서 만든 쿼리문 실행
	
	while(rs.next()){ //rs로 받은 표에 행이 없으면 false, 있으면 true 반환
		String id = rs.getString(1);
		String pass = rs.getString(2);
		String name = rs.getString("name");
		java.sql.Date regidate= rs.getDate("regidate");
		
		out.println(String.format("%s %s %s %s", id, pass, name, regidate)+"<br/>");
	}
	jdbc.close();
	%>
</body>
</html>