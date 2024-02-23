<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String popupMode = "on"; // 레이어 팝업창 띄울지 여부

Cookie[] cookies = request.getCookies(); // 요청 헤더에 담긴 쿠키 값 가져와
if(cookies != null){ // 쿠키가 있으면
	for (Cookie c : cookies) { // 반복문 돌려서 찾아
		String cookieName = c.getName(); // 찾은 이름 변수에 넣어
		String cookieValue = c.getValue();
		if (cookieName.equals("PopupClose")){
			popupMode = cookieValue;
		} // request 영역에 쿠키 배열을 가져와 PopupClose와 이름이 같은 쿠키를 popupMode에 넣는다.
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	div#popup {
		position: absolute; top: 100px; left: 50px; color: yellow;
		width: 270px; height: 100px; background-color: gray;
	}
	div#popup>div{
		position: relative; background-color: #fff; top: 0px;
		border: 1px solid gray; padding: 10px; color: black;
	} 
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
$(function(){ // 어떤 기능을 쓸 건데
	$('#closeBtn').click(function(){ // closeBtn을 누르면 실행되는 기능이고
		$('#popup').hide(); // 그 기능은 팝업창이 숨겨지는 것
		var chkVal = $("input:checkbox[id=inactiveToday]:checked").val();
		// 체크박스에 체크가 되어있다면 val을 chkVal에 넣어(체크가 되면 1, 안 되면 null)
		// 하루동안 열지않음 체크박스에 체크해놔?
				
		// 닫기 버튼을 누르면 실행되는 코드 > 체크박스를 클릭 시 값 변화에 따른 소스 코드
		$.ajax({ // 클라이언트와 서버 간에 데이터 교환해
			url : './PopupCookie.jsp', // 이 jsp 파일 사용할 거고 /* ./PopupCookie.jsp?inactiveToday=1 */
			type : 'get', // get 방식으로 넘겨
			data : {inactiveToday : chkVal}, // 체크 박스 실행된 상태로
			dataType : "text",
			success : function(resData){
				if (resData != '') location.reload(); // resData가 비지 않으면 쿠키처리를 할 것이다.
			}
		})
	});
}); // id가 popup인 객체를 숨김
</script>
<title>PopupMain_0.1.jsp</title>
</head>
<body>
	<h2>팝업 메인페이지(ver 0.1)</h2>
	<% 
	out.print("현재 팝업창은 "+popupMode+" 상태입니다.<br/>");
	
	if(popupMode.equals("on")) { // 팝업모드가 on이면
	%>
		<div id="popup">
			<h2 align="center">공지사항 팝업입니다.</h2>
			<div align="right"><form name="popFrm">
			<input type="checkbox" id="inactiveToday" value="1" /> <!-- value=1은 어디로 들어가는 값일까? -->
			하루 동안 열지 않음
			<input type="button" value="닫기" id="closeBtn" />
			</form></div>
	<%
	}
	%>
</body>
</html>