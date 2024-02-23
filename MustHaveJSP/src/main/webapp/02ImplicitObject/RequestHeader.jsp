<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>RequestHeader.jsp</title></head>
<body>
	<%
	Enumeration headers = request.getHeaderNames(); /* request에 있는 getHeaderNames()를 넣음, 요청한 정보의 모든 이름(키 값) 가져오기 */
	while (headers.hasMoreElements()){
		String headerName = (String)headers.nextElement();
		String headerValue = request.getHeader(headerName);
		out.print("헤더명: "+headerName+", 헤더값: "+headerValue+"<br/>");
	} /* 정보보안 쪽에서 많이 사용하는 코드 */
	%>
	<p>이 파일을 직접 실행하면 referer 정보는 출력되지 않습니다.</p> <!-- referer: 해당페이지를 직접호출하거나 특정페이지외에서 호출하는 것을 방지 -->
</body>
</html>