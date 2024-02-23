<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>Insert title here</title></head><body>
<h2>파일 첨부형 게시픈 - 상세 보기(View)</h2>
<table border="1" width="90%">
	<colgroup>
		<col width="15%"/> <col width="35%"/>
		<col width="15%"/> <col width="*"/>
	</colgroup>
	
	<!-- 게시글 정보 -->
	<tr>
		<td>번호</td> <td>${ dto.board_No }</td>
		<td>작성자</td> <td>${ dto.user_Id }</td>
	</tr>
	<tr>
		<td>작성일</tr> <td>${ dto.board_Date }</td>
		<td>조회수</tr> <td>${ dto.board_Hit }</td>
	</tr>
	<tr>
		<td>제목</td>
		<td colspan="3">${ dto.board_Title }</td>
	</tr>
	<tr>
		<td>내용</td>
		<td colspan="3" height="100">${ dto.board_Content}</td>
	</tr>
	
	<!-- 첨부파일 -->
	<tr>
		<td>첨부파일</td>
		<td>
			<c:if test="${ not empty dto.boardImg }">
			</c:if>
		</td>
	</tr>
	
	<!-- 하단 메뉴(버튼) -->
	<tr>
		<td colspan="4" align="center">
			<button type="button" onclick="location.href='../mvcboard/pass.kgh?mode=edit&idx=${ param.board_No }';">
			수정하기
			</button>
			<button type="button" onclick="location.href='../mvcboard/pass.kgh?mode=delete&idx=${ param.board_No }';">
			삭제하기
			</button>
			<button type="button" onclick="location.href='../mvcboard/list.kgh';">
			목록 바로가기
			</button>
		</td>
	</tr>	
</table>
</body>
</html>