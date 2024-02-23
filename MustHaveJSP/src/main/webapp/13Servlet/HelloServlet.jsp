<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>HelloServlet</title></head><body>
<h2>web.xml에서 매핑 후 view로 출력</h2>
<p>
<strong><%= request.getAttribute("message") %></strong>
<br />
<a href="./HelloServlet.ez">링크 바로가기</a>
</body>
</html>