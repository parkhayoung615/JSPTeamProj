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
<title>All Product</title>
</head>

<body style="-webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none">
	<%@ include file="./view/header.jsp"%>
<%
    Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "select * from cakeinfor";
	boolean result = false;

	conn = JdbcUtil.getConnection(); // JDBC 드라이버 메모리 로딩, DB 연결
	try {
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>


	<div id="main">
        <div id="allProd">
            <div id="sidebar">
                <div class="sidebar-wrap">
                    <ul class="sidebar-list">
                        <div class="sidebar-list-item tit">All Product</div>
                        <div class="sidebar-list-item"><a href="./cake.jsp">Cake</a></div>
                        <div class="sidebar-list-item"><a href="./customCake.jsp">Custom Cake</a></div>
                        <div class="sidebar-list-item"><a href="./sameday.jsp">Same-Day Pickup</a></div>
                    </ul>
                </div>
            </div>
            <div id="product">
                <div class="product-wrap">
                    <div class="all-product-tit">
                        <h2 class="tit">All Product</h2>
                    </div>
                    <div class="all-product">
						<div class="all-product-wrap">
						<div class="all-product-row">
<%						while (rs.next()) { %>
							<a class="linke" href="./detailPage.jsp">
                                <div class="all-product-item">
                                    <div class="item-wrap">
										<img src="./image/<%= rs.getString("img")%>" alt="판매 케이크 사진"
											class="item-img">
										<div class="item-txt">
											<h2 class="product-name"><%= rs.getString("name")%></h2>
											<div class="product-tag"><%= rs.getString("cake")%></div>
											<div class="product-cell"><%= rs.getInt("cell")%> WON</div>
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
	</div>
</body>

</html>