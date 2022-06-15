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
<title>Document</title>
<link rel="stylesheet" href="./css/order.css">
</head>

<bodystyle="-webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none">
	<%@ include file="./view/header.jsp"%>
	<%
	String orderId = request.getParameter("orderId");
	String amount = request.getParameter("amount");

	%>

	<div id="main">
		<div id="orderOk">
			<div class="orderOk-wrap">
				<div class="orderOk-tit">
					<h2 class="tit">주문이 완료되었습니다.</h2>
				</div>
				<div class="success-animation">
					<svg class="checkmark" xmlns="http://www.w3.org/2000/svg"
						viewBox="0 0 52 52">
                        <circle class="checkmark__circle" cx="26"
							cy="26" r="25" fill="none" />
                        <path class="checkmark__check" fill="none"
							d="M14.1 27.2l7.1 7.2 16.7-16.8" />
                    </svg>
				</div>
				<table class="orderOk-table">
					<tr class="orderId">
						<th class="orderId-fr one2">주문번호</th>
						<td class="orderId-ba two2"><%= orderId %></td>
					</tr>
					<tr class="amount">
						<th class="amount-fr one2">가격</th>
						<td class="amount-ba two2"><%= amount %>원</td>
					</tr>

				</table>
			</div>
		</div>
	</div>
	<%@ include file="./view/footer.jsp"%>



</body>

</html>