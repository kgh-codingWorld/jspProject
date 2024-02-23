package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.ez") //http://192.168.111.101:8000/MustHaveJSP/????.ez에 모든 반응을 함
public class FrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI(); //MustHaveJSP/????.ez
		int lastSlash = uri.lastIndexOf("/"); //uri 문자열의 마지막에 있는 '/'을 찾을 예정(배열 주소값 저장, 11)
		String commandStr = uri.substring(lastSlash); //????.ez를 찾음
		
		if(commandStr.equals("/regist.ez")) 
			registFunc(req);
		
		else if(commandStr.equals("/login.ez"))
			loginFunc(req);
		
		else if(commandStr.equals("/freeBoard.ez"))
			freeBoardFunc(req);
		//commandStr 값이 각각의 경로명을 일치시켜 메서드로 전달함
		
		req.setAttribute("uri", uri);
		req.setAttribute("commandStr", commandStr);
		req.getRequestDispatcher("/13Servlet/FrontController.jsp").forward(req, resp);
	}


	private void registFunc(HttpServletRequest req) {
		req.setAttribute("resultValue", "<h4>회원가입 페이지</h4>");
	}

	private void loginFunc(HttpServletRequest req) {
		req.setAttribute("resultValue", "<h4>로그인 페이지</h4>");
		
	}
	
	private void freeBoardFunc(HttpServletRequest req) {
		req.setAttribute("resultValue", "<h4>자유게시판 페이지</h4>");
	}
}
