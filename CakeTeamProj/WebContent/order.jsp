<%@page import="java.sql.SQLException"%>
<%@page import="util.JdbcUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="work.Order"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./css/order.css">
<link rel="stylesheet"
	href="./css/fontawesome-free-6.1.1-web/css/all.min.css">
<link rel="stylesheet" href="./css/headerCss.css">
<script src="https://js.tosspayments.com/v1"></script>

<title>Document</title>
</head>

<body style="-webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none">
<%@ include file="./view/header.jsp"%>
<%
	if(id == null) {
		out.println("<script>alert('로그인을 진행 해주세요!');</script>");
		out.print("<script> history.back() </script>");
	}
	String taste, color, text, want, id2;
	Order order = new Order();
	int n = 0;

	//cake = request.getParameter("cake");
	taste = request.getParameter("taste");
	color = request.getParameter("color");
	text = request.getParameter("text");
	want = request.getParameter("want");
	id2 = request.getParameter("id");
/*
	if (taste.isEmpty() && color.isEmpty()) {
		out.println("<script>alert('필수선택 종목을 확인해주세요');</script>");
		out.print("<script> history.back() </script>");

	} else
		*/
		n = order.insertOrder(taste, color, text, want);

	//if (n > 0)
	//	response.sendRedirect("index.jsp");
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT phone, addr, m_addr, d_addr, name FROM login WHERE id=?";
		boolean result = false;

		conn = JdbcUtil.getConnection(); // JDBC 드라이버 메모리 로딩, DB 연결
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
	
	%>

	<div id="main">
		<div id="order">
				<div class="order-wrap">
                    <div class="order-main-tit">
                        <div class="tit">주문서</div>
                    </div>
                    <div class="order-content">
                        <div class="content-wrap">
                            <div class="content-tit">
                                <div class="tit">주문상품</div>
                            </div>
                            <hr>
                            <ul class="content-list">
                                <li class="content-item">
                                    <div class="img">
                                        <img src="./image/cake6.png" alt="주문상품" class="content-img">
                                    </div>
                                    <div class="name">
                                        <div class="content-inf">Music is My Life... <span class="text">(문구 : <%= request.getParameter("text") %>)</span></div>
                                       <div class="content-inf-sub"><%= request.getParameter("taste") %> / <%= request.getParameter("color") %> / <%= request.getParameter("want") %></div>
                                    </div>
                                    <div class="ea">
                                        <span class="gae">1개</span>
                                    </div>
                                    <div class="info-price">
                                        17,000 WON
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

					<div class="order-user">
					 <div class="order-user">
                        <div class="user-wrap">
                            <div class="user-tit">
                                <div class="tit">주문자 정보</div>
                            </div>
                            <hr>
                            <%
								while (rs.next()) {
							%>
                            <div class="user-infor">
                                <table class="user-table">
                                    <tr>
                                        <th class="user-fr">보내는 분</th>
                                        <td class="user"><%=id%></td>
                                    </tr>
                                    <tr>
                                        <th class="phone-fr">휴대폰</th>
                                        <td class="phone"><%= rs.getString("phone")%></td>
                                    </tr>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    
					<div class="order-post">
                        <div class="post-wrap">
                            <div class="post-tit">
                                <div class="tit">배송 정보</div>
                            </div>
                            <hr>
                            <div class="post-infor">
                                <table class="post-table">
                                    <tr>
                                        <th class="post-fr">배송지</th>
                                        <td class="post"><%= rs.getString("addr")%> <%= rs.getString("m_addr")%> <%= rs.getString("d_addr")%></td>
                                    </tr>
                                </table>
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

                    <div class="order-pay">
                        <div class="pay-wrap">
                            <div class="pay-tit">
                                <div class="tit">결제금액</div>
                            </div>
                            <hr>
                            <div class="pay-infor">
                                <div class="goods">
                                    <div class="goods-fr one">17,000원</div>
                                    <div class="goods-ba two">상품금액</div>
                                </div>
                                <div class="plus">+</div>
                                <div class="postsell">
                                    <div class="postsell-fr one">3,000원</div>
                                    <div class="postsell-ba two">배송비</div>
                                </div>
                                <div class="end">=</div>
                                <div class="all-sell">
                                    <div class="all-sell-fr one">20,000원</div>
                                    <div class="all-sell-ba two">최종 결제금액</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                

			<div class="payment">
				<button id="payment-button">20,000원 결제하기</button>
			</div>
			<script>
		    // 테스트 키
		      var clientKey = 'test_ck_0Poxy1XQL8RKJLkGl7437nO5Wmlg'
		      // 토스 페이먼츠 연결키
		      var tossPayments = TossPayments(clientKey)
		      var button = document.getElementById('payment-button') // 결제하기 버튼
		   	// 클릭했을 때 발생하는 이벤트
		      button.addEventListener('click', function () {
		    	 // 사용자 정보
		        tossPayments.requestPayment('카드', {
		        	// 가격
		          amount: 20000,
		          // 주문자 아이디
		          orderId: 'Si6Iw4eaPJ9X6shxjgkfU',
		          // 주문 내역
		          orderName: 'Music is My Life...',
		          // 이름
		          customerName: '박토스',
		          // 성공하면 어디로 갈지(경로 설정)
		          successUrl: 'http://localhost:8090/index.jsp',
		          // 실패하면 어디로 갈지(경로 설정)
		          failUrl: 'http://localhost:8090/fail',
		        })
		      })
		    </script>
		</div>
	</div>
	</div>
	<%@ include file="./view/footer.jsp"%>
</body>
</html>