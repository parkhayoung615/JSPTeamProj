<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="./css/sign.css">
    <link rel="stylesheet" href="./css/headerCss.css">
    <link rel="stylesheet" href="./css/fontawesome-free-6.1.1-web/css/all.min.css">
    <script src="./js/jquery-3.6.0.min.js"></script>
    <script src="./js/main.js"></script>

    <!--autoload=false 파라미터를 이용하여 자동으로 로딩되는 것을 막습니다.-->
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>
</head>

<body style="-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
    <header>
        <div id="header">
            <div class="header-wrap">
                <a href="./index.html"><img class="header-logo" src="./image/무제-1.png" alt="헤더 로고"></a>
                <ul class="header-list">
                    <!-- 우선 #으로 처리 !! 후에 재작업 요망 -->
                    <li class="list-item"><a href="./cake.html">Cake</a></li>
                    <li class="list-item"><a href="./customCake.html">Custom Cake</a></li>
                    <li class="list-item"><a href="./sameday.html">Same-day Pickup</a></li>
                    <li class="list-item"><a href="./party.html">Party</a></li>
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
        <div id="signup">
            <form action="./join_ok.php" method="POST">
                <div class="signup-wrap">
                    <div class="signup-title">
                        <div class="tit">회원가입</div>
                        <div class="sub-tit">
                            <p><span class="star">*</span> 필수입력사항</p>
                        </div>
                    </div>
                    <hr>
                    <table class="signup-table">
                        <tbody>
                            <!-- tinput = td 태그의 input -->
                            <!-- input = tr 태그의 전체 input -->
                            <!-- 아이디 영역 -->
                            <tr class="userid">
                                <th class="thead">아이디<span class="star">*</span></th>
                                <td class="tinput">
                                    <input type="text" name="userid" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">
                                    <button class="ok-btn">중복 확인</button>
                                </td>
                            </tr>
                            <!-- 비밀번호 영역 -->
                            <tr class="userPwd">
                                <th class="thead">비밀번호<span class="star">*</span></th>
                                <td class="tinput"><input type="password" name="userPass" placeholder="비밀번호를 입력해주세요">
                                </td>
                            </tr>
                            <tr class="userPwdOk">
                                <th class="thead">비밀번호 확인<span class="star">*</span></th>
                                <td class="tinput">
                                    <input type="password" name="userpassOK" placeholder="비밀번호를 한번 더 입력해주세요">
                                </td>
                            </tr>
                            <!-- 이름 영역 -->
                            <tr class="userName">
                                <th class="thead">이름<span class="star">*</span></th>
                                <td class="tinput"><input type="text" name="userName" placeholder="이름을 입력해주세요"></td>
                            </tr>
                            <!-- 이메일 영역 -->
                            <tr class="userEmail">
                                <th class="thead">이메일<span class="star">*</span></th>
                                <td class="tinput">
                                    <input type="email" name="userEmail" placeholder="예: magic@cake.com">
                                    <button class="ok-btn">중복 확인</button>
                                </td>
                            </tr>
                            <!-- 휴대폰 영역 -->
                            <tr class="userPhone">
                                <th class="thead">휴대폰<span class="star">*</span></th>
                                <td class="tinput">
                                    <input type="text" name="userAddr" placeholder="숫자만 입력해주세요">
                                </td>
                            </tr>
                            <!-- 주소 영역 -->

                            <tr class="userAddr">
                                <th class="thead" rowspan="3">
                                    주소<span class="star">*</span>
                                </th>
                                <td class="tinput">
                                    <input type="text" class="addr-number" name="postcode" id="postcode"
                                        placeholder="우편번호" readonly />
                                    <!-- 자바 스크립트 함수와 연결 -->
                                    <button type="button" class="addr-btn" onclick="execDaumPostcode()">우편번호 찾기</button>
                                </td>
                            </tr>
                            <tr>
                                <td class="tinput">
                                    <input type="text" class="addrContext" name="address" id="address"
                                        placeholder="도로명 주소" readonly />
                                </td>
                            </tr>
                            <tr>
                                <td class="tinput">
                                    <input type="text" class="addrDetail" name="detailAddress" placeholder="상세 주소"
                                        required />
                                </td>
                            </tr>

                            <script>
                                /** 우편번호 찾기 */
                                function execDaumPostcode() {
                                    daum.postcode.load(function () {
                                        new daum.Postcode({
                                            oncomplete: function (data) {
                                                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
                                                $("#postcode").val(data.zonecode);
                                                $("#address").val(data.roadAddress);
                                            }
                                        }).open();
                                    });
                                }
                            </script>

                            <!-- 생년월일 영역 -->
                            <tr class="birth">
                                <th class="thead">생년월일</th>
                                <td class="tinput">
                                    <input class="birth-input" type="text" placeholder="YYYY">
                                    <span>/</span>
                                    <input class="birth-input" type="text" placeholder="MM">
                                    <span>/</span>
                                    <input class="birth-input" type="text" placeholder="DD">
                                </td>
                            </tr>
                            <!-- 이용약관 영역 -->
                            <tr class="agree all">
                                <th class="thead" rowspan="5">이용약관동의<span class="star">*</span></th>
                                <td class="allok">
                                    <input type="radio" name="allcheck">
                                    <label for="allcheck">
                                        <span class="agree-txt">전체 동의합니다.</span>
                                        <p class="agree-sub">
                                            선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.
                                        </p>
                                    </label>
                                </td>
                            </tr>
                            <tr class="agree terms">
                                <td class="terms">
                                    <input type="radio" name="termsCheck">
                                    <label for="termsCheck">
                                        <span class="terms-txt txt">이용약관 동의<span class="imp"> (필수)</span></span>
                                        <a href="#">약관보기<i class="fas fa-chevron-right"></i></a>
                                    </label>
                                </td>
                            </tr>
                            <tr class="agree choice">
                                <td class="choice">
                                    <input type="radio" name="choiceCheck">
                                    <label for="choiceCheck">
                                        <span class="choice-txt txt">개인정보 수집·이용 동의<span class="imp"> (선택)</span></span>
                                        <a href="#">약관보기<i class="fas fa-chevron-right"></i></a>
                                    </label>
                                </td>
                            </tr>
                            <tr class="agree bene">
                                <td class="Benefit">
                                    <input type="radio" name="bencheck">
                                    <label for="bencheck">
                                        <span class="ben-tit txt">무료배송, 할인쿠폰 등 혜택/정보 수신 동의<span
                                                class="imp">(선택)</span></span>
                                    </label>
                                </td>
                            <tr class="agree beneInput">
                                <td class="ben-input">
                                    <input type="radio" name="SMS">
                                    <label for="SMS">
                                        <span class="ben-txt txt">SMS</span>
                                    </label>
                                    <input type="radio" name="benEmail">
                                    <label for="benEmail">
                                        <span class="ben-txt txt">이메일</span>
                                    </label>
                                </td>
                            </tr>
                            </tr>
                        </tbody>
                    </table>
                    <div class="join-btn-wrap">
                        <input class="go-join" type="submit" value="가입하기">
                    </div>
                </div>
            </form>
        </div>
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
</body>

</html>