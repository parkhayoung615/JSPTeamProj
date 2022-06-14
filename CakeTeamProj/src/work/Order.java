package work;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import util.JdbcUtil;

public class Order {
	// 주문
	public int insertOrder(String id, String taste, String color, String text, String want, int cake) {
		int n = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "insert into cake values(?,?,?,?,?,?)";

		conn = JdbcUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			// pstmt.setString(1, cake);
			pstmt.setString(1, id);
			pstmt.setString(2, taste);
			pstmt.setString(3, color);
			pstmt.setString(4, text);
			pstmt.setString(5, want);
			pstmt.setInt(6, cake);
			n = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt);
		}
		return n;
	}
}
