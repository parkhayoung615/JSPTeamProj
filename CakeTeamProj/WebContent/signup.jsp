<%@page import="work.User"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
<link rel="stylesheet"
	href="./css/fontawesome-free-6.1.1-web/css/all.min.css">
<script src="./js/jquery-3.6.0.min.js"></script>
<script src="./js/main.js"></script>

<!--autoload=false 파라미터를 이용하여 자동으로 로딩되는 것을 막습니다.-->
<script
	src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>
</head>

<body
	style="-webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none">
	<%@ include file="./view/header.jsp"%>

	<div id="main">
		<div id="signup">
			<form action="signupOk.jsp" method="POST">
				<div class="signup-wrap">
					<div class="signup-title">
						<div class="tit">회원가입</div>
						<div class="sub-tit">
							<p>
								<span class="star">*</span> 필수입력사항
							</p>
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
								<td class="tinput"><input type="text" name="userid"
									placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">
									<button class="ok-btn" name="ok-btn">중복 확인</button></td>
							</tr>
							<!-- 비밀번호 영역 -->
							<tr class="userPwd">
								<th class="thead">비밀번호<span class="star">*</span></th>
								<td class="tinput"><input type="password" name="userPass"
									placeholder="비밀번호를 입력해주세요"></td>
							</tr>
							<tr class="userPwdOk">
								<th class="thead">비밀번호 확인<span class="star">*</span></th>
								<td class="tinput"><input type="password" name="userpassOK"
									placeholder="비밀번호를 한번 더 입력해주세요"></td>
							</tr>
							<!-- 이름 영역 -->
							<tr class="userName">
								<th class="thead">이름<span class="star">*</span></th>
								<td class="tinput"><input type="text" name="userName"
									placeholder="이름을 입력해주세요"></td>
							</tr>
							<!-- 이메일 영역 -->
							<tr class="userEmail">
								<th class="thead">이메일<span class="star">*</span></th>
								<td class="tinput"><input type="email" name="userEmail"
									placeholder="예: magic@cake.com">
									<button class="ok-btn">중복 확인</button></td>
							</tr>
							<!-- 휴대폰 영역 -->
							<tr class="userPhone">
								<th class="thead">휴대폰<span class="star">*</span></th>
								<td class="tinput"><input type="text" name="userAddr"
									placeholder="숫자만 입력해주세요"></td>
							</tr>
							<!-- 주소 영역 -->
							<script type="text/javascript">
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

							<tr class="userAddr">
								<th class="thead" rowspan="3">주소<span class="star">*</span>
								</th>
								<td class="tinput"><input type="text" class="addr-number"
									name="postcode" id="postcode" placeholder="우편번호" readonly /> <!-- 자바 스크립트 함수와 연결 -->
									<button type="button" class="addr-btn"
										onclick="execDaumPostcode()">우편번호 찾기</button></td>
							</tr>
							<tr>
								<td class="tinput"><input type="text" class="addrContext"
									name="address" id="address" placeholder="도로명 주소" readonly /></td>
							</tr>
							<tr>
								<td class="tinput"><input type="text" class="addrDetail"
									name="detailAddress" placeholder="상세 주소" required /></td>
							</tr>


							<!-- 생년월일 영역 -->
							<tr class="birth">
								<th class="thead">생년월일</th>
								<td class="tinput"><input class="birth-input" type="text"
									name="birth" placeholder="ex) 2005-11-07"></td>
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

	<%@ include file="./view/footer.jsp"%>


</body>

</html>