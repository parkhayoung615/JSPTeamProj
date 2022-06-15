<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.JdbcUtil"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="./css/myPage.css" rel="stylesheet" type="text/css" />
<title>Document</title>
</head>

<body
	style="-webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none">
	<%@ include file="./view/header.jsp"%>
	<%
	if(id == null) {
		out.println("<script>alert('로그인을 진행 해주세요!');</script>");
		out.print("<script> location.href = 'index.jsp' </script>");
	}
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "select id, name, phone, email, addr, m_addr, d_addr from login where id = ?";
	boolean result = false;

	conn = JdbcUtil.getConnection(); // JDBC 드라이버 메모리 로딩, DB 연결
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
	%>

	<div id="main">
		<div id="sidebar">
			<div class="profile-tit">
				<h1 class="tit">Profile</h1>
			</div>
			<%
			while (rs.next()) {
			%>
			<div id="profile">
				<div class="profile-wrap">
					<div class="profile-img-box">
						<img src="./image/ha2.png" alt="프로필 이미지" class="profile-img">
					</div>
					<div class="profile-txt">
						<span class="userid"><%=id%></span>
						<h2 class="name"><%=rs.getString("name")%></h2>
						<span class="phone"><%=rs.getString("phone")%></span> <span
							class="email"><%=rs.getString("email")%></span> <span
							class="addr"><%=rs.getString("addr")%> <%=rs.getString("m_addr")%></span>
						<span class="addr m"><%=rs.getString("d_addr")%></span>
					</div>
				</div>
			</div>
		</div>
		<%
		}
		} catch (SQLException e) {
		e.printStackTrace();
		} finally {
		JdbcUtil.close(conn, pstmt, rs);
		}
		%>
		<div id="mypage">
			<div class="mypage-box">
				<div class="mypage-main-wrap">
					<div class="mypage-main-section mypage-profile">
						<div class="mypage-main-tit">
							<h2 class="main-tit">
								Hello<br>World!
							</h2>
						</div>
						<div class="mypage-circle">
							<img src="./image/ga.png" alt="프로필 사진" class="mypage-img">
							<img src="./image/ha1.png" alt="profile-img"
								class="profile-circle">
						</div>
					</div>
				</div>
			</div>

			<div class="mypage-box">
				<div class="mypage-box-wrap">
					<div class="mypage-main">
						<div class="mypage-main-wrap">

							<div class="mypage-main-section">
								<div class="mypage-item order">
									<div class="item-wrap">
										<div class="item-tit">
											주문 내역 &nbsp; <i class="fa-solid fa-angle-right"></i>
										</div>
<%
										Connection conn2 = null;
										PreparedStatement pstmt2 = null;
										ResultSet rs2 = null;
										String sql2 = "select c.taste as taste, c.color as color, b.img as img, b.name as name, b.cake as cake from cake c, cakeinfor b, login d where d.id = c.id AND c.id = ? AND b.id = c.cake";
										boolean result2 = false;
									
										conn2 = JdbcUtil.getConnection(); // JDBC 드라이버 메모리 로딩, DB 연결
										try {
											pstmt2 = conn2.prepareStatement(sql2);
											pstmt2.setString(1, id);
											rs2 = pstmt2.executeQuery();
%>
										<ul class="item-list">
										<%
								while (rs2.next()) {
							%>
											<li class="item-list-item"><img src="./image/<%= rs2.getString("img")%>" alt="케이크 사진" class="list-img">
												<div class="item-list-txt">
													<span class="list-point"><%= rs2.getString("cake")%> / <%= rs2.getString("taste")%> / <%= rs2.getString("color")%></span><br> <span
														class="list-txt"><%= rs2.getString("name")%></span>
												</div>
											</li>
												<%
										}
										} catch (SQLException e) {
										e.printStackTrace();
										} finally {
										JdbcUtil.close(conn2, pstmt2, rs2);
										}
%>
										</ul>
										
									</div>
								</div>
								<div class="mypage-item order-now">
									<div class="item-wrap">
										<div class="item-tit">
											주문 상황 &nbsp; <i class="fa-solid fa-angle-right"></i>
										</div>
										<div class="item-txt">
											<div class="item-point">상품이 배송중입니다.</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="./view/footer.jsp"%>

</body>

</html>