package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("message", "HelloServlet"); // req에 값 넣기 [모델 역할]
		req.getRequestDispatcher("/13Servlet/HelloServlet.jsp").forward(req, resp); // 괄호 안으로 응답 보내기 [뷰 역할]
	}
}
