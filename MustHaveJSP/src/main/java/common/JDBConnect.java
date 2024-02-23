package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;

public class JDBConnect {
	//필드
	public Connection con; // 연결성을 담당
	public Statement stmt; // 정적쿼리를 담당
	public PreparedStatement pstmt; // 동적쿼리를 담당(인파라미터)
	public ResultSet rs; // 결과표
	
	//생성자
	public JDBConnect() { // = new JDBConnect() 자동으로 객체 생성하면서 연결 진행
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			 
			String url = "jdbc:oracle:thin:@192.168.111.101:1521:xe";
			String id = "mustHaave";
			String pwd = "1234";
			con = DriverManager.getConnection(url, id, pwd);
			
			System.out.println("DB 연결 성공(기본 생성자)");
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	//두 번째 생성자
	public JDBConnect(String driver, String url, String id, String pwd) {
		try {
			Class.forName(driver);
			
			con = DriverManager.getConnection(url, id, pwd);
			
			System.out.println("DB 연결 성공(인수 생성자1)");
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	//세 번째 생성자
	public JDBConnect(ServletContext application) {
		try {
			String driver = application.getInitParameter("OracleDriver");
			Class.forName(driver);
			
			String url = application.getInitParameter("OracleURL");
			String id = application.getInitParameter("OracleId");
			String pwd = application.getInitParameter("OraclePwd");
			con = DriverManager.getConnection(url, id, pwd);
			
			System.out.println("DB 연결 성공(인수 생성자2)");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//메서드
	public void close() {
		try {
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(pstmt != null) pstmt.close();
			if(con != null) con.close();
			
			System.out.println("JDBC 자원 해제");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
