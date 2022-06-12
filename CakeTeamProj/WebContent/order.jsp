<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/detail_page.css">
    <link rel="stylesheet" href="./css/fontawesome-free-6.1.1-web/css/all.min.css">
    <link rel="stylesheet" href="./css/headerCss.css">
    <title>Document</title>
</head>

<body style="-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
    <header>
        <div id="header">
            <div class="header-wrap">
                <a href="./index.html"><img class="header-logo" src="./image/무제-1.png" alt="헤더 로고"></a>
                <ul class="header-list">
                    <li class="list-item"><a href="./cake.html">Cake</a></li>
                    <li class="list-item"><a href="./customCake.html">Custom Cake</a></li>
                    <li class="list-item"><a href="./sameday.html">Same-day Pickup</a></li>
                    <li class="list-item"><a href="./aboutUs.html">About Us</a></li>
                </ul>
                <ul class="login-list">
                    <li class="signup"><a href="./Signup.html">Sign up</a></li>
                    <li class="signin"><a href="./Signin.html"><i class="fa-solid fa-right-to-bracket"></i> Sign in</a>
                    </li>
                    <li><i class="fa-solid fa-magnifying-glass"></i></li>
                </ul>
            </div>
        </div>
    </header>

    <div id="main">
        <div id="order">
            <form action="" method="post">

                <div class="order-wrap">
                    <div class="order-main-tit">
                        <div class="tit">주문서</div>
                    </div>
                    <div class="order-content">
                        <div class="content-wrap">
                            <div class="content-tit">
                                <div class="tit">주문상품</div>
                            </div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <img src="./image/cake6.png" alt="주문상품" class="content-img">
                                    <div class="content-inf">Music is My Life...</div>
                                </li>
                            </ul>
                        </div>
                    </div>
    
                    <div class="order-user">
                        <div class="user-wrap">
                            <div class="user-tit">
                                <div class="tit">주문자 정보</div>
                            </div>
                            <div class="user-infor">
                                <div class="user">보내는 분 : 박하영</div>
                                <div class="phone">휴대폰 : 01031236181</div>
                                <div class="email">이메일 : parkhayoung615@gmail.com</div>
                            </div>
                        </div>
                    </div>
    
                    <div class="order-post">
                        <div class="post-wrap">
                            <div class="post-tit">
                                <div class="tit">배송 정보</div>
                            </div>
                            <div class="post-infor">
                                <div class="post-main">
                                    <div class="sub">배송지 : 블라블라씨발나도놀고싶다</div>
                                </div>
                                <div class="post-sub">
                                    <div class="sub">상세정보 : 블라블라여기에는상세주소이런거넣지않을까아웅나도몰라ㅗㅗ</div>
                                </div>
                            </div>
                        </div>
                    </div>
    
                    <div class="order-sell">
                        <div class="sell-wrap">
                            <div class="sell-tit">
                                <div class="tit">결제 금액</div>
                            </div>
                            <div class="sell-infor">
                                <div class="sell-main">주문 금액 : 1억 썅롬아</div>
                                <div class="sell-post">배송비 : 3,000원 아니그냥죽을게</div>
                            </div>
                        </div>
                    </div>
                
                    <input type="submit" value="돌아가기">
                    
                </div>
            </form>
        </div>
    </div>
</body>
</html>