<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./IsLoggedin.jsp"%><!-- 로그인 확인에 대한 코드 삽입(주의사항 html5 태그 중복 제거)  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	function validateForm(form) { // validateForm을 호출하면 폼의 매개값을 받음
		if(form.title.value == ""){ // 폼 안에 제목의 값을 확인하여 빈칸이면
			alert("제목을 입력하세요"); // 경고창과 메시지 출력
			form.title.focus(); // 제목 박스로 커서를 이동
			return false; /* 결과로 false를 보냄 */
		}
		if(form.content.value == ""){ // 폼 안에 내용의 값을 확인하여 빈칸이면
			alert("내용을 입력하세요");// 경고창과 메시지 출력
			form.content.focus();// 내용 박스로 커서를 이동
			return false;/* 결과로 false를 보냄 */
		}
	}
</script>
<title>Write.jsp</title>
</head>
<body>
	<jsp:include page="../Common/Link.jsp"/>
	<h2>회원제 게시판 - 글쓰기(Write)</h2>
	<form action="WriteProcess.jsp" method="post" name="writeFrm" 
		onsubmit="return validateForm(this);"> <!-- WriteProcess.jsp에 post 방식으로 전달, submit 버튼 누르면 validateForm 실행 -->
		<table border="1" width="90%"> <!-- 테이블 크기 -->
		<tr>
			<td>제목</td>
			<td>
				<input type="text" name="title" style="width: 90%;" />
			</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>
				<textarea name="content" style="width: 90%; height: 100px;"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<button type="submit">작성 완료</button>
			<button type="reset">다시 입력</button>
			<button type="button" onclick="location.href='List.jsp';">목록 보기</button> <!-- List.jsp 파일과 연결 -->
			</td>
		</tr>
		</table>
</body>
</html>