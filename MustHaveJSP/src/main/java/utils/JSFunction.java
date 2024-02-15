package utils;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;

public class JSFunction {
	// jsp 파일에서 alert 창을 띄우려면 <% 스크립틀릿 %> 이후에 작성해야 한다.
	// java 코드가 이어지는 부분에서는 코드가 복잡해지므로 따로 뺀다.

	// 메시지 알림창을 띄운 다음 url로 이동하게끔 진행한다.
	public static void alertLocation(String msg, String url, JspWriter out) {
		try {
			String script = "" // 삽입할 자바스크립트 코드
					+ "<script>" + "		alert('" + msg + "');" + "		location.href='" + url + "';" // 알림창을 닫은 후
																											// 이동할 페이지
																											// url
					+ "</script>";
			out.println(script); // 자바스크립트 코드를 out 내장 객체로 출력(삽입)
		} catch (Exception e) {

		}
	}// alertLocation() 메서드 종료

	// 메시지 일림창을 띄운 후 이전 페이지로 돌아갑니다.
	public static void alertBack(String msg, JspWriter out) {
		try {
			String script = "" + "<script>" + "		alert('" + msg + "');" // 알림창 띄우고
					+ "		history.back();" // 이전 페이지로 돌아감
					+ "</script>";
			out.println(script); // 자바스크립트 코드를 out 내장 객체로 출력(삽입)
		} catch (Exception e) {

		}
	} // alertBack() 메서드 종료

	public static void alertLocation(HttpServletResponse resp, String msg, String url) {

		try {
			resp.setContentType("text/html;charset=UTF-8");
			PrintWriter writer = resp.getWriter();
			String script = "<script> alert('" + msg + "') location.href='" + url + "</script>";
			writer.print(script);
		} catch (IOException e) {
		}
	}

	public static void alertBack(HttpServletResponse resp, String msg) {
		try {
			resp.setContentType("text/html;charset=UTF-8");
			PrintWriter writer = resp.getWriter();
			String script = "<script> alert('" + msg + "') history.back() </script> ";
			writer.print(script);
		} catch (IOException e) {
		}
	}

}
