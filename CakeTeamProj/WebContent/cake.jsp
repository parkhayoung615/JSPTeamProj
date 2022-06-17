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
<link rel="stylesheet" href="./css/product.css">
<title>Cake</title>
</head>

<body
	style="-webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none">
	<%@ include file="./view/header.jsp"%>
	<%
    Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "select * from cakeinfor where cake = 'Cake'";
	boolean result = false;

	conn = JdbcUtil.getConnection(); // JDBC 드라이버 메모리 로딩, DB 연결
	try {
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>

	<div id="category">
		<div id="main">
			<div id="visual">
				<div class="visual-wrap">
					<div class="visual-wrap">
						<ul class="visual-window">
							<li class="slide-item"><img class="slide-img"
								src="image/cake.png" alt="케이크사진 1"></li>
							<li class="slide-item"><img class="slide-img"
								src="image/cake9.png" alt="케이크사진 2"></li>
							<li class="slide-item"><img class="slide-img"
								src="image/cake15.jpg" alt="케이크사진 3"></li>
						</ul>
					</div>
				</div>
			</div>
			<div id="category-sidebar">
				<div class="category-sidebar-wrap">
					<ul class="category-sidebar-list">
						<div class="category-sidebar-list-item">
							<a href="./cake.jsp">Cake</a>
						</div>
						<div class="category-sidebar-list-item">
							<a href="./customCake.jsp">Custom Cake</a>
						</div>
					</ul>
				</div>
			</div>
			<div id="product" style="padding-bottom: 50px;">
				<div class="product-wrap">
					<div class="all-product-tit">
						<h2 class="tit">Cake</h2>
					</div>
					<div class="all-product">
						<div class="all-product-wrap"
							style="display: grid; grid-template-rows: repeat(2, 1fr); grid-template-columns: repeat(4, 1fr);">

							<%						while (rs.next()) { %>
							<a class="linke" href="./detailPage.jsp?id=<%= rs.getInt("id")%>">
								<div class="all-product-item">
									<div class="item-wrap">
										<img src="./image/<%= rs.getString("img")%>" alt="판매 케이크 사진"
											class="item-img">
										<div class="item-txt">
											<h2 class="product-name"><%= rs.getString("name")%></h2>
											<div class="product-tag"><%= rs.getString("cake")%></div>
											<div class="product-cell"><%= rs.getInt("cell")%>
												WON
											</div>
										</div>
									</div>
								</div>
							</a>
							<%
							}
						} catch (SQLException e) {
							e.printStackTrace();
						} finally {
							JdbcUtil.close(conn, pstmt, rs);
						}
%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

		<%@ include file="./view/footer.jsp"%>
</body>

</html>