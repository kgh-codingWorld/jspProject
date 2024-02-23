<%@page import="common.DBConnPool"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ConnectionTest.jsp</title>
</head>
<body>
	<h2>JDBC TEST1: 기본 생성자 활용</h2>
	<%
	JDBConnect jdbc1 = new JDBConnect(); //기본 생성자로 객체 생성
	jdbc1.close();
	%>
	
	<h2>JDBC TEST2</h2>
	<%
	String driver = application.getInitParameter("OracleDriver");
	String url = application.getInitParameter("OracleURL");
	String id = application.getInitParameter("OracleId");
	String pwd = application.getInitParameter("OraclePwd");
	// 톰캣이 관장하는 web.xml 파일에 4가지 항목을 기록해두고 필요할 때 꺼내 사용함
	JDBConnect jdbc2 = new JDBConnect(driver, url, id, pwd);
	jdbc2.close();
	%>
	
	<h2>JDBC TEST3</h2>
	<%
	JDBConnect jdbc3 = new JDBConnect(application);
	jdbc3.close();
	%>

	<h2>커넥션 풀 테스트</h2>
	<%
	DBConnPool pool = new DBConnPool();
	pool.close();
	%>
	
	
</body>
</html>