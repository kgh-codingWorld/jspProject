<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="common.Person"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>ForEachExtend2.jsp</title></head><body>
<h4>List 컬렉션 사용하기</h4>
<!-- 배열에 값 넣기 -->
<%
LinkedList<Person> lists = new LinkedList<Person>();
lists.add(new Person("김재준", 34));
lists.add(new Person("홍지영", 35));
lists.add(new Person("허유림", 36));
%>
<!-- 변수 선언 -->
<c:set var="lists" value="<%= lists %>" /> 
<c:forEach items="${ lists }" var="list">
<li>
	이름: ${ list.name }, 나이: ${ list.age }
</li>
</c:forEach>

<h4>Map 컬렉션 사용하기</h4>
<%
Map<String, Person> maps = new HashMap<String, Person>();
maps.put("1st", new Person("자바프로그래밍", 34));
maps.put("2nd", new Person("엠아이티", 24));
maps.put("3rd", new Person("jsp", 14));
%>
<c:set var="maps" value="<%= maps %>" />
<c:forEach items="${ maps }" var="map">
	<li>key => ${ map.key }<br />
		Value => 이름: ${ map.value.name }, 나이: ${ map.value.age }</li>
</c:forEach>
</body>
</html>