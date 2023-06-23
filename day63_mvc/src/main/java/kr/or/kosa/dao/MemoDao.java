package kr.or.kosa.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import ko.or.kosa.util.ConnectionHelper;
import ko.or.kosa.util.ConnectionSingletonHelper;
import kr.or.kosa.dto.MemoDto;

/*
 * 싱글톤 방식 연습 (DB연결)
  	Connection conn = null;
	
	public MemoDao() {
		conn = ConnectionSingletonHelper.getConnection("oracle");  //singleton
	}
 * 
 */

public class MemoDao {

	// POOL
	DataSource ds = null;

	public MemoDao() {
		try {
			// JNDI
			Context ctx = new InitialContext();
			// 현재 [프로젝트]에서 특정 이름을 가진 객체를 검색 (사용 : 이름기반 검색)
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/MemoDB");
			// lookup 된 객체의 타입이 DataSource
			System.out.println("connection!!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 삽입
	public int insertMemo(MemoDto dto) {
		System.out.println(dto.toString());
		int resultrow = 0;
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO MEMO(ID, EMAIL, CONTENT) VALUES (?, ?, ?)";
		// Pool
		Connection conn = null;

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getEmail());
			pstmt.setString(3, dto.getContent());

			resultrow = pstmt.executeUpdate(); // int형 return

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ConnectionSingletonHelper.close(pstmt);
				ConnectionSingletonHelper.close(conn);
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return resultrow;
	} // insert end

	// 전체 조회
	public List<MemoDto> selectAllMemo() throws SQLException {
		PreparedStatement pstmt = null;
		String sql = "SELECT * FROM MEMO";

		/// Pool ///////////////////////////////////
		Connection conn = ConnectionHelper.getConnection("oracle");
		////////////////////////////////////////////

		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		List<MemoDto> list = new ArrayList<>();

		while (rs.next()) {
			MemoDto dto = new MemoDto();
			dto.setId(rs.getString("id"));
			dto.setEmail(rs.getString("email"));
			dto.setContent(rs.getString("content"));

			list.add(dto);
		}

		// Pool 에게 연결 객체 반환//////////////
		conn.close();
		////////////////////////////////////////

		return list;
	} // select end

	// ID 유무 확인 함수
	public String isCheckById(String id) throws Exception {

		Connection conn = ConnectionHelper.getConnection("oracle");
		String sql = "SELECT ID FROM MEMO WHERE ID = ?";
		String isDbId = null;
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);

		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			// 같은 ID 존재
			isDbId = "이미 사용 중입니다. 다른 id를 입력하세요.";
		} else {
			// 사용 가능한 ID
			isDbId = "사용할 수 있는 id입니다.";
		}

		rs.close();
		pstmt.close();
		conn.close();

		return isDbId;
	} // id check end

	// selectByID
	public MemoDto selectByID(String search) throws Exception {
		Connection conn = ConnectionHelper.getConnection("oracle");
		String sql = "SELECT * FROM MEMO WHERE ID = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, search);

		ResultSet rs = pstmt.executeQuery();

		MemoDto dto = new MemoDto();

		if (rs.next()) {

			dto.setId(rs.getString("id"));
			dto.setEmail(rs.getString("email"));
			dto.setContent(rs.getString("content"));

		}

		rs.close();
		pstmt.close();
		conn.close();

		return dto;
	}

	// update
	public int memoUpdate(MemoDto memoDto) throws Exception {
		Connection conn = ConnectionHelper.getConnection("oracle");
		String sql = "update memo set email = ?, content = ? where id = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, memoDto.getEmail());
		pstmt.setString(2, memoDto.getContent());
		pstmt.setString(3, memoDto.getId());

		return pstmt.executeUpdate();
	}

	// delete
	public int memoDelete(String id) throws Exception {
		Connection conn = ConnectionHelper.getConnection("oracle");
		String sql = "DELETE FROM MEMO WHERE ID = ?";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);

		return pstmt.executeUpdate();

	}
}
