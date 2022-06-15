<%@page import="java.util.ArrayList"%>
<%@page import="work.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign in</title>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="./css/sign.css">
    <script src="./js/main.js"></script>
</head>

<body style="-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
    <%@ include file="./view/header.jsp"%>


    <div id="main">
        <div id="login">
            <div class="login-wrap">
                <div id="login-text">
                    <div class="login-text-wrap">
                        <div class="log-tit">Sign In to<br>Magic Cake</div>
                        <div class="log-sub-tit">아직도 회원이 아닌가요? <a class="sign-txt" href="./signup.jsp">Sign up</a>
                        </div>
                    </div>
                </div>
                
                <div id="login-form">
                    <div class="login-form-wrap">
                        <form class="log-form" action="/login" method="post">
                            <div class="user-form">
                                <input type="text" name="id" placeholder="ID">
                                <input type="password" name="pwd" placeholder="PASSWORD">
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