<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta content="width=device-width" name="viewport"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>지역별 여행 리스트</title>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/slick/slick-theme.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/bootstrap5/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/bootstrap5/icon/bootstrap-icons.css" type="text/css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/core.css" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath}/dist/jquery/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/dist/bootstrap5/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/dist/slick/slick.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/dist/slick/slick.js"></script>
<link rel="stylesheet" type="text/css" href="https://korean1.visitkorea.or.kr/kor/tt/pr_gallery/new_photo_gallery/css/common.css" media="all" />
<script src="https://korean1.visitkorea.or.kr/kor/tt/pr_gallery/new_photo_gallery/js/jquery-3.5.1.min.js"></script>
<script src="https://korean1.visitkorea.or.kr//kor/tt/pr_gallery/new_photo_gallery/js/common.js"></script>

<style type="text/css">
a {
	text-decoration: none;
	color: white;
}

.dropdown-menu li a {
color: white;
font-weight: bold;
}

.wrap>ul>li:hover>ul {
	display: block;
}
.wrap>ul>li>ul>li>a:hover {
	background-color: #0dcaf0;
	transition: ease 1s;
	font-size: 14px;
}

.post-slider{
  width:80%;
  margin:0px auto;
  position:relative;
}
.post-slider .silder-title{
  text-align:center;
  margin:30px auto;
}
.post-slider .next, .post-slider .next1, .post-slider .next2 {
  position:absolute;
  top:50%;
  right:30px;
  font-size:2em;
  cursor: pointer;
}
.post-slider .prev, .post-slider .prev1, .post-slider .prev2 {
  position:absolute;
  top:50%;
  left:30px;
  font-size:2em;
    cursor: pointer;
}
.post-slider .post-wrapper, .post-slider .post-wrapper1, .post-slider .post-wrapper2 {

  width:90%;
  height:400px;
  margin:0px auto;
  overflow: hidden;
  padding:10px 0px 10px 0px;
}
.post-slider .post-wrapper .post, .post-slider .post-wrapper1 .post, .post-slider .post-wrapper2 .post{
  width:300px;
  height:300px;
  margin:0px 10px;
  display:inline-block;
  background:white;
  border-radius: 5px;
}
.post-slider .post-wrapper .post .post-info, .post-slider .post-wrapper1 .post .post-info, .post-slider .post-wrapper2 .post .post-info{
  font-size:15px;
  height:30%;
}
.post-slider .post-wrapper .post .slider-image, .post-slider .post-wrapper1 .post .slider-image, .post-slider .post-wrapper2 .post .slider-image{
  width:87%;
  height:300px;
  border-top-left-radius:5px;
  border-top-right-radius:5px;
}
</style>
<script>
$(document).ready(function() {
//사진
$('#boxPic').click(function(){
	$(this).addClass('on');
	$('#boxMov').removeClass('on');
	$('.boxMov').hide();
	$('.boxPic').show();
});

//사진
//서울
$('.mapgovc0').hover(function(){
	if(document.getElementById("mapgov0").style.display == "none") { $("#mapgov0").show(); $('.seoul').addClass('on');}
	else { $("#mapgov0").hide(); $('.seoul').removeClass('on');}
});
 
//인천
$('.mapgovc1').hover(function(){
	if(document.getElementById("mapgov1").style.display == "none") { $("#mapgov1").show(); $('.incheon').addClass('on');}
	else { $("#mapgov1").hide(); $('.incheon').removeClass('on');}
});

//경기
$('.mapgovc2').hover(function(){
	if(document.getElementById("mapgov2").style.display == "none") { $("#mapgov2").show();$('.gyeonggi').addClass('on');}
	else { $("#mapgov2").hide();$('.gyeonggi').removeClass('on');}
});

//강원
$('.mapgovc3').hover(function(){
	if(document.getElementById("mapgov3").style.display == "none") { $("#mapgov3").show();$('.gangwon').addClass('on');}
	else { $("#mapgov3").hide();$('.gangwon').removeClass('on');}
});

//충남
$('.mapgovc4').hover(function(){
	if(document.getElementById("mapgov4").style.display == "none") { $("#mapgov4").show();$('.chungnam').addClass('on');}
	else { $("#mapgov4").hide();$('.chungnam').removeClass('on');}
});

//충북
$('.mapgovc5').hover(function(){
	if(document.getElementById("mapgov5").style.display == "none") { $("#mapgov5").show();$('.chungbuk').addClass('on');}
	else { $("#mapgov5").hide();$('.chungbuk').removeClass('on');}
});

//대전
$('.mapgovc6').hover(function(){
	if(document.getElementById("mapgov6").style.display == "none") { $("#mapgov6").show();$('.deajeon').addClass('on');}
	else { $("#mapgov6").hide();$('.deajeon').removeClass('on');}
});

//전북
$('.mapgovc7').hover(function(){
	if(document.getElementById("mapgov7").style.display == "none") { $("#mapgov7").show();$('.jeonbuk').addClass('on');}
	else { $("#mapgov7").hide();$('.jeonbuk').removeClass('on');}
});

//광주
$('.mapgovc8').hover(function(){
	if(document.getElementById("mapgov8").style.display == "none") { $("#mapgov8").show();$('.gwangju').addClass('on');}
	else { $("#mapgov8").hide();$('.gwangju').removeClass('on');}
});

//전남
$('.mapgovc9').hover(function(){
	if(document.getElementById("mapgov9").style.display == "none") { $("#mapgov9").show();$('.jeonnam').addClass('on');}
	else { $("#mapgov9").hide();$('.jeonnam').removeClass('on');}
});

//경북
$('.mapgovc10').hover(function(){
	if(document.getElementById("mapgov10").style.display == "none") { $("#mapgov10").show();$('.gyeongbuk').addClass('on');}
	else { $("#mapgov10").hide();$('.gyeongbuk').removeClass('on');}
});

//대구
$('.mapgovc11').hover(function(){
	if(document.getElementById("mapgov11").style.display == "none") { $("#mapgov11").show();$('.deagu').addClass('on');}
	else { $("#mapgov11").hide();$('.deagu').removeClass('on');}
});

//경남
$('.mapgovc12').hover(function(){
	if(document.getElementById("mapgov12").style.display == "none") { $("#mapgov12").show();$('.gyeongnam').addClass('on');}
	else { $("#mapgov12").hide();$('.gyeongnam').removeClass('on');}
});

//울산
$('.mapgovc13').hover(function(){
	if(document.getElementById("mapgov13").style.display == "none") { $("#mapgov13").show();$('.ulsan').addClass('on');}
	else { $("#mapgov13").hide();$('.ulsan').removeClass('on');}
});

//부산
$('.mapgovc14').hover(function(){
	if(document.getElementById("mapgov14").style.display == "none") { $("#mapgov14").show();$('.busan').addClass('on');}
	else { $("#mapgov14").hide();$('.busan').removeClass('on');}
});

//제주
$('.mapgovc15').hover(function(){
	if(document.getElementById("mapgov15").style.display == "none") { $("#mapgov15").show();$('.jeju').addClass('on');}
	else { $("#mapgov15").hide();$('.jeju').removeClass('on');}
});
//세종
$('.mapgovc16').hover(function(){
	if(document.getElementById("mapgov16").style.display == "none") { $("#mapgov16").show();$('.sejong').addClass('on');}
	else { $("#mapgov16").hide();$('.sejong').removeClass('on');}
});

//영상
//서울
$('.mapgovcMov0').hover(function(){
	if(document.getElementById("mapgovMov0").style.display == "none") { $("#mapgovMov0").show(); $('.seoul').addClass('on');}
	else { $("#mapgovMov0").hide(); $('.seoul').removeClass('on');}
});
 
//인천
$('.mapgovcMov1').hover(function(){
	if(document.getElementById("mapgovMov1").style.display == "none") { $("#mapgovMov1").show(); $('.incheon').addClass('on');}
	else { $("#mapgovMov1").hide(); $('.incheon').removeClass('on');}
});

//경기
$('.mapgovcMov2').hover(function(){
	if(document.getElementById("mapgovMov2").style.display == "none") { $("#mapgovMov2").show();$('.gyeonggi').addClass('on');}
	else { $("#mapgovMov2").hide();$('.gyeonggi').removeClass('on');}
});

//강원
$('.mapgovcMov3').hover(function(){
	if(document.getElementById("mapgovMov3").style.display == "none") { $("#mapgovMov3").show();$('.gangwon').addClass('on');}
	else { $("#mapgovMov3").hide();$('.gangwon').removeClass('on');}
});

//충남
$('.mapgovcMov4').hover(function(){
	if(document.getElementById("mapgovMov4").style.display == "none") { $("#mapgovMov4").show();$('.chungnam').addClass('on');}
	else { $("#mapgovMov4").hide();$('.chungnam').removeClass('on');}
});

//충북
$('.mapgovcMov5').hover(function(){
	if(document.getElementById("mapgovMov5").style.display == "none") { $("#mapgovMov5").show();$('.chungbuk').addClass('on');}
	else { $("#mapgovMov5").hide();$('.chungbuk').removeClass('on');}
});

//대전
$('.mapgovcMov6').hover(function(){
	if(document.getElementById("mapgovMov6").style.display == "none") { $("#mapgovMov6").show();$('.deajeon').addClass('on');}
	else { $("#mapgovMov6").hide();$('.deajeon').removeClass('on');}
});

//전북
$('.mapgovcMov7').hover(function(){
	if(document.getElementById("mapgovMov7").style.display == "none") { $("#mapgovMov7").show();$('.jeonbuk').addClass('on');}
	else { $("#mapgovMov7").hide();$('.jeonbuk').removeClass('on');}
});

//광주
$('.mapgovcMov8').hover(function(){
	if(document.getElementById("mapgovMov8").style.display == "none") { $("#mapgovMov8").show();$('.gwangju').addClass('on');}
	else { $("#mapgovMov8").hide();$('.gwangju').removeClass('on');}
});

//전남
$('.mapgovcMov9').hover(function(){
	if(document.getElementById("mapgovMov9").style.display == "none") { $("#mapgovMov9").show();$('.jeonnam').addClass('on');}
	else { $("#mapgovMov9").hide();$('.jeonnam').removeClass('on');}
});

//경북
$('.mapgovcMov10').hover(function(){
	if(document.getElementById("mapgovMov10").style.display == "none") { $("#mapgovMov10").show();$('.gyeongbuk').addClass('on');}
	else { $("#mapgovMov10").hide();$('.gyeongbuk').removeClass('on');}
});

//대구
$('.mapgovcMov11').hover(function(){
	if(document.getElementById("mapgovMov11").style.display == "none") { $("#mapgovMov11").show();$('.deagu').addClass('on');}
	else { $("#mapgovMov11").hide();$('.deagu').removeClass('on');}
});

//경남
$('.mapgovcMov12').hover(function(){
	if(document.getElementById("mapgovMov12").style.display == "none") { $("#mapgovMov12").show();$('.gyeongnam').addClass('on');}
	else { $("#mapgovMov12").hide();$('.gyeongnam').removeClass('on');}
});

//울산
$('.mapgovcMov13').hover(function(){
	if(document.getElementById("mapgovMov13").style.display == "none") { $("#mapgovMov13").show();$('.ulsan').addClass('on');}
	else { $("#mapgovMov13").hide();$('.ulsan').removeClass('on');}
});

//부산
$('.mapgovcMov14').hover(function(){
	if(document.getElementById("mapgovMov14").style.display == "none") { $("#mapgovMov14").show();$('.busan').addClass('on');}
	else { $("#mapgovMov14").hide();$('.busan').removeClass('on');}
});

//제주
$('.mapgovcMov15').hover(function(){
	if(document.getElementById("mapgovMov15").style.display == "none") { $("#mapgovMov15").show();$('.jeju').addClass('on');}
	else { $("#mapgovMov15").hide();$('.jeju').removeClass('on');}
});
//세종
$('.mapgovcMov16').hover(function(){
	if(document.getElementById("mapgovMov16").style.display == "none") { $("#mapgovMov16").show();$('.sejong').addClass('on');}
	else { $("#mapgovMov16").hide();$('.sejong').removeClass('on');}
});
 
});
</script>
</head>
<body>
	
<header>
	<div class="container-fluid mb-0 p-2 text-white" style="background-color: #0dcaf0;">
		
		
		
		<div class="row">
			<div class="col-2"></div>
			<div class="col-7" style="font-size: 40px;"> <a href="#" style="text-decoration: none; color: white;">6traptrip</a></div>
	
			<div class="col-1" style="padding: 6px; font-size: 20px; text-align: right;"><a href="#"><i class="bi bi-box-arrow-in-right"></i></a></div>
			<div class="col-1" style="padding: 12px;"><a href="#">회원가입</a></div>
			<!-- 
			<div class="col-1" style="padding: 6px; font-size: 20px; text-align: right;"><a href="#"><i class="bi bi-box-arrow-left"></i></i></a></div>
			<div class="col-1" style="padding: 12px;"><a href="#">마이페이지</a></div> 
			-->
			<div class="col-1" style="padding: 6px;"></div>
		</div>
	</div>
	<div class="container-fluid mb-0 p-4 text-white " style="background-color: #0dcaf0; font-weight: bold;" >
		
			<div class="row">
				
				<div class="col p-2" style="text-align: right; font-size: 17px;"><a href="#" style="text-decoration: none; color: white;">홈</a></div>
				<div class="col wrap">
					<ul class="navbar-nav mx-auto flex-nowrap"> 
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: white; font-size: 17px; text-align: center;">
								여행지추천
							</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: #0dcaf0; border: none; text-align: center;">
								<li><a class="dropdown-item" href="#" >지역별추천</a></li>
								<li><a class="dropdown-item" href="#" >테마별추천</a></li>
								<li><a class="dropdown-item" href="#" >축제 이벤트</a></li>
								<li><a class="dropdown-item" href="#" >맛집</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="col wrap">
					<ul class="navbar-nav mx-auto flex-nowrap"> 
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: white; font-size: 17px; text-align: center;">
								예약
							</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: #0dcaf0; color: white; border: none; text-align: center;">
								<li><a class="dropdown-item" href="#">숙소예약</a></li>
								<li><a class="dropdown-item" href="#">액티비티예약</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="col wrap">
					<ul class="navbar-nav mx-auto flex-nowrap"> 
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: white; font-size: 17px; text-align: center;">
								커뮤니티
							</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: #0dcaf0; color: white; border: none; text-align: center;">
								<li><a class="dropdown-item" href="#">여행코스공유</a></li>
								<li><a class="dropdown-item" href="#">같이가요</a></li>
								<li><a class="dropdown-item" href="#">자유게시판</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="col p-2" style="text-align: left; font-size: 17px;">날씨</div>
				
			</div>
	</div>
</header>

	<div class="box" style="text-align: center; position: relative; top: 30px;">
		<input type="text" placeholder="가고싶은 지역, 여행지를 입력하세요" style="width:315px;" autocomplete="off"  name="kwd" id="AKCKwd"  onkeypress="if(event.keyCode==13){goSearch();return false;}"/>
		<button type="button" class="btn red" style="background: #0dcaf0;">검색</button> 
	</div>

	<!-- // 공통 끝 -->
	<section class="subPage">
		<!-- navigation -->
		<nav class="subNav">
			<ul>
				<li><i class="bi bi-house-fill">Home</i></li>
				<li><a href="#">지역별&middot;여행 리스트</a></li>
			</ul>
		</nav>
		<!-- // navigation -->

		<!-- 2021-04-05 -->
		<!--  광역지자체 사진 --> 
		<section class="governmentPic">
			<h4 class="detailTit">지역별&middot;여행 리스트</h4>
			<!-- // Tab -->
			<!-- boxPic -->
			<div class="boxPic">
				<!-- left -->
				<div class="left">
					<!-- 서울 -->
					<a href="http://archive.visitseoul.net/html/index.jsp" target="_blank" title="서울관광아카이브 [새창]" class="seoul">
						<div class="cell mapgovc0">
								<div class="img">
									<img alt="광역지자체 사진 서울 로고" src="http://tong.visitkorea.or.kr/ktobiz/images/local/govPicSeoul.jpg"/>
								</div>
								<dl>
									<dt>서울특별시</dt>
									<dd>비짓서울</dd>
								</dl>
						</div>
						<span class="line"><img alt="line" src="http://tong.visitkorea.or.kr/ktobiz/images/map/line/seoul.png"/></span>
					</a>
					<!-- // 서울 -->
					<!-- 인천 -->
					<a href="https://itour.incheon.go.kr/tourinfo/gallery/list.do" target="_blank" title="인천투어 [새창]" class="incheon">
						<div class="cell mapgovc1">
								<div class="img">
									<img alt="광역지자체 사진 서울 로고" src="http://tong.visitkorea.or.kr/ktobiz/images/local/govPicIncheon.jpg"/>
								</div>
								<dl>
									<dt>인천광역시</dt>
									<dd>인천투어</dd>
								</dl>
						</div>
						<span class="line"><img alt="line" src="http://tong.visitkorea.or.kr/ktobiz/images/map/line/incheon.png"/></span>
					</a>
					<!-- // 인천 -->
					<!-- 경기 -->
					<a href="https://ggtour.or.kr/info/board_photo.php?tsort=1&msort=160" target="_blank" title="경기관광포털 [새창]" class="gyeonggi">
						<div class="cell mapgovc2">
								<div class="img">
									<img alt="광역지자체 사진 경기 로고" src="http://tong.visitkorea.or.kr/ktobiz/images/local/govPicGyeonggi.jpg"/>
								</div>
								<dl>
									<dt>경기도청</dt>
									<dd>경기관광</dd>
								</dl>
						</div>
						<span class="line"><img alt="line" src="http://tong.visitkorea.or.kr/ktobiz/images/map/line/gyeonggi.png"/></span>
					</a>
					<!-- // 경기 -->
					<!-- 세종 -->
					<a href="https://www.sejong.go.kr/bbs/R2101/list.do" target="_blank" title="세종사진관 [새창]" class="sejong">
						<div class="cell mapgovc16">
								<div class="img">
									<img alt="광역지자체 사진 세종 로고" src="http://tong.visitkorea.or.kr/ktobiz/images/local/govPicSejong.jpg"/>
								</div>
								<dl>
									<dt>세종특별자치시</dt>
									<dd>세종투어</dd>
								</dl>
						</div>
						<span class="line"><img alt="line" src="http://tong.visitkorea.or.kr/ktobiz/images/map/line/sejong.png"/></span>
					</a>
					<!-- // 세종 -->
					<!-- 충남 -->
					<a href="https://tour.chungnam.go.kr/_prog/_board/?code=photo_0304&site_dvs_cd=kr&menu_dvs_cd=0304" target="_blank" title="충남관광허브 [새창]" class="chungnam">
						<div class="cell mapgovc4">
								<div class="img">
									<img alt="광역지자체 사진 충남 로고" src="http://tong.visitkorea.or.kr/ktobiz/images/local/govPicChungnam.jpg"/>
								</div>
								<dl>
									<dt>충청남도</dt>
									<dd>충남문화관광</dd>
								</dl>
						</div>
						<span class="line"><img alt="line" src="http://tong.visitkorea.or.kr/ktobiz/images/map/line/chungnam.png"/></span>
					</a>
					<!-- // 충남 -->
					<!-- 대전 -->
					<a href="http://photo.daejeon.go.kr/kor/index.do" target="_blank" title="대전찰칵! [새창]" class="deajeon">
						<div class="cell mapgovc6">
								<div class="img">
									<img alt="광역지자체 사진 대전 로고" src="http://tong.visitkorea.or.kr/ktobiz/images/local/govPicDeajeon.jpg"/>
								</div>
								<dl>
									<dt>대전광역시</dt>
									<dd>대전관광</dd>
								</dl>
						</div>
						<span class="line"><img alt="line" src="http://tong.visitkorea.or.kr/ktobiz/images/map/line/deajeon.png"/></span>
					</a>
					<!-- // 대전 -->
					<!-- 광주 -->
					<a href="http://tour.gwangju.go.kr/home/image/share/imgList.cs?m=199" target="_blank" title="오매광주 [새창]" class="gwangju">
						<div class="cell mapgovc8">
								<div class="img">
									<img alt="광역지자체 사진 서울 로고" src="http://tong.visitkorea.or.kr/ktobiz/images/local/govPicGwangju.jpg"/>
								</div>
								<dl>
									<dt>광주광역시</dt>
									<dd>오메광주</dd>
								</dl>
						</div>
						<span class="line"><img alt="line" src="http://tong.visitkorea.or.kr/ktobiz/images/map/line/gwangju.png"/></span>
					</a>
					<!-- // 광주 -->
	
					<a href="#" target="_blank" title="[새창]" class="jeonnam">
						<div class="cell mapgovc9">
								<div class="img">
									<img alt="광역지자체 사진 전남 로고" src="http://tong.visitkorea.or.kr/ktobiz/images/local/govPicJeonnam.jpg"/>
								</div>
								<dl>
									<dt>전라남도</dt>
									<dd>남도 여행</dd>
								</dl>
						</div>
						<span class="line"><img alt="line" src="http://tong.visitkorea.or.kr/ktobiz/images/map/line/jeonnam.png"/></span>
					</a>

				</div>
				<!-- // left -->
				<!-- mapgov -->
				<div class="mapgov-image">
					<img src="http://tong.visitkorea.or.kr/ktobiz/images/map/map.png" alt="mapgov" usemap="#mapgovchoice" >
					<a href="#mapgov" id="mapgov0" style="display:none; z-index:26"><img src="http://tong.visitkorea.or.kr/ktobiz/images/map/map0.png" usemap="#mapgovchoice" alt="서울 선택"></a>
					<a href="#mapgov" id="mapgov1" style="display:none; z-index:17"><img src="http://tong.visitkorea.or.kr/ktobiz/images/map/map1.png" usemap="#mapgovchoice" alt="인천 선택"></a>
					<a href="#mapgov" id="mapgov2" style="display:none; z-index:18"><img src="http://tong.visitkorea.or.kr/ktobiz/images/map/map2.png" usemap="#mapgovchoice" alt="경기도 선택"></a>
					<a href="#mapgov" id="mapgov3" style="display:none; z-index:19"><img src="http://tong.visitkorea.or.kr/ktobiz/images/map/map3.png" usemap="#mapgovchoice" alt="강원도 선택"></a>
					<a href="#mapgov" id="mapgov4" style="display:none; z-index:22"><img src="http://tong.visitkorea.or.kr/ktobiz/images/map/map4.png" usemap="#mapgovchoice" alt="충남 선택"></a>
					<a href="#mapgov" id="mapgov5" style="display:none; z-index:16"><img src="http://tong.visitkorea.or.kr/ktobiz/images/map/map5.png" usemap="#mapgovchoice" alt="충북 선택"></a>
					<a href="#mapgov" id="mapgov6" style="display:none; z-index:24"><img src="http://tong.visitkorea.or.kr/ktobiz/images/map/map6.png" usemap="#mapgovchoice" alt="대전 선택"></a>
					<a href="#mapgov" id="mapgov7" style="display:none; z-index:12"><img src="http://tong.visitkorea.or.kr/ktobiz/images/map/map7.png" usemap="#mapgovchoice" alt="전북 선택"></a>
					<a href="#mapgov" id="mapgov8" style="display:none; z-index:20"><img src="http://tong.visitkorea.or.kr/ktobiz/images/map/map8.png" usemap="#mapgovchoice" alt="광주 선택"></a>
					<a href="#mapgov" id="mapgov9" style="display:none; z-index:11"><img src="http://tong.visitkorea.or.kr/ktobiz/images/map/map9.png" usemap="#mapgovchoice" alt="전남 선택"></a>
					<a href="#mapgov" id="mapgov10" style="display:none; z-index:15"><img src="http://tong.visitkorea.or.kr/ktobiz/images/map/map10.png" usemap="#mapgovchoice" alt="경북 선택"></a>
					<a href="#mapgov" id="mapgov11" style="display:none; z-index:23"><img src="http://tong.visitkorea.or.kr/ktobiz/images/map/map11.png" usemap="#mapgovchoice" alt="대구 선택"></a>
					<a href="#mapgov" id="mapgov12" style="display:none; z-index:13"><img src="http://tong.visitkorea.or.kr/ktobiz/images/map/map12.png" usemap="#mapgovchoice" alt="경남 선택"></a>
					<a href="#mapgov" id="mapgov13" style="display:none; z-index:22"><img src="http://tong.visitkorea.or.kr/ktobiz/images/map/map13.png" usemap="#mapgovchoice" alt="울산 선택"></a>
					<a href="#mapgov" id="mapgov14" style="display:none; z-index:21"><img src="http://tong.visitkorea.or.kr/ktobiz/images/map/map14.png" usemap="#mapgovchoice" alt="부산 선택"></a>
					<a href="#mapgov" id="mapgov15" style="display:none; z-index:10"><img src="http://tong.visitkorea.or.kr/ktobiz/images/map/map15.png" usemap="#mapgovchoice" alt="제주 선택"></a>
					<a href="#mapgov" id="mapgov16" style="display:none; z-index:10"><img src="http://tong.visitkorea.or.kr/ktobiz/images/map/map16.png" usemap="#mapgovchoice" alt="세종 선택"></a>
				</div>

				<map name="mapgovchoice" id="mapgovchoice">
					<area shape="poly" class="mapgovc0" target="_blank" href="http://archive.visitseoul.net/html/index.jsp" alt="서울" coords="104,135,133,134,142,155,136,168,101,165,96,143"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc1" target="_blank" href="https://itour.incheon.go.kr/tourinfo/gallery/list.do" alt="인천" coords="81,114,81,131,81,139,94,137,100,161,89,175,77,168,63,171,32,138,38,119,45,114,65,103"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc2" target="_blank" href="https://ggtour.or.kr/info/board_photo.php?tsort=1&msort=160" alt="경기도" coords="125,58,136,78,154,78,172,108,165,117,176,141,192,147,196,157,184,162,191,198,178,207,167,209,146,226,106,227,99,222,87,221,74,211,81,196,75,190,86,178,100,160,113,167,135,165,142,153,132,133,108,136,98,144,92,139,81,140,77,134,80,116,82,112,86,112,90,93,99,90,96,71"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc3" target="_blank" href="https://www.gangwon.to/gwtour/sightseeing_guide/contest" alt="강원도" coords="142,47,124,58,137,77,155,78,172,108,170,108,164,121,176,143,191,146,195,157,182,163,189,196,207,201,221,191,236,209,266,212,273,203,308,205,326,175,305,150,284,85,265,57,247,24,235,13,226,0,220,9,207,8,192,19,182,37,148,50"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc4" target="_blank" href="https://tour.chungnam.go.kr/_prog/_board/?code=photo_0304&site_dvs_cd=kr&menu_dvs_cd=0304" alt="충청남도" coords="27,259,50,215,76,212,111,229,147,224,153,254,145,263,137,245,104,249,97,261,121,270,119,280,125,298,142,307,145,314,174,325,171,346,159,346,149,333,135,329,129,340,122,325,110,320,97,341,67,330,76,319,68,304,53,308"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc5" target="_blank" href="https://tour.chungbuk.go.kr/www/contents.do?key=75" alt="충청북도" coords="152,277,144,262,153,253,145,225,166,208,180,207,189,196,205,201,219,189,236,210,268,210,249,236,226,235,228,252,201,253,195,267,202,279,193,293,197,304,192,298,216,307,212,329,196,340,172,334,174,327,141,312,141,298,161,297,159,281"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc6" target="_blank" href="http://photo.daejeon.go.kr/kor/index.do" alt="대전" coords="123,280,144,265,163,281,162,300,141,294,137,304,125,300,122,290"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc7" target="_blank" href="http://tour.jb.go.kr/board/list.do?skinId=SKIN_0000009&boardId=BBS_0000009&searchType=TMP_FIELD1&keyword=2020&menuCd=DOM_000000104007003000&contentsSid=60" alt="전라북도" coords="197,341,177,334,171,346,156,346,152,336,139,331,127,340,126,333,123,330,123,326,116,320,103,333,99,337,96,341,82,335,70,331,69,353,77,359,71,369,72,378,63,382,56,407,53,423,64,421,79,423,101,406,101,408,137,429,171,427,177,421,177,416,179,396,176,373,201,356"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc8" target="_blank" href="http://tour.gwangju.go.kr/home/image/share/imgList.cs?m=199" alt="광주" coords="115,462,127,445,113,432,107,431,94,431,86,437,81,447,88,458,95,457"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc9"  href="#none" alt="전라남도" coords="17,465,26,445,40,443,58,422,78,423,103,405,116,418,137,427,170,426,188,461,184,480,200,502,198,511,186,523,177,516,167,524,175,540,159,548,150,542,135,549,134,551,128,559,116,562,114,561,108,562,82,562,68,549,48,552,44,566,17,577,4,560,20,522,6,509,22,488,28,479,17,467"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc10" target="_blank" href="http://tour.gb.go.kr/guide/photo.do" alt="Gyeongsangbuk-do" coords="344,386,332,378,322,385,312,373,302,394,286,387,272,393,265,386,269,369,276,349,275,344,263,336,244,352,238,350,231,386,221,386,199,360,197,338,212,328,213,307,192,300,190,291,200,285,201,275,195,268,203,254,227,250,226,235,250,236,272,201,281,204,309,204,315,197,326,176,341,242,332,275,333,333,353,318"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc11" target="_blank" href="http://info.daegu.go.kr/newshome/mtnmain.php?mtnkey=scatelist&mkey=5" alt="대구" coords="230,384,235,377,235,363,238,349,246,351,262,339,264,338,275,346,269,376,265,380,265,389"  onfocus="this.blur()"/>
					<area shape="poly" class="mapgovc12"  href="#none" alt="경상남도" coords="286,482,282,469,256,466,253,460,265,448,266,445,271,447,280,443,280,444,317,419,296,405,299,403,300,392,287,389,263,389,244,386,235,384,222,384,213,374,195,356,174,374,179,389,176,404,176,416,170,429,184,451,188,463,184,481,202,506,209,512,230,509,236,497,257,502,265,502,267,491"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc13" target="_blank" href="https://tour.ulsan.go.kr/kor/bbs/list.ulsan?bbsId=BBS_0000000000000006&mId=001004008000000000" alt="울산" coords="301,391,312,373,322,384,332,379,343,383,339,406,336,412,330,428,311,414,298,406"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc14" target="_blank" href="https://www.visitbusan.net/kr/index.do?menuCd=DOM_000000204009000000" alt="부산" coords="318,457,331,428,318,418,291,435,286,442,278,445,275,442,261,453,252,461,255,466,281,470"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc15" target="_blank" href="http://photo.visitjeju.net/?lang=ko" alt="제주" coords="116,612,97,588,71,602,42,608,29,629,45,652,80,652,112,635"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc16" target="_blank" href="https://www.sejong.go.kr/bbs/R2101/list.do" alt="세종" coords="146,263,135,245,105,248,98,262,119,269,118,278,120,286,130,272"  onfocus="this.blur()" />
				</map>
				<!-- // mapgov -->
				<!-- right -->
				<div class="right">
					<!-- 강원 -->
					<a href="https://www.gangwon.to/gwtour/sightseeing_guide/contest" target="_blank" title="강원관광 [새창]" class="gangwon">
						<div class="cell mapgovc3">
								<div class="img">
									<img alt="광역지자체 사진 서울 로고" src="http://tong.visitkorea.or.kr/ktobiz/images/local/govPicGangwon.jpg"/>
								</div>
								<dl>
									<dt>강원도</dt>
									<dd>강원관광</dd>
								</dl>
						</div>
						<span class="line"><img alt="line" src="http://tong.visitkorea.or.kr/ktobiz/images/map/line/gangwon.png"/></span>
					</a>
					<!-- // 강원 -->
					<!-- 충북 -->
					<a href="https://tour.chungbuk.go.kr/www/contents.do?key=75" target="_blank" title="충북나드리 [새창]" class="chungbuk">
						<div class="cell mapgovc5">
								<div class="img">
									<img alt="광역지자체 사진 충북 로고" src="http://tong.visitkorea.or.kr/ktobiz/images/local/govPicChungbuk.jpg"/>
								</div>
								<dl>
									<dt>충청북도</dt>
									<dd>충북나드리</dd>
								</dl>
						</div>
						<span class="line"><img alt="line" src="http://tong.visitkorea.or.kr/ktobiz/images/map/line/chungbuk.png"/></span>
					</a>
					<!-- // 충북 -->
					<!-- 경북 -->
					<a href="http://tour.gb.go.kr/guide/photo.do" target="_blank" title="경북나드리 [새창]" class="gyeongbuk">
						<div class="cell mapgovc10">
								<div class="img">
									<img alt="광역지자체 사진 경북 로고" src="http://tong.visitkorea.or.kr/ktobiz/images/local/govPicGyeongbuk.jpg"/>
								</div>
								<dl>
									<dt>경상북도</dt>
									<dd>경북나드리</dd>
								</dl>
						</div>
						<span class="line"><img alt="line" src="http://tong.visitkorea.or.kr/ktobiz/images/map/line/gyeongbuk.png"/></span>
					</a>
					<!-- // 경북 -->
					<!-- 대구 -->
					<a href="http://info.daegu.go.kr/newshome/mtnmain.php?mtnkey=scatelist&mkey=5" target="_blank" title="컬러풀사진 [새창]" class="deagu">
						<div class="cell mapgovc11">
								<div class="img">
									<img alt="광역지자체 사진 경북 로고" src="http://tong.visitkorea.or.kr/ktobiz/images/local/govPicDeagu.jpg"/>
								</div>
								<dl>
									<dt>대구광역시</dt>
									<dd>컬러풀 대구</dd>
								</dl>
						</div>
						<span class="line"><img alt="line" src="http://tong.visitkorea.or.kr/ktobiz/images/map/line/deagu.png"/></span>
					</a>
					<!-- // 대구 -->
					<!-- 울산 -->
					<a href="https://tour.ulsan.go.kr/kor/bbs/list.ulsan?bbsId=BBS_0000000000000006&mId=001004008000000000" target="_blank" title="울산관광 [새창]" class="ulsan">
						<div class="cell mapgovc13">
								<div class="img">
									<img alt="광역지자체 사진 서울 로고" src="http://tong.visitkorea.or.kr/ktobiz/images/local/govPicUlsan.jpg"/>
								</div>
								<dl>
									<dt>울산광역시</dt>

									<dd>울산관광</dd>
								</dl>
						</div>
						<span class="line"><img alt="line" src="http://tong.visitkorea.or.kr/ktobiz/images/map/line/ulsan.png"/></span>
					</a>
					<!-- // 울산 -->
					<!-- 부산 -->
					<a href="https://www.visitbusan.net/kr/index.do?menuCd=DOM_000000204009000000" target="_blank" title="비짓부산 [새창]" class="busan">
						<div class="cell mapgovc14">
								<div class="img">
									<img alt="광역지자체 사진 부산 로고" src="http://tong.visitkorea.or.kr/ktobiz/images/local/govPicBusan.jpg"/>
								</div>
								<dl>
									<dt>부산광역시</dt>
									<dd>비짓부산</dd>
								</dl>
						</div>
						<span class="line"><img alt="line" src="http://tong.visitkorea.or.kr/ktobiz/images/map/line/busan.png"/></span>
					</a>
					<!-- // 부산 -->
					<a href="#" title="[새창]" class="gyeongnam">
						<div class="cell mapgovc12">
								<div class="img">
									<img alt="광역지자체 사진 경남 로고" src="http://tong.visitkorea.or.kr/ktobiz/images/local/govPicGyeongnam.jpg"/>
								</div>
								<dl>
									<dt>경상남도</dt>
									<dd>경남관광</dd>
								</dl>
						</div>
						<span class="line"><img alt="line" src="http://tong.visitkorea.or.kr/ktobiz/images/map/line/gyeongnam.png"/></span>
					</a-->
					 <!--// 경남 -->
					<!-- 전북 -->
					<a href="http://tour.jb.go.kr/board/list.do?skinId=SKIN_0000009&boardId=BBS_0000009&searchType=TMP_FIELD1&keyword=2020&menuCd=DOM_000000104007003000&contentsSid=60" target="_blank" title="전라북도토탈관광 [새창]" class="jeonbuk">
						<div class="cell mapgovc7">
								<div class="img">
									<img alt="광역지자체 사진 전북 로고" src="http://tong.visitkorea.or.kr/ktobiz/images/local/govPicJeonbuk.jpg"/>
								</div>
								<dl>
									<dt>전라북도</dt>
									<dd>전라북도관광</dd>
								</dl>
						</div>
						<span class="line"><img alt="line" src="http://tong.visitkorea.or.kr/ktobiz/images/map/line/jeonbuk.png"/></span>
					</a>
					<!-- // 전북 -->
					<!-- 제주 -->
					<a href="http://photo.visitjeju.net/?lang=ko" target="_blank" title="PHOTO JEJU [새창]" class="jeju">
						<div class="cell mapgovc15">
								<div class="img">
									<img alt="광역지자체 사진 제주 로고" src="http://tong.visitkorea.or.kr/ktobiz/images/local/govPicJeju.jpg"/>
								</div>
								<dl>
									<dt>제주특별자치도</dt>
									<dd>VISIT JEJU</dd>
								</dl>
						</div>
						<span class="line"><img alt="line" src="http://tong.visitkorea.or.kr/ktobiz/images/map/line/jeju.png"/></span>
					</a>
					<!-- // 제주 -->
				</div>
				<!-- // right -->
			</div>
			<!-- // boxPic -->
		</section>
		<!-- 광역지자체 사진 -->
	</section>
	<!-- // 컨텐츠 내용 -->
	<hr>
	
	<div class="page-wrapper" style="position:relative;">
      <!--page slider -->
      <div class="post-slider">
        <h1 class="silder-title">서울의 관광지</h1>
        <span class="prev"> <i class="bi bi-chevron-left"></i>  </span>
        <span class="next"> <i class="bi bi-chevron-right"></i>  </span>
        <div class="post-wrapper">
          <div class="post">
            <img src="img/4.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#" class="post-subject"> 남산 </a></h4>
              <i class="far fa-user" style="height:10%;">둘러보기</i>
            </div>
          </div>
          <div class="post">
            <img src="img/5.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#"> 경복궁 </a></h4>
              <i class="far fa-user" style="height:10%;">둘러보기</i>
            </div>
          </div>
          <div class="post">
            <img src="img/6.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#"> 청와대 </a></h4>
              <i class="far fa-user" style="height:10%;">둘러보기</i>
            </div>
          </div>
          <div class="post">
            <img src="img/7.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#"> 홍대 </a></h4>
              <i class="far fa-user" style="height:10%;">둘러보기</i>
            </div>
          </div>
        </div>
      </div>
      <!--post slider-->
    </div>
    
    <div class="page-wrapper" style="position:relative;">
      <!--page slider -->
      <div class="post-slider">
        <h1 class="silder-title">서울의 축제</h1>
        <span class="prev1"> <i class="bi bi-chevron-left"></i>  </span>
        <span class="next1"> <i class="bi bi-chevron-right"></i>  </span>
        <div class="post-wrapper1">
          <div class="post">
            <img src="img/4.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#" class="post-subject"> 남산 축제 </a></h4>
              <i class="far fa-user" style="height:10%;">둘러보기</i>
            </div>
          </div>
          <div class="post">
            <img src="img/5.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#"> 경복궁 축제 </a></h4>
              <i class="far fa-user" style="height:10%;">둘러보기</i>
            </div>
          </div>
          <div class="post">
            <img src="img/6.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#"> 청와대 축제 </a></h4>
              <i class="far fa-user" style="height:10%;">둘러보기</i>
            </div>
          </div>
          <div class="post">
            <img src="img/7.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#"> 홍대의 축제 </a></h4>
              <i class="far fa-user" style="height:10%;">둘러보기</i>
            </div>
          </div>
        </div>
      </div>
      <!--post slider-->
    </div>
    
    <div class="page-wrapper" style="position:relative;">
      <!--page slider -->
      <div class="post-slider">
        <h1 class="silder-title">서울의 이벤트</h1>
        <span class="prev2"> <i class="bi bi-chevron-left"></i>  </span>
        <span class="next2"> <i class="bi bi-chevron-right"></i>  </span>
        <div class="post-wrapper2">
          <div class="post">
            <img src="img/4.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#" class="post-subject"> 남산의 이벤트! </a></h4>
              <i class="far fa-user" style="height:10%;">둘러보기</i>
            </div>
          </div>
          <div class="post">
            <img src="img/5.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#"> 경복궁의 이벤트!  </a></h4>
              <i class="far fa-user" style="height:10%;">둘러보기</i>
            </div>
          </div>
          <div class="post">
            <img src="img/6.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#"> 청와대의 이벤트! </a></h4>
              <i class="far fa-user" style="height:10%;">둘러보기</i>
            </div>
          </div>
          <div class="post">
            <img src="img/7.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#"> 홍대의 이벤트! </a></h4>
              <i class="far fa-user" style="height:10%;">둘러보기</i>
            </div>
          </div>
        </div>
      </div>
      <!--post slider-->
    </div>
	
    <!-- Footer 하단공통-->
	<footer>
		<section class="Footer">
			<h2 class="hidden">Footer</h2>

	<div class="wrap">
		<span class="logo"><img src="/kor/tt/pr_gallery/new_photo_gallery/images/common/footerLogo.png" alt="한국관광공사" /></span>
		<div class="mid">
			<ul class="list">
				<li><button type="button" class="privacy">회원약관</button></li><!-- 2021-09-29 -->
				<li><button type="button" class="agree">개인정보 처리방침</button></li><!-- 2021-09-29 -->
				<li><a target="_blank" href="http://kto.visitkorea.or.kr/kor/customer/charter/charter.kto">고객서비스 헌장</a></li>
				<li><a target="_blank" href="http://kto.visitkorea.or.kr/kor/helpDesk/policy/emailRejection.kto">전자우편 무단수집거부</a></li>
			</ul>
			<p>우) 26464 강원도 원주시 세계로 10 한국관광공사  /   TEL) 033-738-3363</p>
			<p>사업자등록번호 : 202-81-50707   /   통신판매업신고 : 제2009-서울중구-1234호</p>
		</div>

		<p class="last">Copyright ⓒ KOREA TOURISM ORGANIZATION. All Right Reserved</p>
	</div>


		</section>
	</footer>
	<!-- //Footer -->
	
	<!-- Quick 하단공통-->
	<div style="width:1200px; margin:0 auto;">
			<section class="quick">
				<h2 class="hidden">quick</h2>
			
			</section>
	</div>

<script type="text/javascript">
$.noConflict();
</script>

<script type="text/javascript">
$('.post-wrapper').slick({
  slidesToShow: 3,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 2000,
  nextArrow:$('.next'),
  prevArrow:$('.prev'),
});

$('.post-wrapper1').slick({
	  slidesToShow: 3,
	  slidesToScroll: 1,
	  autoplay: true,
	  autoplaySpeed: 2000,
	  nextArrow:$('.next1'),
	  prevArrow:$('.prev1'),
});
$('.post-wrapper2').slick({
	  slidesToShow: 3,
	  slidesToScroll: 1,
	  autoplay: true,
	  autoplaySpeed: 2000,
	  nextArrow:$('.next2'),
	  prevArrow:$('.prev2'),
});

</script>


</body>
</html>