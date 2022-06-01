<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="./css/sign.css">
    <link rel="stylesheet" href="./css/headerCss.css">
    <link rel="stylesheet" href="./css/fontawesome-free-6.1.1-web/css/all.min.css">
    <script src="./js/jquery-3.6.0.min.js"></script>
    <script src="./js/main.js"></script>
</head>

<body style="-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
    <header>
        <div id="header">
            <div class="header-wrap">
                <a href="./index.html"><img class="header-logo" src="./image/무제-1.png" alt="헤더 로고"></a>
                <ul class="header-list">
                    <!-- 우선 #으로 처리 !! 후에 재작업 요망 -->
                    <li class="list-item"><a href="#">Cake</a></li>
                    <li class="list-item"><a href="#">Custom Cake</a></li>
                    <li class="list-item"><a href="#">Same-day Pickup</a></li>
                    <li class="list-item"><a href="#">Party</a></li>
                    <li class="list-item"><a href="#">About Us</a></li>
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
        <div id="login">
            <div class="login-wrap">
                <div id="login-text">
                    <div class="login-text-wrap">
                        <div class="log-tit">Sign In to<br>Magic Cake</div>
                        <div class="log-sub-tit">아직도 회원이 아닌가요? <a class="sign-txt" href="./Signup.html">Sign up</a>
                        </div>
                    </div>
                </div>
                
                <div id="login-form">
                    <div class="login-form-wrap">
                        <form class="log-form" action="" method="post">
                            <div class="user-form">
                                <input type="text" name="userId" placeholder="ID">
                                <input type="password" name="userPwd" placeholder="PASSWORD">
                                <a class="forget" href="./search.html">아이디/비밀번호</a>
                            </div>
                            <input class="sign-btn" type="submit" value="Sign in">
                            
                        </form>
                    </div>
                </div>
                <div class="container"></div>
            </div>
        </div>
    </div>
</body>
</html>