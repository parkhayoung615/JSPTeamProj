<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/product.css">
    <title>All Product</title>
</head>

<body style="-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
    <%@ include file="./view/header.jsp"%>

    <div id="main">
        <div id="allProd">
            <div id="sidebar">
                <div class="sidebar-wrap">
                    <ul class="sidebar-list">
                        <div class="sidebar-list-item tit">All Product</div>
                        <div class="sidebar-list-item"><a href="./cake.html">Cake</a></div>
                        <div class="sidebar-list-item"><a href="./customCake.html">Custom Cake</a></div>
                        <div class="sidebar-list-item"><a href="./sameday.html">Same-Day Pickup</a></div>
                    </ul>
                </div>
            </div>
            <div id="product">
                <div class="product-wrap">
                    <div class="all-product-tit">
                        <h2 class="tit">All Product</h2>
                    </div>
                    <div class="all-product">
                        <div class="all-product-wrap">
                        
                            <div class="all-product-row">
                                <a class="linke" href="./detailPage.jsp">
                                    <div class="all-product-item">
                                        <div class="item-wrap">
                                            <img src="./image/cake1.png" alt="판매 케이크 사진" class="item-img">
                                            <div class="item-txt">
                                                <h2 class="product-name">Happy Birth Day<br>Chocolate Cake</h2>
                                                <div class="product-tag">Cake</div>
                                                <div class="product-cell">17,000 WON</div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a class="linke" href="./detailPage.jsp">
                                    <div class="all-product-item">
                                        <div class="item-wrap">
                                            <img src="./image/cake2.png" alt="판매 케이크 사진" class="item-img">
                                            <div class="item-txt">
                                                <h2 class="product-name">My Life.......</h2>
                                                <div class="product-tag">Cake</div>
                                                <div class="product-cell">47,000 WON</div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a class="linke" href="./detailPage.jsp">
                                    <div class="all-product-item">
                                        <div class="item-wrap">
                                            <img src="./image/cake3.png" alt="판매 케이크 사진" class="item-img">
                                            <div class="item-txt">
                                                <h2 class="product-name">Yummy Cake</h2>
                                                <div class="product-tag">Custom Cake</div>
                                                <div class="product-cell">37,000 WON</div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                               <a class="linke" href="./detailPage.jsp">
                                    <div class="all-product-item">
                                        <div class="item-wrap">
                                            <img src="./image/cake16.png" alt="판매 케이크 사진" class="item-img">
                                            <div class="item-txt">
                                                <h2 class="product-name">WHAT THE HELL?!?!</h2>
                                                <div class="product-tag">Cake</div>
                                                <div class="product-cell">20,000 WON</div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="all-product-row">
                                <a class="linke" href="./detailPage.jsp">
                                    <div class="all-product-item">
                                        <div class="item-wrap">
                                            <img src="./image/cake17.png" alt="판매 케이크 사진" class="item-img">
                                            <div class="item-txt">
                                                <h2 class="product-name">Music is My Life...</h2>
                                                <div class="product-tag">Cake</div>
                                                <div class="product-cell">50,000 WON</div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                               <a class="linke" href="./detailPage.jsp">
                                    <div class="all-product-item">
                                        <div class="item-wrap">
                                            <img src="./image/cake18.png" alt="판매 케이크 사진" class="item-img">
                                            <div class="item-txt">
                                                <h2 class="product-name">stone Cake</h2>
                                                <div class="product-tag">Cake</div>
                                                <div class="product-cell">100,000 WON</div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a class="linke" href="./detailPage.jsp">
                                    <div class="all-product-item">
                                        <div class="item-wrap">
                                            <img src="./image/cake12.png" alt="판매 케이크 사진" class="item-img">
                                            <div class="item-txt">
                                                <h2 class="product-name">flower Cake</h2>
                                                <div class="product-tag">Cake</div>
                                                <div class="product-cell">80,000 WON</div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      <%@ include file="./view/footer.jsp"%>
    </div>
</body>

</html>