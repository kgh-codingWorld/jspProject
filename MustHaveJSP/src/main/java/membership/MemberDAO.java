package membership;

import java.sql.SQLException;

import common.JDBConnect;

public class MemberDAO extends JDBConnect{ // jdbc를 연결하여 crud를 담당
	
	public MemberDAO(String drv, String url, String id, String pw) {
		super(drv, url, id, pw); // new 객체 생성할 때 jdbc 연결용 매개값을 전달 받는다.
	} // MemberDAO 객체를 생성하면 오라클에 접속이 완료된다.
	
	public MemberDTO getMemberDTO(String uId, String uPass) {
		MemberDTO dto = new MemberDTO(); // 회원 객체 생성(아직은 값이 없음)
		String sql = "SELECT * FROM MEMBER WHERE id=? AND pass=?"; // 쿼리문 템플릿
		
		try {
			pstmt = con.prepareStatement(sql); // 동적 쿼리문 중비
			pstmt.setString(1, uId); // 쿼리문의 첫 번째 인파라미터에 값 설정
			pstmt.setString(2, uPass); // 쿼리문의 두 번째 인파라미터에 값 설정
			rs = pstmt.executeQuery(); // 쿼리문 실행
			
			if (rs.next()) { // rs 결과값을 돌려
				dto.setId(rs.getString("id")); // 회원 객체의 필드에 값 저장
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString(3)); // 
				dto.setRegidate(rs.getString(4));
			}
		} catch (Exception e) {
			System.out.println("getMemberDTO()메서드 오류 MemberDAO를 확인하세요.");
			e.printStackTrace();
		}
		return dto; // 결과 리턴할 객체
	}
}
