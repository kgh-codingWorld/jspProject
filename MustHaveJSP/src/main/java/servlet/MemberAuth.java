package servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import membership.MemberDAO;
import membership.MemberDTO;

public class MemberAuth extends HttpServlet{
	MemberDAO dao; // JDBC 연결 및 CRUD 구현되어 있음
	//id와 pw를 전달 받아 있으면 dto 객체를 리턴함
	
	@Override // MemberAuth가 tomcat으로 동작 시 초기화를 담당함
	public void init() throws ServletException {
		// application 영역에 있는 내장된 객체와 값을 전달 받음
		ServletContext app = this.getServletContext(); // 이렇게 하면 다 가져올 수 있음
		String driver = app.getInitParameter("OracleDriver");
		String url = app.getInitParameter("OracleURL");
		String id = app.getInitParameter("OracleId");
		String pw = app.getInitParameter("OraclePwd");
		dao = new MemberDAO(driver, url, id, pw);
		//jdbc 연결됨
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// JDBC 연결 이후에 처리될 동작
		
		// 서블릿 초기화 매개변수에서 관리자 ID 받기
		String admin_id = this.getInitParameter("admin_id"); // kkw인지를 확인해야 함
		
		// 인증을 요청한 ID/패스워드
		String id = req.getParameter("id"); // 아이디를 받음
		String pw = req.getParameter("pass"); 
		
		// 회원테이블에서 인증 요청한 ID/패스워드에 해당하는 회원 찾기
		MemberDTO dto = dao.getMemberDTO(id, pw); // db에 있는 값 확인
		
		// 찾은 회원의 이름에 따른 처리
		String memberName = dto.getName(); // db에 있는 dto의 이름을 memberName으로 넣음
		if(memberName != null) { // 일치하는 회원 찾음
			req.setAttribute("authMessage", memberName+"회원님 환영합니다.");
		}
		else { // 회원이 아닐 때
			if(admin_id.equals(id))  // 관리자
				req.setAttribute("authMessage", admin_id+"관리자님 환영합니다.");
			else // 비회원
				req.setAttribute("authMessage", "귀하는 회원이 아닙니다. 회원가입 하세요.");
			
		}// db의 회원과 app에 있는 관리자 여부를 확인
		req.getRequestDispatcher("/13Servlet/MemberAuth.jsp").forward(req, resp);
	} // id로 회원, 관리자 여부를 확인한다.
	
	@Override
	public void destroy() {
		// 서버 종료 시 실행되는 메서드
		dao.close(); // jdbc 연결 종료
	}
}
