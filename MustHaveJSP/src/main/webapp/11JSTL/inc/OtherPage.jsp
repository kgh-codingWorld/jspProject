<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 내부의 다른 폴더 페이지 -->
<h4>OtherPage.jsp(같은 웹 애플리케이션의 다른 파일)</h4>
<ul>
	<li>저장된 값: ${ requestVar }</li>
	<li>매개변수 1: ${ param.user_param1 }</li>
	<li>매개변수 2: ${ param.user_param2 }</li>
</ul>