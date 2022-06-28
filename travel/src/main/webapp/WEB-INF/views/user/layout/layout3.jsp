<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v6.1.0/css/all.css">
<title><tiles:insertAttribute name="title" /></title>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap5/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap5/icon/bootstrap-icons.css"
	type="text/css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendor/icofont/icofont.min.css"
	type="text/css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/core.css"
	type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/vendor/jquery/js/jquery.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/util-jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/menu.js"></script>

<style type="text/css">
@import url("//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css");

* {
	font-family: "Spoqa Han Sans Neo", "sans-serif";
}

.blind {
	position: absolute;
	clip: rect(0, 0, 0, 0);
	width: 1px;
	height: 1px;
	margin: -1px;
	overflow: hidden;
}

.login-box {
	position: absolute;
	box-sizing: border-box;
	width: 500px;
	padding: 29px;
	border: 1px solid #c4c4c4;
	border-radius: 5px;
	background-color: #ffffff;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
}

.weniv-logo {
	display: inline-block;
	width: 138px;
	margin: 0 150px 26px;
}

.sub-text {
	text-align: center;
	font-family: "Spoqa Han Sans Neo";
}

.login-btn {
	display: flex;
	box-sizing: border-box;
	justify-content: center;
	align-items: center;
	margin: 32px auto 0;
	line-height: 28px;
	width: 100%;
	height: 60px;
	color: #ffffff;
	font-size: 22px;
	font-weight: 700;
	border-radius: 5px;
	background-color: #2f80ed;
}

.login-btn:hover {
	background-color: #276ac0;
}

.login-modal {
	height: 90vh;
}

.login-modal-box {
	font-family: "Spoqa Han Sans Neo";
	position: absolute;
	box-sizing: border-box;
	padding: 19px 23px 25px;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 520px;
	background-color: #ffffff;
	border: 1px solid #c4c4c4;
	border-radius: 10px;
}

.topline {
	height: 1px;
	width: 520px;
	margin-top: 18px;
	margin-left: -24px;
	background-color: #c4c4c4;
}

.login-modal-title {
	text-align: center;
	font-weight: 500;
	font-size: 16px;
	line-height: 20px;
	color: #000000;
}

.close-btn {
	float: right;
	width: 16px;
	height: 16px;
	margin-top: 2px;
	background-image:
		url("${pageContext.request.contextPath}/resources/images/header/close.png");
	background-size: cover;
	background-position: center;
}

.login-modal .sub-text {
	margin-top: 26px;
	text-align: left;
	font-size: 20px;
	font-weight: 500;
	line-height: 24px;
}

.user-input-wrap {
	margin-top: 24px;
}

.user-input-box {
	display: inline-block;
	box-sizing: border-box;
	padding: 16px;
	width: 100%;
	height: 48px;
	border: 1px solid #c4c4c4;
	border-radius: 5px;
	color: #767676;
	font-size: 16px;
	font-weight: 400;
	line-height: 20px;
}

.user-input-box:hover {
	border: 1px solid #2f80ed;
}

.user-input-box:focus {
	outline: 2px solid #2f80ed;
	color: #000000;
}

.user-input-box:nth-child(4) {
	margin-top: 10px;
}

.login-status-wrap::after {
	content: "";
	display: block;
	clear: both;
}

.login-status-btn+label {
	display: inline-block;
	width: auto;
	height: 22px;
	background:
		url("${pageContext.request.contextPath}/resources/images/header/check-box.png")
		no-repeat 0 0px/contain;
	cursor: pointer;
}

.login-status-btn:checked+label {
	background:
		url("${pageContext.request.contextPath}/resources/images/header/check-box-checked.png")
		no-repeat 0 0px/contain;
}

.login-status-btn:disabled+label {
	background:
		url("${pageContext.request.contextPath}/resources/images/header/check-box.png")
		no-repeat 0 0px/contain;
}

.login-status-btn {
	display: none;
}

.login-status-text {
	box-sizing: border-box;
	margin-top: 17px;
	margin-left: 4px;
	padding-left: 30px;
	font-weight: 500;
	font-size: 16px;
	line-height: 21px;
	color: #767676;
}

.login-btn {
	margin-top: 20px;
	height: 50px;
	font-weight: 700;
	font-size: 18px;
	line-height: 22px;
}

.user-function-wrap {
	margin-top: 20px;
	text-align: center;
}

.user-function-list {
	display: inline-block;
}

.user-function-link {
	font-weight: 400;
	font-size: 14px;
	line-height: 18px;
	color: #767676;
}

.user-function-list:nth-child(1)::after {
	content: "";
	float: right;
	margin: 2px 12px;
	height: 14px;
	width: 1px;
	background-color: #767676;
}

.line {
	display: flex;
	gap: 13px;
	color: #767676;
	align-items: center;
	margin: 30px 0 0;
	font-weight: 400;
	font-size: 14px;
	line-height: 18px;
}

.line::before, .line::after {
	content: " ";
	flex-grow: 1;
	height: 1px;
	background-color: #c4c4c4;
}

.easy-login-wrap {
	margin-top: 20px;
}

.easy-login-link {
	margin-bottom: 10px;
	display: block;
	padding: 15px 14px;
	box-sizing: border-box;
	border-radius: 5px;
	width: 100%;
	font-weight: 500;
	font-size: 16px;
	line-height: 20px;
	text-align: center;
	color: #767676;
}

.easy-login-link.google {
	border: 1px solid #767676;
}

.easy-login-link.google:hover {
	background-color: #767676;
	color: #ffffff;
}

.easy-login-link.facebook {
	border: 1px solid #2d9cdb;
}

.easy-login-link.facebook:hover {
	background-color: #72b0d4;
	color: #ffffff;
}

.easy-login-link.naver {
	border: 1px solid #00bf18;
}

.easy-login-link.naver:hover {
	background-color: #62c56f;
	color: #ffffff;
}

.easy-login-link.kakao {
	border: 1px solid #f2c94c;
	margin-bottom: 0px;
}

.easy-login-link.kakao:hover {
	background-color: #f0d688;
	color: #ffffff;
}

.easy-login-link::before {
	content: "";
	float: left;
	width: 28px;
	height: 28px;
	margin-top: -4px;
	background-size: 76px;
	background-image:
		url("${pageContext.request.contextPath}/resources/images/header/css_sprites.png");
}

.easy-login-link.google::before {
	background-position: -43px -5px;
}

.easy-login-link.facebook::before {
	background-position: -5px -5px;
}

.easy-login-link.naver::before {
	background-position: -43px -43px;
}

.easy-login-link.kakao::before {
	background-position: -5px -43px;
}

.id-error {
	display: none;
	box-sizing: border-box;
	padding-left: 5px;
	color: #f4492e;
	font-weight: 400;
	font-size: 14px;
	line-height: 18px;
}

.error-line {
	display: none;
	height: 6px;
}

.info-error {
	display: none;
	box-sizing: border-box;
	margin-top: 10px;
	padding-left: 5px;
	color: #f4492e;
	font-weight: 400;
	font-size: 14px;
	line-height: 18px;
}

.modal-content {
    background-color: transparent;
    border-color: transparent;
}
</style>
</head>

<body>

	<header>
		<tiles:insertAttribute name="header" />
	</header>

	<main>
		<tiles:insertAttribute name="body" />
	</main>

	<footer class="text-center text-lg-start bg-light text-muted">
		<tiles:insertAttribute name="footer" />
	</footer>

	<div id="loadingLayout"
		style="display: none; position: absolute; left: 0; top: 0; width: 100%; height: 100%; z-index: 9000; background: #eee;">
		<div class="loader"></div>
	</div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap5/js/bootstrap.bundle.min.js"></script>

	<!-- Login Modal -->
	<script type="text/javascript">
	function dialogLogin() {
	    $("form[name=modelLoginForm] input[name=userId]").val("");
	    $("form[name=modelLoginForm] input[name=userPwd]").val("");
	    
		$("#loginModal").modal("show");	
		
	    $("form[name=modelLoginForm] input[name=userId]").focus();
	}

	function sendModelLogin() {
	    var f = document.modelLoginForm;
		var str;
		
		str = f.userId.value;
	    if(!str) {
	        f.userId.focus();
	        return;
	    }
	
	    str = f.userPwd.value;
	    if(!str) {
	        f.userPwd.focus();
	        return;
	    }
	
	    f.action = "${pageContext.request.contextPath}/member/login";
	    f.submit();
	}
</script>
	<div class="modal fade" id="loginModal" tabindex="-1"
		data-bs-backdrop="static" data-bs-keyboard="false"
		aria-labelledby="loginModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="login-modal modal-content">
				<h2 class="blind">로그인 팝업</h2>
				<div class="login-modal-box">
					<div class="login-modal-head">
						<button type="button" class="close-btn " data-bs-dismiss="modal" aria-label="Close"></button>
						<h3 class="login-modal-title">로그인 또는 회원가입</h3>
					</div>
					<div class="topline"></div>
					<p class="sub-text">트래블러스에서 여러분의 여행 계획을 세워보세요 :)</p>
					<form name="modelLoginForm" class="user-input-wrap" action="#" method="post">
						<input id="user-id" class="user-input-box" type="text" name="userId"
							placeholder="아이디" style="padding:16px; border-radius: 5px;"/>
						<input id="user-pw" class="user-input-box" type="password" name="userPwd"
							placeholder="비밀번호" />
						<input id="rememberMeModel" class="login-status-btn"
							type="checkbox" /> <label for="rememberMeModel"
							class="login-status-text">아이디 저장</label>
						<button id="modal-login-btn" class="login-btn" onclick="sendModelLogin();">로그인</button>
					</form>
					<ul class="user-function-wrap">
						<li class="user-function-list"><a href="pageContext.request.contextPath}/member/member"
							class="user-function-link">회원가입</a></li>
						<li class="user-function-list"><a href=""
							class="user-function-link">아이디/비밀번호 찾기</a></li>
					</ul>
					<div class="line">또는</div>
					<ul class="easy-login-wrap">
						<li><a class="easy-login-link google"
							href="https://www.google.com/">구글 계정으로 로그인</a></li>
						<li><a class="easy-login-link facebook"
							href="https://www.facebook.com/">페이스북 계정으로
								로그인</a></li>
						<li><a class="easy-login-link naver"
							href="https://www.naver.com/">네이버 계정으로 로그인</a></li>
						<li><a class="easy-login-link kakao"
							href="https://www.kakaocorp.com/page/">카카오톡
								계정으로 로그인</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
<script>
      let modalCheck = false;
      $(".login-btn").click(function () {
        if (!modalCheck) {
          $(".login-modal").show();
          modalCheck = true;
        }
      });
      $(".close-btn").click(function () {
        if (modalCheck) {
          $("#loginModal").hide();
          modalCheck = false;
        }
      });
      $("#modal-login-btn").click(function () {
        let userID = $("#user-id").val();
        if (userID == "") {
          $(".id-error").show();
          $(".error-line").show();
          $("#user-id").css("border", "2px solid #F4492E");
        } else {
          $(".info-error").show();
        }
      });
      $("#user-id").focus(function () {
        $("#user-id").css("border", "");
        $(".id-error").hide();
        $(".error-line").hide();
        $(".info-error").hide();
      });
    </script>

</body>
</html>