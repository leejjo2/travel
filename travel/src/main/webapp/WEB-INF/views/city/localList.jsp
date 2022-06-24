<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/city/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/city/slick/slick-theme.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/city/css/common.css" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="https://korean1.visitkorea.or.kr/kor/tt/pr_gallery/new_photo_gallery/css/common.css" media="all" />

<script type="text/javascript" src="${pageContext.request.contextPath}/dist/city/slick/slick.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/dist/city/slick/slick.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/dist/city/js/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/dist/city/slick/slick.js"></script>
<script src="https://korean1.visitkorea.or.kr/kor/tt/pr_gallery/new_photo_gallery/js/jquery-3.5.1.min.js"></script>

<script>
$(document).ready(function() {

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
});
</script>

<script type="text/javascript">
function ajaxFun(url, method, query, dataType, fn) {
	$.ajax({
		type:method,
		url:url,
		data:query,
		dataType:dataType,
		success:function(data){
			fn(data);
		},
		error:function(e) {
			console.log(e.responseText);
		}
	});
}


$(function(){
	
	sendRegion('1', '서울');
});

function sendRegion(areaCode, city){
	$(".title-tour").html(city + " 지역의 추천 관광지");
	$(".title-festival").html(city + " 지역의 축제");
	$(".title-hotel").html(city + " 지역의 숙소");
	
	searchStay(areaCode); // 숙소
	searchFestival(areaCode); // 축제
	areaBasedList(areaCode); // 지역 기반 리스트
	
}

// 지역 기반 리스트 ----
function areaBasedList(areaCode) {
	let MobileOS = "ETC";
	let MobileApp = "AppTest";
	let arrange = "P";
	let numOfRows = 10;
	let pageNo = 1;
	let contentTypeId = 12;
	
	var url="http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList";
	var query = "ServiceKey=t5hhTD%2BtI3ygSFurlzc0GxMGmmEeDIp9pXphHT%2FXuq5Aw3bFiwsxFMuUs5FokAIKDn7kdbP2otYXVKdmbUuBlg%3D%3D";
	query += "&pageNo="+pageNo;
	query += "&numOfRows="+numOfRows;
	query += "&MobileOS="+MobileOS;
	query += "&MobileApp="+MobileApp;
	query += "&arrange="+arrange;
	query += "&contentTypeId="+contentTypeId;
	query += "&areaCode="+areaCode;
		
	var fn = function(data) {
		printAreaBasedList(data);
	};
	
	ajaxFun(url, "get", query, "xml", fn);
}

function printAreaBasedList(data) {
	
	console.log(data);
	if($('.list-tour').html().trim()) {
		$('.list-tour').empty();
		$('.list-tour').slick("unslick");
	}
	
	var out = "";
	
	var noImg = "${pageContext.request.contextPath}/resources/images/noimage.png";
	var dataCount = $(data).find("totalCount").text();
	$(data).find("item").each(function() {
		var item = $(this);
		var title = item.find("title").text();
		var img = item.find("firstimage").text();
		var contentId = item.find("contentid").text();
		if(! img) {
			img = noImg;
		}
		
		out += "<div class='post'>";
		out += "    <img src='"+img+"' class='slider-image'>";
		out += "    <div class='post-info'>";
		out += "        <h4><a href='#' class='post-subject1' data-contentId='"+contentId+"'> " + title + "</a></h4>";
		out += "        <i class='far fa-hand-point-right' style='height:10%;'> 둘러보기</i>";
		out += "    </div>";
		out += "</div>";
	});
	
	$(".list-tour").html(out);
	
	$('.list-tour').slick({
		  slidesToShow: 3,
		  slidesToScroll: 1,
		  autoplay: true,
		  autoplaySpeed: 2000,
		  nextArrow:$('.next'),
		  prevArrow:$('.prev'),
		});
}

// 축제(festival)
function searchFestival(areaCode) {
	let MobileOS = "ETC";
	let MobileApp = "AppTest";
	let arrange = "P";
	let eventStartDate = "20220101";
	let numOfRows = 10;
	let pageNo = 1;
	
	var url="http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival";
	var query = "ServiceKey=t5hhTD%2BtI3ygSFurlzc0GxMGmmEeDIp9pXphHT%2FXuq5Aw3bFiwsxFMuUs5FokAIKDn7kdbP2otYXVKdmbUuBlg%3D%3D";
	query += "&pageNo="+pageNo;
	query += "&numOfRows="+numOfRows;
	query += "&MobileOS="+MobileOS;
	query += "&MobileApp="+MobileApp;
	query += "&arrange="+arrange;
	query += "&eventStartDate="+eventStartDate;
	query += "&areaCode="+areaCode;
	
		
	var fn = function(data) {
		printsearchFestival(data);
	};
	
	ajaxFun(url, "get", query, "xml", fn);
}

function printsearchFestival(data) {
	
	console.log(data);
	if($('.list-festival').html().trim()) {
		$('.list-festival').empty();
		$('.list-festival').slick("unslick");
	}
	
	var out = "";
	
	var noImg = "${pageContext.request.contextPath}/resources/images/noimage.png";
	var dataCount = $(data).find("totalCount").text();
	$(data).find("item").each(function() {
		var item = $(this);
		var title = item.find("title").text();
		var img = item.find("firstimage").text();
		var contentId = item.find("contentid").text();
		if(! img) {
			img = noImg;
		}
		
		out += "<div class='post'>";
		out += "    <img src='"+img+"' class='slider-image'>";
		out += "    <div class='post-info'>";
		out += "        <h4><a href='#' class='post-subject2' data-contentId='"+contentId+"'> " + title + "</a></h4>";
		out += "        <i class='far fa-hand-point-right' style='height:10%;'> 둘러보기</i>";
		out += "    </div>";
		out += "</div>";
	});
	
	$(".list-festival").html(out);
	
	$('.list-festival').slick({
		  slidesToShow: 3,
		  slidesToScroll: 1,
		  autoplay: true,
		  autoplaySpeed: 2000,
		  nextArrow:$('.next1'),
		  prevArrow:$('.prev1'),
		});
}

// 숙소
function searchStay(areaCode) {
	let MobileOS = "ETC";
	let MobileApp = "AppTest";
	let arrange = "P";
	let numOfRows = 10;
	let pageNo = 1;
	
	var url="http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchStay";
	var query = "ServiceKey=t5hhTD%2BtI3ygSFurlzc0GxMGmmEeDIp9pXphHT%2FXuq5Aw3bFiwsxFMuUs5FokAIKDn7kdbP2otYXVKdmbUuBlg%3D%3D";
	query += "&pageNo="+pageNo;
	query += "&numOfRows="+numOfRows;
	query += "&MobileOS="+MobileOS;
	query += "&MobileApp="+MobileApp;
	query += "&arrange="+arrange;
	query += "&areaCode="+areaCode;
	
		
	var fn = function(data) {
		printsearchStay(data);
	};
	
	ajaxFun(url, "get", query, "xml", fn);
}

function printsearchStay(data) {
	
	console.log(data);
	if($('.list-hotel').html().trim()) {
		$('.list-hotel').empty();
		$('.list-hotel').slick("unslick");
	}
	
	var out = "";
	
	var noImg = "${pageContext.request.contextPath}/resources/images/noimage.png";
	var dataCount = $(data).find("totalCount").text();
	$(data).find("item").each(function() {
		var item = $(this);
		var title = item.find("title").text();
		var img = item.find("firstimage").text();
		var contentId = item.find("contentid").text();
		if(! img) {
			img = noImg;
		}
		
		out += "<div class='post'>";
		out += "    <img src='"+img+"' class='slider-image'>";
		out += "    <div class='post-info'>";
		out += "        <h4><a href='#' class='post-subject3' data-contentId='"+contentId+"'> " + title + "</a></h4>";
		out += "        <i class='far fa-hand-point-right' style='height:10%;'> 둘러보기</i>";
		out += "    </div>";
		out += "</div>";
	});
	
	$(".list-hotel").html(out);
	
	$('.list-hotel').slick({
		  slidesToShow: 3,
		  slidesToScroll: 1,
		  autoplay: true,
		  autoplaySpeed: 2000,
		  nextArrow:$('.next2'),
		  prevArrow:$('.prev2'),
		});
}

$(document).ready(function() {
	$(document).on("click", ".post-subject1", function() {
		var contentId = $(this).attr("data-contentId");
		location.href="${pageContext.request.contextPath}/city/localDetail?contentId="+contentId+"&contentTypeId=12";
    });
});
	
$(document).ready(function() {
	$(document).on("click", ".post-subject2", function() {
		var contentId = $(this).attr("data-contentId");
		location.href="${pageContext.request.contextPath}/festival/fesDetail?contentId="+contentId+"&contentTypeId=15";
	});
});

$(document).ready(function() {
	$(document).on("click", ".post-subject3", function() {
		var contentId = $(this).attr("data-contentId");
		location.href="${pageContext.request.contextPath}/city/localDetail?contentId="+contentId+"&contentTypeId=32";
	});
});
</script>

<script type="text/javascript">
$.noConflict();
</script>

	<!-- // 공통 끝 -->
	<section class="subPage">
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
					<a href="#" onclick="sendRegion('1', '서울');" class="seoul">
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
					<a href="#" onclick="sendRegion('2', '인천');" class="incheon">
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
					<a href="#" onclick="sendRegion('31', '경기');" class="gyeonggi">
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
					<a href="#" onclick="sendRegion('8', '세종');" class="sejong">
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
					<a href="#" onclick="sendRegion('34', '충남');" class="chungnam">
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
					<a href="#" onclick="sendRegion('3', '대전');" class="deajeon">
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
					<a href="#" onclick="sendRegion('5', '광주');" class="gwangju">
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
	
					<a href="#" onclick="sendRegion('38', '전남');" class="jeonnam">
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
					<area shape="poly" class="mapgovc0"  href="#" onclick="sendRegion('1', '서울');" alt="서울" coords="104,135,133,134,142,155,136,168,101,165,96,143"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc1"  href="#" onclick="sendRegion('2', '인천');" alt="인천" coords="81,114,81,131,81,139,94,137,100,161,89,175,77,168,63,171,32,138,38,119,45,114,65,103"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc2"  href="#" onclick="sendRegion('31', '경기');" alt="경기도" coords="125,58,136,78,154,78,172,108,165,117,176,141,192,147,196,157,184,162,191,198,178,207,167,209,146,226,106,227,99,222,87,221,74,211,81,196,75,190,86,178,100,160,113,167,135,165,142,153,132,133,108,136,98,144,92,139,81,140,77,134,80,116,82,112,86,112,90,93,99,90,96,71"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc3"  href="#" onclick="sendRegion('32', '강원');" alt="강원도" coords="142,47,124,58,137,77,155,78,172,108,170,108,164,121,176,143,191,146,195,157,182,163,189,196,207,201,221,191,236,209,266,212,273,203,308,205,326,175,305,150,284,85,265,57,247,24,235,13,226,0,220,9,207,8,192,19,182,37,148,50"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc4"  href="#" onclick="sendRegion('34', '충남');" alt="충청남도" coords="27,259,50,215,76,212,111,229,147,224,153,254,145,263,137,245,104,249,97,261,121,270,119,280,125,298,142,307,145,314,174,325,171,346,159,346,149,333,135,329,129,340,122,325,110,320,97,341,67,330,76,319,68,304,53,308"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc5"  href="#" onclick="sendRegion('33', '충북');" alt="충청북도" coords="152,277,144,262,153,253,145,225,166,208,180,207,189,196,205,201,219,189,236,210,268,210,249,236,226,235,228,252,201,253,195,267,202,279,193,293,197,304,192,298,216,307,212,329,196,340,172,334,174,327,141,312,141,298,161,297,159,281"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc6"  href="#" onclick="sendRegion('3', '대전');" alt="대전" coords="123,280,144,265,163,281,162,300,141,294,137,304,125,300,122,290"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc7"  href="#" onclick="sendRegion('37', '전북');" alt="전라북도" coords="197,341,177,334,171,346,156,346,152,336,139,331,127,340,126,333,123,330,123,326,116,320,103,333,99,337,96,341,82,335,70,331,69,353,77,359,71,369,72,378,63,382,56,407,53,423,64,421,79,423,101,406,101,408,137,429,171,427,177,421,177,416,179,396,176,373,201,356"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc8"  href="#" onclick="sendRegion('5', '광주');" alt="광주" coords="115,462,127,445,113,432,107,431,94,431,86,437,81,447,88,458,95,457"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc9"  href="#" onclick="sendRegion('38', '전남');" coords="17,465,26,445,40,443,58,422,78,423,103,405,116,418,137,427,170,426,188,461,184,480,200,502,198,511,186,523,177,516,167,524,175,540,159,548,150,542,135,549,134,551,128,559,116,562,114,561,108,562,82,562,68,549,48,552,44,566,17,577,4,560,20,522,6,509,22,488,28,479,17,467"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc10" href="#" onclick="sendRegion('35', '경북');" alt="Gyeongsangbuk-do" coords="344,386,332,378,322,385,312,373,302,394,286,387,272,393,265,386,269,369,276,349,275,344,263,336,244,352,238,350,231,386,221,386,199,360,197,338,212,328,213,307,192,300,190,291,200,285,201,275,195,268,203,254,227,250,226,235,250,236,272,201,281,204,309,204,315,197,326,176,341,242,332,275,333,333,353,318"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc11" href="#" onclick="sendRegion('4', '대구');" alt="대구" coords="230,384,235,377,235,363,238,349,246,351,262,339,264,338,275,346,269,376,265,380,265,389"  onfocus="this.blur()"/>
					<area shape="poly" class="mapgovc12" href="#" onclick="sendRegion('36', '경남');" alt="경상남도" coords="286,482,282,469,256,466,253,460,265,448,266,445,271,447,280,443,280,444,317,419,296,405,299,403,300,392,287,389,263,389,244,386,235,384,222,384,213,374,195,356,174,374,179,389,176,404,176,416,170,429,184,451,188,463,184,481,202,506,209,512,230,509,236,497,257,502,265,502,267,491"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc13" href="#" onclick="sendRegion('7', '울산');" alt="울산" coords="301,391,312,373,322,384,332,379,343,383,339,406,336,412,330,428,311,414,298,406"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc14" href="#" onclick="sendRegion('6', '부산');" alt="부산" coords="318,457,331,428,318,418,291,435,286,442,278,445,275,442,261,453,252,461,255,466,281,470"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc15" href="#" onclick="sendRegion('39', '제주');" alt="제주" coords="116,612,97,588,71,602,42,608,29,629,45,652,80,652,112,635"  onfocus="this.blur()" />
					<area shape="poly" class="mapgovc16" href="#" onclick="sendRegion('8', '세종');" alt="세종" coords="146,263,135,245,105,248,98,262,119,269,118,278,120,286,130,272"  onfocus="this.blur()" />
				</map>
				
				<!-- right -->
				<div class="right">
					<!-- 강원 -->
					<a href="#" onclick="sendRegion('32', '강원');" class="gangwon">
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
					<a href="#" onclick="sendRegion('33', '충북');" class="chungbuk">
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
					<a href="#" onclick="sendRegion('35', '경북');" class="gyeongbuk">
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
					<a href="#" onclick="sendRegion('4', '대구');" class="deagu">
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
					<a href="#" onclick="sendRegion('7', '울산');" class="ulsan">
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
					<a href="#" onclick="sendRegion('6', '부산');" class="busan">
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
					<a href="#" onclick="sendRegion('36', '경남');" class="gyeongnam">
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
					</a>
					 <!--// 경남 -->
					<!-- 전북 -->
					<a href="#" onclick="sendRegion('37', '전북');" class="jeonbuk">
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
					<a href="#" onclick="sendRegion('39', '제주');" class="jeju">
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
			</div>
		</section>
	</section>
	
	<div class="page-wrapper" style="position:relative;">
      <!--page slider -->
      <div class="post-slider">
        <h1 class="silder-title title-tour">이 지역의 추천 관광지</h1>
        <span class="prev"> <i class="bi bi-chevron-left"></i>  </span>
        <span class="next"> <i class="bi bi-chevron-right"></i>  </span>
        <div class="post-wrapper list-tour "></div>
      </div>
      <!--post slider-->
    </div>
    
    <div class="page-wrapper" style="position:relative;">
      <!--page slider -->
      <div class="post-slider">
        <h1 class="silder-title title-festival">이 지역의 축제</h1>
        <span class="prev1"> <i class="bi bi-chevron-left"></i>  </span>
        <span class="next1"> <i class="bi bi-chevron-right"></i>  </span>
        <div class="post-wrapper1 list-festival "></div>
      </div>
      <!--post slider-->
    </div>
    
    <div class="page-wrapper" style="position:relative;">
      <!--page slider -->
      <div class="post-slider">
        <h1 class="silder-title title-hotel">이 지역의 숙소</h1>
        <span class="prev2"> <i class="bi bi-chevron-left"></i>  </span>
        <span class="next2"> <i class="bi bi-chevron-right"></i>  </span>
        <div class="post-wrapper2 list-hotel"> </div>
      </div>
      <!--post slider-->
    </div>