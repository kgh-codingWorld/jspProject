<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>RequestParameter.jsp</title>
</head>
<body>
	<h2>2. 클라이언트의 요청 매개변수 읽기</h2>
	<%
	request.setCharacterEncoding("UTF-8"); /* post 방식에서는 한글이 깨짐, 한글 지원을 위해 사용함 무조건 쓰기 */
	String id = request.getParameter("id"); /* 요청한 것에 대한 처리를 parameter가 실행함 */
	String sex = request.getParameter("sex");
	String[] favo = request.getParameterValues("favo"); /* 체크박스는 대부분 배열로 처리함 */
	String favoStr = "";
	if (favo != null) {
		for (int i=0; i<favo.length; i++){
			favoStr += favo[i] + " ";
		}
	}
	String intro = request.getParameter("intro").replace("\r\n", "<br/>"); /* enter를 br로 치환해서 사용 */
	%>
	<ul>
	<li>아이디: <%= id %></li>
	<li>성별: <%= sex %></li>
	<li>관심사항: <%= favoStr %></li>
	<li>자기소개: <%= intro %></li>
	</ul>
</body>
</html>