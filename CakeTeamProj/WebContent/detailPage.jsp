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
    <link rel="stylesheet" href="./css/detail_page.css">
    <title>Document</title>
</head>

<body style="-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
    <%@ include file="./view/header.jsp"%>
	<%
	id = request.getParameter("id");
	
	 Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from cakeinfor where id = ?";
		boolean result = false;

		conn = JdbcUtil.getConnection(); // JDBC 드라이버 메모리 로딩, DB 연결
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
	%>

   <div id="main">
        <div id="cake-Product">
        <form action="order.jsp" method="POST">
            <div class="cake-Product-wrap">
                <div class="cake-image">
<%						while (rs.next()) {
	%>
                    <div class="main-img">
                        <div class="circle"></div>
                        <img class="cake-img" src="./image/<%= rs.getString("img")%>">
                    </div>
                </div>
                
                <div class="text-box">
                    <div class="product-tit">
                        <p class="main-tit"><%= rs.getString("name")%></p>
                            <p class="sub-tit">
                                <%= rs.getString("cell")%> WON
                                </p>
                    </div>
                    <div class="product-option">
                            <div class="option-box">
                                <div class="option taste">
                                    <div class="option-text">
                                        <p class="tit">맛 선택</p>
                                    </div>
                                    <div class="option-input">
                                        <label class="item" for="choco"><img src="./image/choco.jpg" alt="초코맛" style="border-radius: 100%;"></label>
                                        <input class="item" type="radio" name="taste" alt="초코 맛" value="choco" id="choco" checked="checked">
                                        <label class="item" for="tiramisu"><img src="./image/tramisu.jpg" alt="티라미수맛" style="border-radius: 100%;"></label>
                                        <input class="item" type="radio" name="taste" alt="티라미수 맛" value="tramisu" id="tiramisu">
                                    </div>
                                </div>

                                <div class="option color">
                                    <div class="option-text">
                                        <p class="tit">케이크 색상</p>
                                    </div>
                                    <div class="option-input">
                                        <label class="item" for="whtie"><img src="./image/color1.jpg" alt="흰색" style="border-radius: 100%;"></label>
                                        <input class="item" name="color" type="radio" alt="케이크 색상" value="white" id="white" checked="checked">
                                        <label class="item" for="pink"><img src="./image/color2.png" alt="분홍색" style="border-radius: 100%;"></label>
                                        <input class="item" name="color" type="radio" alt="케이크 색상" value="pink" id="pink">
                                        <label class="item" for="yellow"><img src="./image/color3.png" alt="노란색" style="border-radius: 100%;"></label>
                                        <input class="item" name="color" type="radio" alt="케이크 색상" value="yellow" id="yellow">
                                        <label class="item" for="mint"><img src="./image/color4.png" alt="민트색" style="border-radius: 100%;"></label>
                                        <input class="item" name="color" type="radio" alt="케이크 색상" value="mint" id="mint">
                                        <label class="item" for="blue"><img src="./image/color5.png" alt="파란색" style="border-radius: 100%;"></label>
                                        <input class="item" name="color" type="radio" alt="케이크 색상" value="blue" id="blue">
                                    </div>
                                </div>
                                <div class="option">
                                    <div class="option-text">
                                        <p class="tit">케이크 문구</p>
                                    </div>
                                    <div class="option-input">
                                        <input name="text" class="lettering" type="text" name="text" id="lettering" placeholder="한글, 특수문자 10자 / 영어, 숫자, 기호 20자까지 입력 가능합니다.">
                                    </div>
                                </div>
                                <div class="option">
                                    <div class="option-text">
                                        <p class="tit">요청 사항</p>
                                    </div>
                                    <div class="option-input">
                                        <textarea name="want" class="etc" name="etc" id="etc" placeholder="케이크, 판 문구수 추가 요청은 반영되지 않으며, 옵션에서 선택한 것과 다르게 요청 사항 기입시 옵션 선택 기준으로 제작됩니다."></textarea>
                                    </div>
                                </div>
                                <input type="hidden" name="id" value="<%= id%>">
                                <input type="submit" class="option-ok" value="옵션 선택 완료">
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
            </div>
            <div id="detail">
                <div class="detail-wrap">
                    <div class="detail-txt">
                        <div class="detail-tit">Product Detail</div>
                    </div>
                    <p class="detail-text">
                        상품정보 주문 전 주의사항 <br>
            생크림 정보 원산지 알레르기 표시 <br>
            주문제작이니 배송시간 걸림 주문 들어간 후에는 환불 및 수정 불가능 신중히 선택
            크림은 잘 녹으니 냉장 보관 필수
                    </p>
                </div>
            </div>
            </form>
        </div>
    </div>

     <%@ include file="./view/footer.jsp"%>

</body>

</html>