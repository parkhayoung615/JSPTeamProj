<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>

    <link rel="stylesheet" href="./css/headerCss.css">
    <link rel="stylesheet" href="./css/about.css">
    <!-- 페이드인 라이브러리-->
    <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css" />
    <!-- 페이드인 라이브러리(js)-->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
</head>

<body style="-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
    <%@ include file="./view/header.jsp"%>

    <div id="main">
        <div id="about">
            <div class="about-wrap">

                <section class="about-section1">
                    <div class="about-section1-wrap">
                        <div class="about-section1-tit">
                            <h1 class="tit main-tit">Hi, We're Magic Cake</h1>
                            <h3 class="sub-tit">Hello, World! Hello, Magic Cake!<br>우리들의 마법을 보여드릴게요!</h3>
                        </div>
                        <div class="about-section1-content">
                            <img src="./image/ha3.png" alt="소개 페이지" class="about-section1-img">
                            <div class="about-section1-circle"></div>
                        </div>
                    </div>
                </section>

                <div data-aos="fade-right">
                    <section class="about-section2">
                        <div class="about-section2-wrap">
                            <div class="about-section2-tit">
                                <h1 class="tit two">끊임없이 행복하기</h1>
                                <h3 class="sub-tit two">Magic Cake는 다양한 상황과 감정을 케이크로 표현할 수 있는 아이디어를 늘 상상하고 고민합니다.<br>
                                    다양한 상황에 전하고 싶은 메시지를 찾아 디자인하고 케이크를 제안하는 것이 우리의 일상입니다.<br>
                                    그 상황의 메시지가 담긴 Magic Cake의 케이크로 언제나 주변이 밝게 빛나기를 바랍니다.</h3>
                            </div>
                            <div class="about-section2-content">
                                <img src="./image/cake11.jpg" alt="소개 페이지" class="about-section2-img">
                                <img src="./image/cake5.jpg" alt="소개 페이지" class="about-section2-img twoimg">
                            </div>
                        </div>
                    </section>
                </div>
                
                <div data-aos="fade-left">
                    <section class="about-section3">
                        <div class="about-section3-wrap">
                            <div class="about-section3-tit">
                                <h1 class="tit three">맛을 해치지 않는 디자인</h1>
                                <h3 class="sub-tit three">좋은것만 주고 싶은 마음을 그대로 담았습니다. 우리는 케이크가 아닌 선물을 만듭니다.<br>
                                    예쁜 디자인으로 끝나는게 아닌 맛있게 먹은 기억까지 선물하고 싶습니다.<br>
                                    항상 맛을 해치지 않는 디자인을 우선으로 합니다.</h3>
                            </div>
                            <div class="about-section3-content">
                                <span class="stroke">BEAUTY<br>WITHOUT<br>COMPROMISING<br>TASTE</span>
                                <img src="./image/cake19.png" alt="소개 페이지" class="about-section3-img">
                            </div>
                        </div>
                    </section>
                </div>


                <section class="about-section4">
                    <div class="about-section4-wrap">
                        <div class="about-section4-tit">
                            <div data-aos="fade-up" data-aos-duration="3000">
                                <h1 class="tit four">케이크 상자를 열고 기뻐하는 표정을 상상하며 케이크를 만듭니다</h1>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="about-section5">
                    <div data-aos="fade-up" data-aos-duration="3000">
                        <div class="about-section5-wrap">
                            <div class="about-section5-tit">
                                <h1 class="tit five">Magic Cake는 언제나 여러분의 연락을 기다립니다</h1>
                            </div>
                            <div class="about-section5-content">
                                <p class="about-text">
                                    문의메일 <span class="ico">|</span> parkhayoung615@gmail.com<br>
                                    대표전화 <span class="ico">|</span> 010-3123-6181
                                </p>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
    
    <%@ include file="./view/footer.jsp"%>
    <script>
        //  페이드인 라이브러리(js) 실행 및 초기화
        AOS.init({
            easing: 'ease-out-back',
            duration: 1000
        });

    </script>
</body>

</html>