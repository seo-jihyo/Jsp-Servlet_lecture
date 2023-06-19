package edu.kosa.gift;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class GiftDAO { //controller
	private static GiftDAO instance = new GiftDAO();
	
	public static GiftDAO getInstance() {
		return instance;
	}

	private GiftDAO() { }
	
	//연결
	public Connection getConnection() throws Exception {
		
		Context initCtx = new InitialContext();
		
		DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc:GiftDB");
		System.out.println("Connection@@");
		
		
		return ds.getConnection();
	}
	//insert 상품 등록
	public void insert(GiftVO vo) throws Exception{
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		StringBuffer sb = new StringBuffer();
		
		sb.append("INSERT INTO GIFT (GNO, GNAME, G_START, G_END) values(?,?,?,?)");
	
		pstmt = conn.prepareStatement(sb.toString());
		
		pstmt.setInt(1, vo.getGNO());
		pstmt.setString(2, vo.getGname());
		pstmt.setInt(3, vo.getG_START());
		pstmt.setInt(4, vo.getG_END());
		
		int result = pstmt.executeUpdate();
		System.out.println("result: " + result);
	} //insert end
	
	
	//confirm gname
	public int confirmGN(String gname) throws Exception {
		String sql = "select gname from gift where gname = ?	";
		int result = -1;
		
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, gname);
		ResultSet rs = pstmt.executeQuery();
		
		if (rs.next()) result = 1;  //해당 아이디가 없음
		else result = -1;
	//	CloseHelper.close(rs); CloseHelper.close(pstmt); CloseHelper.close(conn);
			return result;
		}
}
