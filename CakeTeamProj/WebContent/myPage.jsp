<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="./css/myPage.css" rel="stylesheet" type="text/css" />
    <title>Document</title>
</head>

<body style="-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
   <%@ include file="./view/header.jsp"%>

    <div id="main">
        <div id="sidebar">
            <div id="sidebar-menu">
                <div class="mypage-tit">
                    <h2 class="tit">Mypage</h2>
                </div>
                <ul class="sidebar-list">
                    <li class="list-item"><a href="#"><i class="fa-solid fa-user"></i> 개인 정보 수정</a></li>
                    <li class="list-item"><a href="#"><i class="fa-solid fa-box"></i> 배송지 관리</a></li>
                    <li class="list-item"><a href="#"><i class="fa-solid fa-list"></i> 주문내역</a></li>
                    <li class="list-item"><a href="#"><i class="fa-solid fa-circle-check"></i> 현 주문 상황</a></li>
                </ul>
            </div>
            <div id="profile">
                <div class="profile-wrap">
                    <div class="profile-img-box">
                        <img src="./image/ha2.png" alt="프로필 이미지" class="profile-img">
                    </div>
                    <div class="profile-txt">
                        <span class="userid">parkhayoung615</span>
                        <h2 class="name">박하영</h2>
                        <span class="phone">01031236181</span>
                        <span class="email">parkhayoung615@gmail.com</span>
                        <span class="addr">경기도 성남시 분당구</span>
                        <span class="addr m">불정로386번길 35</span>
                    </div>
                </div>
            </div>
        </div>
        <div id="mypage">
            <div class="mypage-box">
                <div class="mypage-main-wrap">
                    <div class="mypage-main-section mypage-profile">
                        <div class="mypage-main-tit">
                            <h2 class="main-tit">Hello<br>World!</h2>
                        </div>
                        <div class="mypage-circle">
                            <img src="./image/ga.png" alt="프로필 사진" class="mypage-img">
                            <img src="./image/ha1.png" alt="profile-img" class="profile-circle">
                        </div>
                    </div>
                </div>
            </div>

            <div class="mypage-box">
                <div class="mypage-box-wrap">
                    <div class="mypage-main">
                        <div class="mypage-main-wrap">
                            <div class="mypage-main-section">
                                <div class="mypage-item order">
                                    <div class="item-wrap">
                                        <div class="item-tit">주문 내역 &nbsp; <i class="fa-solid fa-angle-right"></i></div>
                                        <ul class="item-list">
                                            <li class="item-list-item">
                                                <img src="./image/cake6.png" alt="케이크 사진" class="list-img">
                                                <div class="item-list-txt">
                                                    <span class="list-point">2020.05.12</span><br>
                                                    <span class="list-txt">Happy Birth Day<br>Chocolate Cake</span>
                                                </div>
                                            </li>
                                            <li class="item-list-item">
                                                <img src="./image/cake10.png" alt="케이크 사진" class="list-img">
                                                <div class="item-list-txt">
                                                    <span class="list-point">2021.04.27</span><br>
                                                    <span class="list-txt">My Life is Cake...</span>
                                                </div>
                                            </li>
                                            <li class="item-list-item">
                                                <img src="./image/cake7.png" alt="케이크 사진" class="list-img">
                                                <div class="item-list-txt">
                                                    <span class="list-point">2022.06.15</span><br>
                                                    <span class="list-txt">Yummy Cake</span>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="mypage-item order-now">
                                    <div class="item-wrap">
                                        <div class="item-tit">주문 상황 &nbsp; <i class="fa-solid fa-angle-right"></i></div>
                                        <div class="item-txt">
                                            <div class="item-point">상품이 배송중입니다.</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<%@ include file="./view/footer.jsp"%>

</body>

</html>