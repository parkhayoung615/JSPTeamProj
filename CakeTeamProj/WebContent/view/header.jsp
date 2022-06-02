<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
String id = (String) session.getAttribute("logOK");
System.out.println(id);
System.out.println(session.getAttribute("ID"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/headerCss.css">
</head>
<body>
	<header>

		<div id="header">
			<div class="header-wrap">
				<a href="./index.jsp"><img class="header-logo"
					src="./image/무제-1.png" alt="헤더 로고"></a>
				<ul class="header-list">
					<li class="list-item"><a href="./cake.html">Cake</a></li>
					<li class="list-item"><a href="./customCake.html">Custom
							Cake</a></li>
					<li class="list-item"><a href="./sameday.html">Same-day
							Pickup</a></li>
					<li class="list-item"><a href="./party.html">Party</a></li>
					<li class="list-item"><a href="./aboutUs.html">About Us</a></li>
				</ul>

				<%
				// session 속성 (logOK)이 설정되어 있으면 "id 님", 그렇지 않으면 로그인

				if (id != null) {
				%>
				<%=session.getAttribute("ID")%>님 <i class="fa-solid fa-location-dot"></i><i
					class="fa-solid fa-heart"></i><i class="fa-solid fa-cart-shopping"></i>
				<a href="./logout.jsp">로그아웃</a>
				<%
				} else {
				%>
				<ul class="login-list">
					<li class="signup"><a href="./signup.jsp">Sign up</a></li>
					<li class="signin"><a href="./signin.jsp"><i
							class="fa-solid fa-right-to-bracket"></i> Sign in</a></li>
					<li><i class="fa-solid fa-magnifying-glass"></i></li>
				</ul>
				<%
				}
				%>

			</div>
		</div>
	</header>
</body>
</html>