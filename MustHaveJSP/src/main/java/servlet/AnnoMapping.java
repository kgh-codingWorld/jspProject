package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/13Servlet/AnnoMapping.ez")//http://192.168.111.101:8000/MustHaveJSP/13Servlet/AnnoMapping.ez라고 치면 메서드가 반응을 함
public class AnnoMapping extends HttpServlet{ // -> 톰캣용으로 동작
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("message", "어노테이션을 이용한 매핑 테스트😜");
		req.getRequestDispatcher("/13Servlet/AnnoMapping.jsp").forward(req, resp); // 괄호 안으로 forward 방식을 사용하여 값을 보냄
	}
	
}
