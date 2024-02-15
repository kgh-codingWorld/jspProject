package fileupload;

import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import common.DBConnPool;

public class MyFileDAO extends DBConnPool{ // jdbc 연결해서 sql문을 처리한다.
	
	// 새로운 게시물 입력
	public int insertFile(MyFileDTO dto) {
		int applyResult = 0; // 변수 선언
		
		try {
			String query = "INSERT INTO MYFILE(IDX, NAME, TITLE, CATE, OFILE, SFILE) VALUES(SEQ_BOARD_NUM.NEXTVAL, ?, ?, ?, ?, ?)"; // 쿼리문 작성
			
			pstmt = con.prepareStatement(query); // 동적 쿼리문 처리 - db, 쿼리 연결
			pstmt.setString(1,  dto.getName()); // dto에 들어간 값 db에 삽입
			pstmt.setString(2,  dto.getTitle());
			pstmt.setString(3,  dto.getCate());
			pstmt.setString(4,  dto.getoFile());
			pstmt.setString(5,  dto.getsFile());
			
			applyResult = pstmt.executeUpdate(); // 삽입 처리
		} catch (SQLException e) {
			System.out.println("INSERT문 중 예외 발생(MyFileDAO.insertFile()을 확인하세요.");
			e.printStackTrace();
		}
		return applyResult; // 삽입된 값 반환
	}
	
	public List<MyFileDTO> myFileList(){
		List<MyFileDTO> fileList = new Vector<MyFileDTO>(); 
		//쿼리문
		String query = "SELECT * FROM MYFILE ORDER BY IDX DESC";
		
		try {
			// db와 연결 준비
			pstmt = con.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			// rs에 담긴 값 순차적으로 돌려
			while(rs.next()) {
				//dto에 저장
				MyFileDTO dto = new MyFileDTO();
				dto.setIdx(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setTitle(rs.getString(3));
				dto.setCate(rs.getString(4));
				dto.setoFile(rs.getString(5));
				dto.setsFile(rs.getString(6));
				dto.setPostdate(rs.getString(7));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fileList; // 반환
	}
}
