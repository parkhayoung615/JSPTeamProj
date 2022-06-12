package work;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import util.JdbcUtil;

public class Order {
	// 주문
			public int insertOrder(String cake, String taste,String color,String text,String want) {
				int n = 0;

				Connection conn = null;
				PreparedStatement pstmt = null;
				String sql = "insert into cake values('cake',?,?,?,?)";

				conn = JdbcUtil.getConnection();

				try {
					pstmt = conn.prepareStatement(sql);
					//pstmt.setString(1, cake);
					pstmt.setString(1, taste);
					pstmt.setString(2, color);
					pstmt.setString(3, text);
					pstmt.setString(4, want);
					n = pstmt.executeUpdate();
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					JdbcUtil.close(conn, pstmt);
				}
				return n;
			}
}
