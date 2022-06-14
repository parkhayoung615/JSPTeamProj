<%@page import="work.Order"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

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
<%
	String taste, color, text, want;
	Order order = new Order();
	int n = 0;

	//cake = request.getParameter("cake");
	taste = request.getParameter("taste");
	color = request.getParameter("color");
	text = request.getParameter("text");
	want = request.getParameter("want");
/*
	if (taste.isEmpty() && color.isEmpty()) {
		out.println("<script>alert('필수선택 종목을 확인해주세요');</script>");
		out.print("<script> history.back() </script>");

	} else
		*/
		n = order.insertOrder(taste, color, text, want);

	//if (n > 0)
	//	response.sendRedirect("index.jsp");
	%>
	 <%@ include file="./view/header.jsp"%>

	<div id="main">
		<div id="order">
			<form action="orderOk.jsp" method="post">

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
                            <div class="user-infor">
                                <table class="user-table">
                                    <tr>
                                        <th class="user-fr">보내는 분</th>
                                        <td class="user">name</td>
                                    </tr>
                                    <tr>
                                        <th class="phone-fr">휴대폰</th>
                                        <td class="phone">phone</td>
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
                                        <td class="post">경기도 성남시 분당구 불정로386번길 35</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>

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
                    <input type="submit" value="돌아가기">
                </div>
				
			</form>
 <section>
      <!-- ... -->
      <span>총 주문금액</span>
      <span>15,000 원</span>
      <button id="payment-button">15,000원 결제하기</button>
    </section>
    <script>
      var clientKey = 'test_ck_0Poxy1XQL8RKJLkGl7437nO5Wmlg'
      var tossPayments = TossPayments(clientKey)
      var button = document.getElementById('payment-button') // 결제하기 버튼
      button.addEventListener('click', function () {
        tossPayments.requestPayment('카드', {
          amount: 15000,
          orderId: 'Si6Iw4eaPJ9X6shxjgkfU',
          orderName: '토스 티셔츠 외 2건',
          customerName: '박토스',
          successUrl: 'http://localhost:8090/index.jsp',
          failUrl: 'http://localhost:8090/fail',
        })
      })
    </script>

		</div>
	</div>
</body>
</html>