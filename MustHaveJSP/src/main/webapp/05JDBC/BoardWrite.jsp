<%@page import="java.sql.PreparedStatement"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardWrite.jsp</title>
</head>
<body>
	<h2>게시글 작성</h2>
	제목: <input type="text" name="title">
	내용: <input type="text" name="content">
	<%
	JDBConnect jdbc = new JDBConnect();
	String title = "d";
	String content = "d";
	String id = "kkw";
	int visitCount = 2;
	
	String sql = "INSERT INTO BOARD VALUES(seq_board_num.NEXTVAL, ?, ?, ?, SYSDATE, ?)";
	PreparedStatement pstmt = jdbc.con.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setString(3, id);
	pstmt.setInt(4, visitCount);
	int n = pstmt.executeUpdate();
	if (n>0){
		out.println("새로운 글이 입력되었습니다.");
	}
	
	jdbc.close();
	%>
</body>
</html>