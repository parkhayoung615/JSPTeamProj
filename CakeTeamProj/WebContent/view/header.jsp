<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/headerCss.css">
<!-- 제이쿼리 라이브러리 (js를 조금 더 간단하게 사용할 수 있도록 해주는 라이브러리) -->
<script src="./js/jquery-3.6.0.min.js"></script>
<!-- 아이콘 라이브러리 -->
<link rel="stylesheet" href="./css/fontawesome-free-6.1.1-web/css/all.min.css">
</head>
<body>
	<header>

		<div id="header">
			<div class="header-wrap">
				<a href="./index.jsp"><img class="header-logo"
					src="./image/무제-1.png" alt="헤더 로고"></a>
				<ul class="header-list">
					<li class="list-item"><a href="./cake.jsp">Cake</a></li>
					<li class="list-item"><a href="./customCake.jsp">Custom
							Cake</a></li>
					<li class="list-item"><a href="./sameday.jsp">Same-day
							Pickup</a></li>
					<li class="list-item"><a href="./aboutUs.jsp">About Us</a></li>
				</ul>

				<%
				// session 속성 (logOK)이 설정되어 있으면 "id 님", 그렇지 않으면 로그인
				String id = (String)session.getAttribute("loginOK");
				if(id != null) {
				%>
				<ul class="login-list">
					<li calss="name"><%=id%>님</li>
					<li class="user"><a href="./myPage.jsp">My Page</a></li>
					<li class="signup"><a class="logout" href="/logout">Logout</a></li>
				</ul>
				<%
				} else {
				%>
				<ul class="login-list">
					<li class="signup"><a href="./signup.jsp">Sign up</a></li>
					<li class="signin"><a href="./signin.jsp"><i
							class="fa-solid fa-right-to-bracket"></i> Sign in</a></li>
				</ul>
				<%
				}
				%>

			</div>
		</div>
	</header>
</body>
</html>