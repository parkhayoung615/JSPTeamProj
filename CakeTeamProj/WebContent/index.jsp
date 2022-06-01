<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Magic Cake </title>
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/headerCss.css">
    <link rel="stylesheet" href="./css/fontawesome-free-6.1.1-web/css/all.min.css">
    <script src="./js/jquery-3.6.0.min.js"></script>
    <script src="./js/main.js"></script>
</head>
<!--
    클래스&아이디명 모두 언더바(_) 말고 하이픈(-) 사용
    영역이 있으면 영역명-wrap 로 기본 윈도우 지정
    풀스크린으로 제작 (제발이거기억;;;;;;; 영역에 빈 공간이 있는 건 풀ㅅ크린 x)
-->

<body style="-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
    <header>
		<div id="header">
			<div class="header-wrap">
				<a href="./index.html"><img class="header-logo"
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
				<ul class="login-list">
					<li class="signup"><a href="./signup.jsp">Sign up</a></li>
					<li class="signin"><a href="./signin.jsp"><i
							class="fa-solid fa-right-to-bracket"></i> Sign in</a></li>
					<li><i class="fa-solid fa-magnifying-glass"></i></li>
				</ul>
			</div>
		</div>
	</header>

    <div id="main">
        <!--비주얼 영역 시작-->
        <section id="visual">
            <p class="visual-tit">KISS<br>MY<br>CAKE&nbsp;</p>
            <div class="visual-wrap">
                <ul class="visual-window">
                    <li class="slide-item"><img class="slide-img" src="image/cake1.png" alt="케이크사진 1"></li>
                    <li class="slide-item"><img class="slide-img" src="image/cake2.png" alt="케이크사진 2"></li>
                    <li class="slide-item"><img class="slide-img" src="image/cake3.png" alt="케이크사진 3"></li>
                </ul>
            </div>
            <div class="circle"></div>
            <ul class="ico-list">
                <i class="fa-solid fa-brush"></i>
                <i class="fa-solid fa-computer"></i>
                <a href="https://github.com/parkhayoung615/JSPTeamProj"><i class="fa-brands fa-github-alt"></i></a>
            </ul>
            <div class="balloon">PROJECT &copy;2022</div>
            <!-- <div class="visual-text">Hey! have a good day! :)</div> -->
            <div class="visual-button">
                <a href="./allPro.html" class="All">전체 상품 보기</a>
            </div>
            <div class="visual-button two">
                <a href="./aboutUs.html" class="About">About Us</a>
            </div>
            <div class="circle1"></div>
        </section>
        <!--비주얼 영역 끝-->

        <section id="BigProduct-1">
            <div class="bigProd1-wrap">

            </div>
        </section>

        <section id="BigProduct-2">
            <div class="bigProd2-wrap">

            </div>
        </section>

        <section id="BigProduct-3">
            <div class="bigProd3-wrap">

            </div>
        </section>

        <section id="SmallProduct">
            <div class="smallProduct-wrap">
                <ul class="smallProd-window">
                    <li class="small-item"></li>
                    <li class="small-item"></li>
                    <li class="small-item"></li>
                </ul>
            </div>
        </section>

    </div>

    <!--푸터 영역 시작-->
    <footer>
        <div id="footer">
            <div class="footer-wrap">
                <div class="copy">
                    <p>Copyright &copy;2022 JST Team Project</p>
                </div>
            </div>
        </div>
    </footer>
    <!--푸터 영역 끝-->



    <!-- 팝업 영역 시작 -->
    <section id="modal1">
        <div class="popup-wrap">
            <div class="open-popup">
                <div id="popup-design">
                    <div class="pop-content">

                        <div class="pop-tit">
                            <h2 class="tit">디자인</h2>
                        </div>

                        <div class="pop-wrap">
                            <h2>윤이나</h2>
                            <h2>조진호</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="modal2">
        <div class="popup-wrap">
            <div class="open-popup">
                <div id="popup-devel">
                    <div class="pop-content">

                        <div class="pop-tit">
                            <h2 class="tit">기능</h2>
                        </div>

                        <div class="pop-wrap">
                            <h2>김가인</h2>
                            <h2><i class="fa-solid fa-crown"></i>&nbsp;박하영</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 팝업 영역 끝 -->
</body>

</html>