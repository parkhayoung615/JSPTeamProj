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
			<div id="sidebar-menu">
				<div class="mypage-tit">
					<h2 class="tit">Mypage</h2>
				</div>
				<ul class="sidebar-list">
					<li class="list-item"><a href="#"><i
							class="fa-solid fa-user"></i> 개인 정보 수정</a></li>
					<li class="list-item"><a href="#"><i
							class="fa-solid fa-box"></i> 배송지 관리</a></li>
					<li class="list-item"><a href="#"><i
							class="fa-solid fa-list"></i> 주문내역</a></li>
					<li class="list-item"><a href="#"><i
							class="fa-solid fa-circle-check"></i> 현 주문 상황</a></li>
				</ul>
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
										
										<ul class="item-list">
											<li class="item-list-item"><img src="./image/cake6.png"
												alt="케이크 사진" class="list-img">
												<div class="item-list-txt">
													<span class="list-point">Cake</span><br> <span
														class="list-txt">tlqkf
													</span>
												</div></li>
											<li class="item-list-item"><img src="./image/cake10.png"
												alt="케이크 사진" class="list-img">
												<div class="item-list-txt">
													<span class="list-point">Custom Cake</span><br> <span
														class="list-txt">My Life is Cake...</span>
												</div></li>
											<li class="item-list-item"><img src="./image/cake7.png"
												alt="케이크 사진" class="list-img">
												<div class="item-list-txt">
													<span class="list-point">Cake</span><br> <span
														class="list-txt">Yummy Cake</span>
												</div></li>
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