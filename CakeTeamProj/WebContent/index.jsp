<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Magic Cake</title>
<link rel="stylesheet" href="./css/style.css">
<script src="./js/main.js"></script>
</head>
<!--
    클래스&아이디명 모두 언더바(_) 말고 하이픈(-) 사용
    영역이 있으면 영역명-wrap 로 기본 윈도우 지정
    풀스크린으로 제작 (제발이거기억;;;;;;; 영역에 빈 공간이 있는 건 풀ㅅ크린 x)
-->

<body
	style="-webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none">
	<%@ include file="./view/header.jsp"%>

	<div id="main">
		<!--비주얼 영역 시작-->
		<section id="visual">
			<p class="visual-tit">
				KISS<br>MY<br>CAKE&nbsp;
			</p>
			<div class="visual-wrap">
				<ul class="visual-window">
					<li class="slide-item"><img class="slide-img"
						src="image/cake1.png" alt="케이크사진 1"></li>
					<li class="slide-item"><img class="slide-img"
						src="image/cake2.png" alt="케이크사진 2"></li>
					<li class="slide-item"><img class="slide-img"
						src="image/cake3.png" alt="케이크사진 3"></li>
				</ul>
			</div>
			<div class="circle"></div>
			<ul class="ico-list">
				<i class="fa-solid fa-brush"></i>
				<i class="fa-solid fa-computer"></i>
				<a href="https://github.com/parkhayoung615/JSPTeamProj"><i
					class="fa-brands fa-github-alt"></i></a>
			</ul>
			<div class="balloon">PROJECT &copy;2022</div>
			<!-- <div class="visual-text">Hey! have a good day! :)</div> -->
			<div class="visual-button">
				<a href="./allProd.jsp" class="All">전체 상품 보기</a>
			</div>
			<div class="visual-button two">
				<a href="./aboutUs.jsp" class="About">About Us</a>
			</div>
			<div class="circle1"></div>
		</section>
		<!--비주얼 영역 끝-->


	<script type="text/javascript">
	</script>
		<!-- 배너 영역 시작 -->
        <div id="small-banner">
            <div class="small-banner-wrap">
                <div id="termynal" data-termynal>
                    <span data-ty="input">JSP Team Project &nbsp; Kim Gain &nbsp; Park Hayeong &nbsp; Yoon Ina &nbsp;
                        2022 May 25 - June 15</span>

                    <script src="./js/cake.js" data-termynal-container="#termynal"></script>
                </div>
            </div>
        </div>
        <!-- 배너 영역 끝 -->

        <!-- 제품 카테고리 1 시작 -->
        <section id="BigProduct-1">
            <div class="bigProd1-wrap">
                <div class="bigProd1-item">
                    <img class="circle-img" src="./image/jellyCake.jpg" alt="케이크 사진">
                    <div class="circle2"></div>
                </div>
                <div class="bigProd1-item">
                    <div class="bigProd1-txt-box">
                        <div class="bigProd1-txt notPoint">NOMAL IS BORING</div>
                        <div class="bigProd1-txt nomal">NOMAL IS BORING.</div>
                        <div class="bigProd1-txt notPoint2">NOMAL IS BORING</div>
                    </div>
                </div>
                <div class="bigProd1-item">
                    <img src="./image/CoffeeCake.png" alt="케이크 사진" class="square-img">
                    <div class="square"></div>
                </div>
            </div>
        </section>
        <!-- 제품 카테고리 1 끝 -->

        <section id="banner2">
            <div class="banner2-wrap">
                <ul class="grid">
                    <li>
                        <div class="c">
                            <span class="c-front-1 front"></span>
                            <span class="c-front-2 front"></span>
                            <span class="c-left-1 left"></span>
                            <span class="c-left-2 left"></span>
                            <span class="c-left-3 left"></span>
                            <span class="c-right-1 right"></span>
                            <span class="c-right-2 right"></span>
                            <span class="c-right-3 right"></span>
                            <span class="c-top-1 top"></span>
                            <span class="c-top-2 top"></span>
                            <span class="c-top-3 top"></span>
                            <span class="c-bottom-1 bottom"></span>
                            <span class="c-bottom-2 bottom"></span>
                            <span class="c-bottom-3 bottom"></span>
                            <span class="c-back-1 back"></span>
                            <span class="c-back-2 back"></span>
                        </div>
                    </li>
                    <li>
                        <div class="a"> 
                        <span class="a-front-1 front"></span>
                        <span class="a-front-2 front"></span>
                        <span class="a-left-1 left"></span>
                        <span class="a-left-2 left"></span>
                        <span class="a-left-3 left"></span>
                        <span class="a-left-4 left"></span>
                        <span class="a-right-1 right"></span>
                        <span class="a-right-2 right"></span>
                        <span class="a-right-3 right"></span>
                        <span class="a-right-4 right"></span>
                        <span class="a-top-1 top"></span>
                        <span class="a-top-2 top"></span>
                        <span class="a-top-3 top"></span>
                        <span class="a-top-4 top"></span>
                        <span class="a-bottom-1 bottom"></span>
                        <span class="a-bottom-2 bottom"></span>
                        <span class="a-bottom-3 bottom"></span>
                        <span class="a-bottom-4 bottom"></span>
                        <span class="a-back-1 back"></span>
                        <span class="a-back-2 back"></span>
                    </div>
                </li>
                <li>
                  <div class="k">
                    <span class="k-front-1 front"></span>
                    <span class="k-front-2 front"></span>
                    <span class="k-front-3 front"></span>
                    <span class="k-front-4 front"></span>
                    <span class="k-front-5 front"></span>
          
                    <span class="k-left-1 left"></span>
                    <span class="k-left-2 left"></span>
                    <span class="k-left-3 left"></span>
                    <span class="k-left-4 left"></span>
                    <span class="k-left-5 left"></span>
                    <span class="k-left-6 left"></span>
                    <span class="k-left-7 left"></span>
                    <span class="k-left-8 left"></span>
          
                    <span class="k-right-1 right"></span>
                    <span class="k-right-2 right"></span>
                    <span class="k-right-3 right"></span>
                    <span class="k-right-4 right"></span>
                    <span class="k-right-5 right"></span>
                    <span class="k-right-6 right"></span>
                    <span class="k-right-7 right"></span>
                    <span class="k-right-8 right"></span>
          
                    <span class="k-top-1 top"></span>
                    <span class="k-top-2 top"></span>
                    <span class="k-top-3 top"></span>
                    <span class="k-top-4 top"></span>
                    <span class="k-top-5 top"></span>
                    <span class="k-top-6 top"></span>
                    <span class="k-top-7 top"></span>
          
                    <span class="k-bottom-1 bottom"></span>
                    <span class="k-bottom-2 bottom"></span>
                    <span class="k-bottom-3 bottom"></span>
                    <span class="k-bottom-4 bottom"></span>
                    <span class="k-bottom-5 bottom"></span>
                    <span class="k-bottom-6 bottom"></span>
                    <span class="k-bottom-7 bottom"></span>
          
                    <span class="k-back-1 back"></span>
                    <span class="k-back-2 back"></span>
                    <span class="k-back-3 back"></span>
                    <span class="k-back-4 back"></span>
                    <span class="k-back-5 back"></span>
                  </div>
                </li>
                    <li>
                      <div class="e">
                        <span class="e-front-1 front"></span>
                        <span class="e-front-2 front"></span>
                        <span class="e-left-1 left"></span>
                        <span class="e-right-1 right"></span>
                        <span class="e-right-2 right"></span>
                        <span class="e-right-3 right"></span>
                        <span class="e-right-4 right"></span>
                        <span class="e-right-5 right"></span>
                        <span class="e-top-1 top"></span>
                        <span class="e-top-2 top"></span>
                        <span class="e-top-3 top"></span>
                        <span class="e-bottom-1 bottom"></span>
                        <span class="e-bottom-2 bottom"></span>
                        <span class="e-bottom-3 bottom"></span>
                        <span class="e-back-1 back"></span>
                        <span class="e-back-2 back"></span>
                      </div>
                    </li>
              
                </ul>
            </div>
        </section>

        <!-- 제품 카테고리 2 시작 -->
        <section id="BigProduct-2">
            <div class="bigProd2-wrap">

            </div>
        </section>

        
        <section id="SmallProduct">
            <div class="smallProduct-wrap">
                <ul class="smallProd-window">
                    <li class="small-item">
                        <img src="./image/cake8.jpg" alt="케이크 사진">
                        <div class="item-wrap">
                            <h3>Custom Cake</h3>
                            <p>최강 기아타이거즈 팬이자 제출일이 생일인 박하영이 속해있는 1조</p>
                            <a href="./customCake.jsp" class="read">Read More</a>
                        </div>
                    </li>
                    <li class="small-item">
                        <img src="./image/hand.jpg" alt="케이크 사진">
                        <div class="item-wrap">
                            <h3>About Us</h3>
                            <p>[단독] 1조가 짱이라고 밝혀져... 네티즌들 충격</p>
                            <a href="./aboutUs.jsp" class="read">Read More</a>
                        </div>
                    </li>
                    <li class="small-item">
                        <img src="./image/cake7.png" alt="케이크 사진">
                        <div class="item-wrap">
                            <h3>Primium Cake</h3>
                            <p>This is my life...</p>
                            <a href="./cake.jsp" class="read">Read More</a>
                        </div>
                    </li>
                </ul>
            </div>
        </section>

        <section id="BigProduct-3">
            <div class="bigProd3-wrap">
                <img src="./image/IMG_5553.png" alt="케이크 사진" class="bigProd3-img">
                <div class="bigProd3-txt-box">
                    <div class="bigProd3-txt point">ERROR!</div>
                    <div class="bigProd3-txt not">ERROR!</div>
                    <div class="bigProd3-txt point">ERROR!</div>
                    <div class="bigProd3-txt not">ERROR!</div>
                </div>
                <div class="bigProd3-txt-box">
                    <div class="bigProd3-txt point">ERROR!</div>
                    <div class="bigProd3-txt not">ERROR!</div>
                    <div class="bigProd3-txt point">ERROR!</div>
                    <div class="bigProd3-txt not">ERROR!</div>
                </div>
                <div class="bigProd3-txt-box">
                    <div class="bigProd3-txt point">ERROR!</div>
                    <div class="bigProd3-txt not">ERROR!</div>
                    <div class="bigProd3-txt point">ERROR!</div>
                    <div class="bigProd3-txt not">ERROR!</div>
                </div>
                <div class="bigProd3-txt-box">
                    <div class="bigProd3-txt point">ERROR!</div>
                    <div class="bigProd3-txt not">ERROR!</div>
                    <div class="bigProd3-txt point">ERROR!</div>
                    <div class="bigProd3-txt not">ERROR!</div>
                </div>
                <div class="bigProd3-txt-box">
                    <div class="bigProd3-txt point">ERROR!</div>
                    <div class="bigProd3-txt not">ERROR!</div>
                    <div class="bigProd3-txt point">ERROR!</div>
                    <div class="bigProd3-txt not">ERROR!</div>
                </div>
                <div class="bigProd3-txt-box">
                    <div class="bigProd3-txt point">ERROR!</div>
                    <div class="bigProd3-txt not">ERROR!</div>
                    <div class="bigProd3-txt point">ERROR!</div>
                    <div class="bigProd3-txt not">ERROR!</div>
                </div>
                <div class="bigProd3-txt-box">
                    <div class="bigProd3-txt point">ERROR!</div>
                    <div class="bigProd3-txt not">ERROR!</div>
                    <div class="bigProd3-txt point">ERROR!</div>
                    <div class="bigProd3-txt not">ERROR!</div>
                </div>
                <div class="bigProd3-txt-box">
                    <div class="bigProd3-txt point">ERROR!</div>
                    <div class="bigProd3-txt not">ERROR!</div>
                    <div class="bigProd3-txt point">ERROR!</div>
                    <div class="bigProd3-txt not">ERROR!</div>
                </div>
            </div>
        </section>
    </div>
    
	<%@ include file="./view/footer.jsp"%>


    <script type="text/javascript">
    $(document).ready(function () {
        $(".fa-brush").on('click', function (event) {
            $("#popup-design").show();   //팝업 오픈
            $("body").append('<div class="backon"></div>'); //뒷배경 생성
            $("body").addClass("modal-open");
        });

        $(".fa-computer").on('click', function (event) {
            $("#popup-devel").show();   //팝업 오픈
            $("body").append('<div class="backon"></div>'); //뒷배경 생성
            $("body").addClass("modal-open");
        });

        $("body").on("click", function (event) {
            if (event.target.className == 'backon') {
                $("#popup-devel").hide(); // close버튼이거나 뒷배경 클릭시 팝업 삭제
                $(".backon").hide();
                $("body").removeClass("modal-open")
            }
        });
        $("body").on("click", function (event) {
            if (event.target.className == 'backon') {
                $("#popup-design").hide(); // close버튼이거나 뒷배경 클릭시 팝업 삭제
                $(".backon").hide();
                $("body").removeClass("modal-open")
            }
        });
    });

    </script>
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
                            <div class="pop-item">
                                <img src="./image/in.png" alt="디자인 개발진" class="pop-img">
                                <h2 class="balloon2">윤이나</h2>
                            </div>
                            <div class="pop-item">
                                <img src="./image/ha2.png" alt="개자이너" class="pop-img">
                                <h2 class="balloon2">박하영</h2>
                            </div>
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
                            <div class="pop-item">
                                <img src="./image/ga.png" alt="기능 개발진" class="pop-img">
                                <h2 class="balloon2">김가인</h2>
                            </div>
                            <div class="pop-item">
                                <img src="./image/ha1.png" alt="개자이너" class="pop-img">
                                <h2 class="balloon2">박하영</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 팝업 영역 끝 -->
</body>

</html>