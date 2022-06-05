package work;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.JdbcUtil;

public class User {
//	로그인 #해보자고 !!!
	public ArrayList<String> loginUser(String id, String pwd) {
		ArrayList<String> loginList = new ArrayList<>();

		// DB 연동
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM login WHERE id = ? AND password = ?";

		conn = JdbcUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				loginList.add(rs.getString("id"));
				loginList.add(rs.getString("password"));
				loginList.add(rs.getString("password"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		return loginList;
	}
	// 회원가입
		public int insertUser(String id, String password, String passwordOK, String name, String email, String phone, String addr,
				String m_addr, String d_addr, String birth) {
			int n = 0;

			Connection conn = null;
			PreparedStatement pstmt = null;
			String sql = "insert into login values(?,?,?,?,?,?,?,?,?,?)";

			conn = JdbcUtil.getConnection();

			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.setString(2, password);
				pstmt.setString(3, passwordOK);
				pstmt.setString(4, name);
				pstmt.setString(5, email);
				pstmt.setString(6, phone);
				pstmt.setString(7, addr);
				pstmt.setString(8, m_addr);
				pstmt.setString(9, d_addr);
				pstmt.setString(10, birth);
				n = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				JdbcUtil.close(conn, pstmt);
			}
			return n;
		}
	// 로그아웃 #해보자고
	
	}

