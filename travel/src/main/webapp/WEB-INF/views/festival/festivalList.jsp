<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>spring</title>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/css/swiper.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/css/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/css/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/css/content.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/css/switch_main_mo.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/core.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/dist/bootstrap5/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/css/ttalk-import.css">


<style type="text/css">
.carousel {
	margin-bottom: 0;
	padding: 0 40px 30px 40px;
}

.carousel-control {
	left: -12px;
}
.carousel-control.right {
	right: -12px;
}

.carousel-indicators {
	right: 50%;
	top: auto;
	bottom: 0px;
	margin-right: -19px;
}

.carousel-indicators li {
	background: #c0c0c0;
}

.carousel-indicators .active {
background: #333333;
}

</style>
<script type="text/javascript">
$(function() {
	$('#myCarousel').carousel({
		interval: 10000
		})
});
</script>
</head>
<body>
	<main>

	<div class="container">

		<div class="span8">

			<h1>Bootstrap Thumbnail Slider</h1>

			<div class="well">

				<div id="myCarousel" class="carousel slide">

					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>

					<!-- Carousel items -->
					<div class="carousel-inner">

						<div class="item active">
							<div class="row-fluid">
								<div class="span3">
									<a href="#x" class="thumbnail"><img
										src="http://placehold.it/250x250" alt="Image"
										style="max-width: 100%;" /></a>
								</div>
								<div class="span3">
									<a href="#x" class="thumbnail"><img
										src="http://placehold.it/250x250" alt="Image"
										style="max-width: 100%;" /></a>
								</div>
								<div class="span3">
									<a href="#x" class="thumbnail"><img
										src="http://placehold.it/250x250" alt="Image"
										style="max-width: 100%;" /></a>
								</div>
								<div class="span3">
									<a href="#x" class="thumbnail"><img
										src="http://placehold.it/250x250" alt="Image"
										style="max-width: 100%;" /></a>
								</div>
							</div>
							<!--/row-fluid-->
						</div>
						<!--/item-->

						<div class="item">
							<div class="row-fluid">
								<div class="span3">
									<a href="#x" class="thumbnail"><img
										src="http://placehold.it/250x250" alt="Image"
										style="max-width: 100%;" /></a>
								</div>
								<div class="span3">
									<a href="#x" class="thumbnail"><img
										src="http://placehold.it/250x250" alt="Image"
										style="max-width: 100%;" /></a>
								</div>
								<div class="span3">
									<a href="#x" class="thumbnail"><img
										src="http://placehold.it/250x250" alt="Image"
										style="max-width: 100%;" /></a>
								</div>
								<div class="span3">
									<a href="#x" class="thumbnail"><img
										src="http://placehold.it/250x250" alt="Image"
										style="max-width: 100%;" /></a>
								</div>
							</div>
							<!--/row-fluid-->
						</div>
						<!--/item-->

						<div class="item">
							<div class="row-fluid">
								<div class="span3">
									<a href="#x" class="thumbnail"><img
										src="http://placehold.it/250x250" alt="Image"
										style="max-width: 100%;" /></a>
								</div>
								<div class="span3">
									<a href="#x" class="thumbnail"><img
										src="http://placehold.it/250x250" alt="Image"
										style="max-width: 100%;" /></a>
								</div>
								<div class="span3">
									<a href="#x" class="thumbnail"><img
										src="http://placehold.it/250x250" alt="Image"
										style="max-width: 100%;" /></a>
								</div>
								<div class="span3">
									<a href="#x" class="thumbnail"><img
										src="http://placehold.it/250x250" alt="Image"
										style="max-width: 100%;" /></a>
								</div>
							</div>
							<!--/row-fluid-->
						</div>
						<!--/item-->

					</div>
					<!--/carousel-inner-->

					<a class="left carousel-control" href="#myCarousel"
						data-slide="prev">‹</a> <a class="right carousel-control"
						href="#myCarousel" data-slide="next">›</a>
				</div>
				<!--/myCarousel-->

			</div>
			<!--/well-->
		</div>
	</div>




		<div class="container mb-2 pt-3">
			<div class="swiper-container" id="mainTab">
				<ul class="swiper-wrapper">
					<li class="otherTab swiper-slide" style="display: none;"></li>
					<li class="homeTab swiper-slide" style="display: none;"></li>
					<li class="areaTab swiper-slide" style="display: list-item;">
					<!-- contents -->
						<div id="contents" class="wideType1 main_contents">
							<div class="zone_wrap">
								<div class="list_zone">
									<div class="tit">
										<h2 id="zoneTitle">세종시</h2>
										<div class="toggle">
											<div class="switch_wrap">
												<label class="switch" for="switch1"><em>내위치</em></label> <span
													class="tog_wrap"> <input type="checkbox"
													id="switch1" name="switch1" title="내위치">
													<span class="slider"></span>
												</span>
											</div>
											<!-- 	<div class="switch_wrap"> -->
											<!-- 		<em>지역선택</em> -->
											<!-- 		<label class="switch" for="switch2"> -->
											<!-- 			<input type="checkbox" id="switch2" name="switch2"> -->
											<!-- 			<span class="slider"><span class="on">on</span><span class="off">off</span></span> -->
											<!-- 		</label> -->
											<!-- 	</div> -->
										</div>
									</div>
									<!-- type0 클래스 수정 -->
									<div class="swiper-container2 type0" id="zoneArr">
										<!-- dot 0개일경우 class type1, dot 1개일경우 class type1 , dot 2개일경우 class type2, dot 3개일경우 class type3-->
										<!-- // type0 클래스 수정 -->
										<div class="swiper-wrapper">
											<div id="zone1" class="swiper-slide" data-areacode="1">
												<button type="button">서울</button>
											</div>
											<div id="zone2" class="swiper-slide" data-areacode="6">
												<button type="button">부산</button>
											</div>
											<div id="zone3" class="swiper-slide" data-areacode="4">
												<button type="button">대구</button>
											</div>
											<div id="zone4" class="swiper-slide" data-areacode="2">
												<button type="button">인천</button>
											</div>
											<div id="zone5" class="swiper-slide" data-areacode="5">
												<button type="button">광주</button>
											</div>
											<div id="zone6" class="swiper-slide" data-areacode="3">
												<button type="button">대전</button>
											</div>
											<div id="zone7" class="swiper-slide" data-areacode="7">
												<button type="button">울산</button>
											</div>
											<div id="zone8" class="swiper-slide on" data-areacode="8">
												<button type="button">세종</button>
												<span class="selected_text blind">선택됨</span>
											</div>
											<div id="zone9" class="swiper-slide" data-areacode="31">
												<button type="button">경기</button>
											</div>
											<div id="zone10" class="swiper-slide" data-areacode="32">
												<button type="button">강원</button>
											</div>
											<div id="zone11" class="swiper-slide" data-areacode="33">
												<button type="button">충북</button>
											</div>
											<div id="zone12" class="swiper-slide" data-areacode="34">
												<button type="button">충남</button>
											</div>
											<div id="zone13" class="swiper-slide" data-areacode="37">
												<button type="button">전북</button>
											</div>
											<div id="zone14" class="swiper-slide" data-areacode="38">
												<button type="button">전남</button>
											</div>
											<div id="zone15" class="swiper-slide" data-areacode="35">
												<button type="button">경북</button>
											</div>
											<div id="zone16" class="swiper-slide" data-areacode="36">
												<button type="button">경남</button>
											</div>
											<div id="zone17" class="swiper-slide" data-areacode="39">
												<button type="button">제주</button>
											</div>
										</div>
									</div>
									<div class="zone_box">
										<div class="box_logo" id="boxLogo">
											<a
												class="logo">
												<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=6763a465-9e10-4084-8e4f-3f27f7d4c1e3"
													alt="세종시" style="width: 34px; height: 36px">
												<strong class="name">세종시</strong></a>
											<p id="pLogo"><a>행복도시 세종, 행복나들이</a></p>
										</div>
										<!-- [D]
										1. 하나의 div.zone_cont 안에 각각의 데이터가 새로 적용 되는 방식
										2. 탭메뉴 클릭시 해당되는 컨텐츠에 클래스 zoneCont1~15 가 추가되면서 display:block 이된다. -->
										<div class="zoneCont8 zone_cont on">
											<div class="area_mid" id="areamid">
												<a href="" class="img" title="새창 열림">
													<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=79709dea-bb4a-4677-9fc6-8c7a141ebf17"
														alt="지금, 사계展">
												</a>
											</div>
											<div class="area_left" id="arealeft">
												<span>MY AREA FEED</span>
												<div class="txt_info">
													<strong style="color: #000000;">지금, 사계展</strong>
													<p>
														레진아티스트와 함께하는<br>전시회에 초대합니다
													</p>
												</div>
												<a
													href=""
													class="btn_detail" title="새창 열림">자세히 보기</a>
											</div>

											<div id="arearight">
												<div class="area_right" id="area3" style="">
													<ul>
														<li class="obj1 clfix">
															<div>
																<a href="" title="새창 열림">
																	<strong class="bn_txtR" style="color: #097faf">걷기만 해도 만병통치!</strong>
																	금강수목원 맨발로 함께 걸어요
																</a>
															</div>
														</li>
														<li class="obj2 clfix">
															<div>
																<a href="" title="새창 열림">
																	<strong class="bn_txtR" style="color: #097faf">5월에 활짝 피어나는 오래된 성당,</strong>
																	영산홍 가득한 부강성당
																</a>
															</div>
														</li>
														<li class="obj2 clfix">
															<div>
																<a href="" title="새창 열림">
																	<strong class="bn_txtR" style="color: #097faf">아이와 함께, 연인과 함께</strong>
																	꽃내음 가득, 국립세종수목원으로!
																</a>
															</div>
														</li>
													</ul>
												</div>

												<!-- 4개일때 -->
												<div class="area_right" id="area4" style="display: none;">
													<ul>
														<li class="obj1 clfix">
															<div></div>
														</li>
														<li class="obj2 clfix">
															<div></div>
														</li>
														<li class="obj3 clfix">
															<div class="leftBox"></div>
															<div class="rightBox"></div>
														</li>
													</ul>
												</div>
												<!-- //4개일때 -->

												<!-- 5개일때 -->
												<div class="area_right" id="area5" style="display: none;">
													<ul>
														<li class="obj1 clfix">
															<div></div>
														</li>
														<li class="obj3 objMb clfix">
															<div class="leftBox"></div>
															<div class="rightBox"></div>
														</li>
														<li class="obj3 clfix">
															<div class="leftBox"></div>
															<div class="rightBox"></div>
														</li>
													</ul>
												</div>
												<!-- //5개일때 -->
											</div>
											
											<div class="list_sub" style="padding-right: 40px;">
												<div class="inr" style="overflow: hidden; height: 25px;">
													<ul class="clfix" id="sigungulist" style="height: auto;">
														<li><a title="세종시 문화관광 홈페이지_새창">세종시</a></li>
													</ul>
												</div>
												<button type="button" class="btn_more"
													style="display: none;">더보기
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 달력 -->
							<div class="local_fair" style="">
								<h2>
									<strong>축제</strong> 어디까지 가봤니?
								</h2>
								<div class="fair_slide">
									<div class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-free-mode">
										<div class="swiper-wrapper" id="fescalendar"
											style="transition-duration: 0ms; transform: translate3d(-420px, 0px, 0px);">
											
											<div class="swiper-slide swiper-slide-duplicate" style="margin-right: 10px;" data-swiper-slide-index="0">
												<a href="" title="곡성 세계장미축제 로 이동">
													<span class="img swiper-lazy swiper-lazy-loaded"
														style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=0c9e5ce6-f5a4-4a65-b189-eacaf0a6e959&quot;);">
													</span>
													<span class="hover_cont">
														<span class="date">2022.05.21 ~ 2022.06.06</span>
														<strong>곡성 세계장미축제</strong>
														<span class="area">전남 곡성군</span>
													</span>
												</a>
											</div>
											<div class="swiper-slide swiper-slide-duplicate" style="margin-right: 10px;" data-swiper-slide-index="1">
												<a href="" title="네이처파크 플라워 페스티벌 로 이동">
													<span class="img swiper-lazy swiper-lazy-loaded"
														style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=75b14ce0-e551-47d2-aa0d-2acc14f35db9&quot;);">
													</span>
													<span class="hover_cont">
														<span class="date">2022.04.02 ~ 2022.06.06</span>
														<strong>네이처파크 플라워 페스티벌</strong>
														<span class="area">대구 달성군</span>
													</span>
												</a>
											</div>
											<div
												class="swiper-slide swiper-slide-duplicate" style="margin-right: 10px;" data-swiper-slide-index="2">
												<a href="" title="장항항 수산물 꼴갑축제 로 이동">
													<span class="img swiper-lazy swiper-lazy-loaded"
														style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=f9e3b56e-3503-436c-be6b-a2e4b6f6ac24&quot;);">
													</span>
													<span class="hover_cont">
														<span class="date">2022.05.28 ~ 2022.06.06</span>
														<strong>장항항 수산물 꼴갑축제</strong>
														<span class="area">충남 서천군</span>
													</span>
												</a>
											</div>
											<div
												class="swiper-slide swiper-slide-duplicate" style="margin-right: 10px;" data-swiper-slide-index="3">
												<a href="" title="울산대공원 장미축제(Love Story in Ulsan) 로 이동">
													<span class="img swiper-lazy swiper-lazy-loaded"
														style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=463dc9f1-feb3-40e5-80bc-bb4281a8d60e&quot;);">
													</span>
													<span class="hover_cont">
														<span class="date">2022.05.25 ~ 2022.05.29</span>
														<strong>울산대공원 장미축제(Love Story in Ulsan)</strong>
														<span class="area">울산 남구</span>
													</span>
												</a>
											</div>
											<div
												class="swiper-slide swiper-slide-duplicate" style="margin-right: 10px;" data-swiper-slide-index="4">
												<a href="" title="경복궁 별빛야행 로 이동">
													<span class="img swiper-lazy swiper-lazy-loaded"
														style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=e171cf58-6177-4ee2-beb7-f5bac9e8e6ea&quot;);">
													</span>
													<span class="hover_cont">
														<span class="date">2022.05.18 ~ 2022.05.29</span>
														<strong>경복궁 별빛야행</strong>
														<span class="area">서울 종로구</span>
													</span>
												</a>
											</div>
											<div class="swiper-slide swiper-slide-duplicate" style="margin-right: 10px;" data-swiper-slide-index="5">
												<a href="" title="청초누리 봄빛정원 로 이동">
													<span class="img swiper-lazy swiper-lazy-loaded"
														style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=82a1ab39-d406-4a6c-97e0-29e10584bf12&quot;);">
													</span>
													<span class="hover_cont">
														<span class="date">2022.04.08 ~ 2022.05.31</span>
														<strong>청초누리 봄빛정원</strong>
														<span class="area">강원 속초시</span>
													</span>
												</a>
											</div>
											<div class="swiper-slide swiper-slide-duplicate" style="margin-right: 10px;" data-swiper-slide-index="0">
												<a href="" title="곡성 세계장미축제 로 이동">
													<span class="img swiper-lazy swiper-lazy-loaded"
														style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=0c9e5ce6-f5a4-4a65-b189-eacaf0a6e959&quot;);">
													</span>
													<span class="hover_cont">
														<span class="date">2022.05.21 ~ 2022.06.06</span>
														<strong>곡성 세계장미축제</strong>
														<span class="area">전남 곡성군</span>
													</span>
												</a>
											</div>
											<div class="swiper-slide swiper-slide-duplicate" style="margin-right: 10px;" data-swiper-slide-index="1">
												<a href="" title="네이처파크 플라워 페스티벌 로 이동">
													<span class="img swiper-lazy swiper-lazy-loaded"
														style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=75b14ce0-e551-47d2-aa0d-2acc14f35db9&quot;);">
													</span>
													<span class="hover_cont">
														<span class="date">2022.04.02 ~ 2022.06.06</span>
														<strong>네이처파크 플라워 페스티벌</strong> 
														<span class="area">대구 달성군</span>
													</span>
												</a>
											</div>
											<div class="swiper-slide swiper-slide-duplicate" style="margin-right: 10px;" data-swiper-slide-index="1">
												<a href="" title="네이처파크 플라워 페스티벌 로 이동">
													<span class="img swiper-lazy swiper-lazy-loaded"
														style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=75b14ce0-e551-47d2-aa0d-2acc14f35db9&quot;);">
													</span>
													<span class="hover_cont">
														<span class="date">2022.04.02 ~ 2022.06.06</span>
														<strong>네이처파크 플라워 페스티벌</strong> 
														<span class="area">대구 달성군</span>
													</span>
												</a>
											</div>
										</div>
										
										<div class="swiper-button-next" tabindex="0" role="button"
											aria-label="Next slide">다음</div>
										<div class="swiper-button-prev" tabindex="0" role="button"
											aria-label="Previous slide">이전</div>
										<span class="swiper-notification" aria-live="assertive"
											aria-atomic="true">
										</span>
									</div>
								</div>
								<a href="" class="more">더보기</a>
								<a href="" class="calendar"><span>축제 카렌다 </span>바로가기</a>
							</div>
							<!-- //달력 -->
						</div> <!-- //contents --> 
					</li>
				</ul>
			</div>
			
			<div id="contents">

	    

	    <div class="wrap_contView clfix">

	        <!-- 썸네일 리스트 -->
					<div class="box_leftType1">
						<div class="total_check">
							<strong>총<span id="totalCnt">1,181</span>건
							</strong>
							<div class="btn_txt">
								<button type="button" class="on" id="1" title="선택됨">최신순</button>
								<button type="button" id="2">거리순</button>
								<button type="button" id="3">인기순</button>
							</div>
							<button type="button" class="btn_mPop">상세조회</button>
						</div>
						<h3 class="blind" id="blindsearchtype">최신순</h3>
						<ul class="list_thumType flnon">
							<li class="bdr_nor"><div class="photo">
									<a href="javascript:"
										onclick="goDetail(&quot;b522c193-66bb-4bea-a814-6abad43e845e&quot;,&quot;A02&quot;,&quot;A0207&quot;,&quot;32&quot;);"><img
										src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=dd3fbaa5-fb75-4ac8-b37f-643a464e3569&amp;thumb"
										alt="2022 강릉단오제"><em class="flag type_ing">진행중</em></a>
								</div>
								<div class="area_txt">
									<div class="tit">
										<a href="javascript:"
											onclick="goDetail(&quot;b522c193-66bb-4bea-a814-6abad43e845e&quot;,&quot;A02&quot;,&quot;A0207&quot;,&quot;32&quot;);">2022
											강릉단오제</a>
									</div>
									<p>[2022.05.30~06.06]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
									<p class="tag">
										<span>#가볼만한축제</span><span>#가족여행</span><span>#강릉가볼만한곳</span><span>#강릉단오제</span><span>#강릉축제</span><span>#강원권</span><span>#관광지</span><span>#기차여행</span><span>#나들이</span><span>#단오제</span><span>#데이트코스</span><span>#문화</span><span>#서울근교여행</span><span>#아이와함께</span><span>#연인과함께</span><span>#이색체험</span><span>#전통&amp;역사문화체험</span><span>#체험학습</span><span>#축제</span><span>#친구와함께</span><span>#힐링</span>
									</p>
								</div>
								<button type="button" title="열기" class="btn_view"
									onclick="viewClick(&quot;b522c193-66bb-4bea-a814-6abad43e845e&quot;)">더보기</button>
								<div class="pop_subMenu">
									<ul>
										<li class="btn_far"><a href="javascript:"
											onclick="setFavoContent(&quot;b522c193-66bb-4bea-a814-6abad43e845e&quot;)">즐겨찾기</a></li>
										<li class="btn_share"
											id="b522c193-66bb-4bea-a814-6abad43e845e"><a
											href="javascript:"
											onclick="getShareInfo(&quot;2022%20%EA%B0%95%EB%A6%89%EB%8B%A8%EC%98%A4%EC%A0%9C&quot;,&quot;dd3fbaa5-fb75-4ac8-b37f-643a464e3569&quot;,&quot;b522c193-66bb-4bea-a814-6abad43e845e&quot;,15);">공유하기</a></li>
										<li class="btn_cart" id="b522c193-66bb-4bea-a814-6abad43e845e"><a
											href="javascript:"
											onclick="myCourseList(&quot;C&quot;,&quot;15&quot;,&quot;b522c193-66bb-4bea-a814-6abad43e845e&quot;,&quot;&quot;)">코스에
												담기</a></li>
									</ul>
								</div></li>
							<li class="bdr_nor"><div class="photo">
									<a href="javascript:"
										onclick="goDetail(&quot;176bbb8a-9351-45ca-942e-60ac059ff1de&quot;,&quot;A02&quot;,&quot;A0207&quot;,&quot;32&quot;);"><img
										src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=b1fb1c8f-385e-4a5d-b5a8-47b509b14e4c&amp;thumb"
										alt="원주 장미축제 "><em class="flag type_end">취소</em></a>
								</div>
								<div class="area_txt">
									<div class="tit">
										<a href="javascript:"
											onclick="goDetail(&quot;176bbb8a-9351-45ca-942e-60ac059ff1de&quot;,&quot;A02&quot;,&quot;A0207&quot;,&quot;32&quot;);">원주
											장미축제 </a>
									</div>
									<p></p>
									<p class="tag">
										<span>#가볼만한축제</span><span>#강원권</span><span>#원주장미축제</span><span>#원주축제</span><span>#장미꽃여행지</span><span>#장미꽃축제</span><span>#장미축제</span><span>#축제</span>
									</p>
								</div>
								<button type="button" title="열기" class="btn_view"
									onclick="viewClick(&quot;176bbb8a-9351-45ca-942e-60ac059ff1de&quot;)">더보기</button>
								<div class="pop_subMenu">
									<ul>
										<li class="btn_far"><a href="javascript:"
											onclick="setFavoContent(&quot;176bbb8a-9351-45ca-942e-60ac059ff1de&quot;)">즐겨찾기</a></li>
										<li class="btn_share"
											id="176bbb8a-9351-45ca-942e-60ac059ff1de"><a
											href="javascript:"
											onclick="getShareInfo(&quot;%EC%9B%90%EC%A3%BC%20%EC%9E%A5%EB%AF%B8%EC%B6%95%EC%A0%9C%20&quot;,&quot;b1fb1c8f-385e-4a5d-b5a8-47b509b14e4c&quot;,&quot;176bbb8a-9351-45ca-942e-60ac059ff1de&quot;,15);">공유하기</a></li>
										<li class="btn_cart" id="176bbb8a-9351-45ca-942e-60ac059ff1de"><a
											href="javascript:"
											onclick="myCourseList(&quot;C&quot;,&quot;15&quot;,&quot;176bbb8a-9351-45ca-942e-60ac059ff1de&quot;,&quot;&quot;)">코스에
												담기</a></li>
									</ul>
								</div></li>
							<li class="bdr_nor"><div class="photo">
									<a href="javascript:"
										onclick="goDetail(&quot;fb20f2f5-1dd9-4bb5-8840-64e796c3a8ca&quot;,&quot;A02&quot;,&quot;A0208&quot;,&quot;1&quot;);"><img
										src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=33bd81d0-b1ab-473c-87f0-715a6f34bf10&amp;thumb"
										alt="2022년 북촌 한옥 역사관 상반기 특별행사"><em
										class="flag type_before">진행전</em></a>
								</div>
								<div class="area_txt">
									<div class="tit">
										<a href="javascript:"
											onclick="goDetail(&quot;fb20f2f5-1dd9-4bb5-8840-64e796c3a8ca&quot;,&quot;A02&quot;,&quot;A0208&quot;,&quot;1&quot;);">2022년
											북촌 한옥 역사관 상반기 특별행사</a>
									</div>
									<p>[2022.05.31~06.10]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
									<p class="tag">
										<span>#가족과함께</span><span>#북촌한옥역사관</span><span>#역사</span><span>#축제</span><span>#친구와함께</span>
									</p>
								</div>
								<button type="button" title="열기" class="btn_view"
									onclick="viewClick(&quot;fb20f2f5-1dd9-4bb5-8840-64e796c3a8ca&quot;)">더보기</button>
								<div class="pop_subMenu">
									<ul>
										<li class="btn_far"><a href="javascript:"
											onclick="setFavoContent(&quot;fb20f2f5-1dd9-4bb5-8840-64e796c3a8ca&quot;)">즐겨찾기</a></li>
										<li class="btn_share"
											id="fb20f2f5-1dd9-4bb5-8840-64e796c3a8ca"><a
											href="javascript:"
											onclick="getShareInfo(&quot;2022%EB%85%84%20%EB%B6%81%EC%B4%8C%20%ED%95%9C%EC%98%A5%20%EC%97%AD%EC%82%AC%EA%B4%80%20%EC%83%81%EB%B0%98%EA%B8%B0%20%ED%8A%B9%EB%B3%84%ED%96%89%EC%82%AC&quot;,&quot;33bd81d0-b1ab-473c-87f0-715a6f34bf10&quot;,&quot;fb20f2f5-1dd9-4bb5-8840-64e796c3a8ca&quot;,15);">공유하기</a></li>
										<li class="btn_cart" id="fb20f2f5-1dd9-4bb5-8840-64e796c3a8ca"><a
											href="javascript:"
											onclick="myCourseList(&quot;C&quot;,&quot;15&quot;,&quot;fb20f2f5-1dd9-4bb5-8840-64e796c3a8ca&quot;,&quot;&quot;)">코스에
												담기</a></li>
									</ul>
								</div></li>
							<li class="bdr_nor"><div class="photo">
									<a href="javascript:"
										onclick="goDetail(&quot;c13ea3c5-5ba1-4810-a6a2-5d5663ebc8cc&quot;,&quot;A02&quot;,&quot;A0207&quot;,&quot;6&quot;);"><img
										src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=b50527c4-69dc-48f5-908e-35d0c675525f&amp;thumb"
										alt="2022 ECO 챌린지 낙동강 자전거 페스티벌"><em
										class="flag type_before">진행전</em></a>
								</div>
								<div class="area_txt">
									<div class="tit">
										<a href="javascript:"
											onclick="goDetail(&quot;c13ea3c5-5ba1-4810-a6a2-5d5663ebc8cc&quot;,&quot;A02&quot;,&quot;A0207&quot;,&quot;6&quot;);">2022
											ECO 챌린지 낙동강 자전거 페스티벌</a>
									</div>
									<p>[2022.05.31~06.12]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
									<p class="tag">
										<span>#가볼만한축제</span><span>#가족여행</span><span>#경상권</span><span>#관광지</span><span>#기차여행</span><span>#나들이</span><span>#낙동강자전거페스티벌</span><span>#데이트코스</span><span>#아이와함께</span><span>#연인과함께</span><span>#이색체험</span><span>#자전거여행</span><span>#체험학습</span><span>#축제</span><span>#친구와함께</span><span>#힐링</span>
									</p>
								</div>
								<button type="button" title="열기" class="btn_view"
									onclick="viewClick(&quot;c13ea3c5-5ba1-4810-a6a2-5d5663ebc8cc&quot;)">더보기</button>
								<div class="pop_subMenu">
									<ul>
										<li class="btn_far"><a href="javascript:"
											onclick="setFavoContent(&quot;c13ea3c5-5ba1-4810-a6a2-5d5663ebc8cc&quot;)">즐겨찾기</a></li>
										<li class="btn_share"
											id="c13ea3c5-5ba1-4810-a6a2-5d5663ebc8cc"><a
											href="javascript:"
											onclick="getShareInfo(&quot;2022%20ECO%20%EC%B1%8C%EB%A6%B0%EC%A7%80%20%EB%82%99%EB%8F%99%EA%B0%95%20%EC%9E%90%EC%A0%84%EA%B1%B0%20%ED%8E%98%EC%8A%A4%ED%8B%B0%EB%B2%8C&quot;,&quot;b50527c4-69dc-48f5-908e-35d0c675525f&quot;,&quot;c13ea3c5-5ba1-4810-a6a2-5d5663ebc8cc&quot;,15);">공유하기</a></li>
										<li class="btn_cart" id="c13ea3c5-5ba1-4810-a6a2-5d5663ebc8cc"><a
											href="javascript:"
											onclick="myCourseList(&quot;C&quot;,&quot;15&quot;,&quot;c13ea3c5-5ba1-4810-a6a2-5d5663ebc8cc&quot;,&quot;&quot;)">코스에
												담기</a></li>
									</ul>
								</div></li>
							<li class="bdr_nor"><div class="photo">
									<a href="javascript:"
										onclick="goDetail(&quot;bcf303a0-7dc8-452b-81f6-ad2a812bfe9b&quot;,&quot;A02&quot;,&quot;A0208&quot;,&quot;1&quot;);"><img
										src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=fd0ead91-1444-4607-b63b-829e4a4175a5&amp;thumb"
										alt="서울국제도서전"><em class="flag type_before">진행전</em></a>
								</div>
								<div class="area_txt">
									<div class="tit">
										<a href="javascript:"
											onclick="goDetail(&quot;bcf303a0-7dc8-452b-81f6-ad2a812bfe9b&quot;,&quot;A02&quot;,&quot;A0208&quot;,&quot;1&quot;);">서울국제도서전</a>
									</div>
									<p>[2022.06.01~06.05]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
									<p class="tag">
										<span>#가볼만한축제</span><span>#관광지</span><span>#국제도서전</span><span>#나들이</span><span>#도서전</span><span>#서울국제도서전</span><span>#수도권</span><span>#아이와함께</span><span>#연인과함께</span><span>#전시회/박람회</span><span>#체험학습</span><span>#축제</span><span>#친구와함께</span><span>#힐링</span>
									</p>
								</div>
								<button type="button" title="열기" class="btn_view"
									onclick="viewClick(&quot;bcf303a0-7dc8-452b-81f6-ad2a812bfe9b&quot;)">더보기</button>
								<div class="pop_subMenu">
									<ul>
										<li class="btn_far"><a href="javascript:"
											onclick="setFavoContent(&quot;bcf303a0-7dc8-452b-81f6-ad2a812bfe9b&quot;)">즐겨찾기</a></li>
										<li class="btn_share"
											id="bcf303a0-7dc8-452b-81f6-ad2a812bfe9b"><a
											href="javascript:"
											onclick="getShareInfo(&quot;%EC%84%9C%EC%9A%B8%EA%B5%AD%EC%A0%9C%EB%8F%84%EC%84%9C%EC%A0%84&quot;,&quot;fd0ead91-1444-4607-b63b-829e4a4175a5&quot;,&quot;bcf303a0-7dc8-452b-81f6-ad2a812bfe9b&quot;,15);">공유하기</a></li>
										<li class="btn_cart" id="bcf303a0-7dc8-452b-81f6-ad2a812bfe9b"><a
											href="javascript:"
											onclick="myCourseList(&quot;C&quot;,&quot;15&quot;,&quot;bcf303a0-7dc8-452b-81f6-ad2a812bfe9b&quot;,&quot;&quot;)">코스에
												담기</a></li>
									</ul>
								</div></li>
							<li class="bdr_nor"><div class="photo">
									<a href="javascript:"
										onclick="goDetail(&quot;317be778-9ea1-4885-9dd2-b007c792b04a&quot;,&quot;A02&quot;,&quot;A0207&quot;,&quot;34&quot;);"><img
										src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=f9e3b56e-3503-436c-be6b-a2e4b6f6ac24&amp;thumb"
										alt="장항항 수산물 꼴갑축제"><em class="flag type_ing">진행중</em></a>
								</div>
								<div class="area_txt">
									<div class="tit">
										<a href="javascript:"
											onclick="goDetail(&quot;317be778-9ea1-4885-9dd2-b007c792b04a&quot;,&quot;A02&quot;,&quot;A0207&quot;,&quot;34&quot;);">장항항
											수산물 꼴갑축제</a>
									</div>
									<p>[2022.05.28~06.06]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
									<p class="tag">
										<span>#가볼만한축제</span><span>#가족여행</span><span>#기차여행</span><span>#나들이</span><span>#데이트코스</span><span>#먹거리</span><span>#바다풍경</span><span>#아이와함께</span><span>#여름휴가</span><span>#연인과함께</span><span>#이색체험</span><span>#장항항수산물꼴깝축제</span><span>#전통시장</span><span>#체험학습</span><span>#축제</span><span>#충청권</span><span>#친구와함께</span><span>#힐링</span>
									</p>
								</div>
								<button type="button" title="열기" class="btn_view"
									onclick="viewClick(&quot;317be778-9ea1-4885-9dd2-b007c792b04a&quot;)">더보기</button>
								<div class="pop_subMenu">
									<ul>
										<li class="btn_far"><a href="javascript:"
											onclick="setFavoContent(&quot;317be778-9ea1-4885-9dd2-b007c792b04a&quot;)">즐겨찾기</a></li>
										<li class="btn_share"
											id="317be778-9ea1-4885-9dd2-b007c792b04a"><a
											href="javascript:"
											onclick="getShareInfo(&quot;%EC%9E%A5%ED%95%AD%ED%95%AD%20%EC%88%98%EC%82%B0%EB%AC%BC%20%EA%BC%B4%EA%B0%91%EC%B6%95%EC%A0%9C&quot;,&quot;f9e3b56e-3503-436c-be6b-a2e4b6f6ac24&quot;,&quot;317be778-9ea1-4885-9dd2-b007c792b04a&quot;,15);">공유하기</a></li>
										<li class="btn_cart" id="317be778-9ea1-4885-9dd2-b007c792b04a"><a
											href="javascript:"
											onclick="myCourseList(&quot;C&quot;,&quot;15&quot;,&quot;317be778-9ea1-4885-9dd2-b007c792b04a&quot;,&quot;&quot;)">코스에
												담기</a></li>
									</ul>
								</div></li>
							<li class="bdr_nor"><div class="photo">
									<a href="javascript:"
										onclick="goDetail(&quot;65bcf48c-7c94-4d7c-9162-205872336213&quot;,&quot;A02&quot;,&quot;A0208&quot;,&quot;1&quot;);"><img
										src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=dd4e4c1e-f128-4a7c-a946-a9b569a38be9&amp;thumb"
										alt="2022 초·중·고등학생 문화공연 관람 지원 [공연봄날]"><em
										class="flag type_before">진행전</em></a>
								</div>
								<div class="area_txt">
									<div class="tit">
										<a href="javascript:"
											onclick="goDetail(&quot;65bcf48c-7c94-4d7c-9162-205872336213&quot;,&quot;A02&quot;,&quot;A0208&quot;,&quot;1&quot;);">2022
											초·중·고등학생 문화공연 관람 지원 [공연봄날]</a>
									</div>
									<p>[2022.06.01~12.31]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
									<p class="tag">
										<span>#공연</span><span>#공연봄날</span><span>#문화공연</span><span>#청소년</span><span>#축제</span><span>#친구와함께</span>
									</p>
								</div>
								<button type="button" title="열기" class="btn_view"
									onclick="viewClick(&quot;65bcf48c-7c94-4d7c-9162-205872336213&quot;)">더보기</button>
								<div class="pop_subMenu">
									<ul>
										<li class="btn_far"><a href="javascript:"
											onclick="setFavoContent(&quot;65bcf48c-7c94-4d7c-9162-205872336213&quot;)">즐겨찾기</a></li>
										<li class="btn_share"
											id="65bcf48c-7c94-4d7c-9162-205872336213"><a
											href="javascript:"
											onclick="getShareInfo(&quot;2022%20%EC%B4%88%C2%B7%EC%A4%91%C2%B7%EA%B3%A0%EB%93%B1%ED%95%99%EC%83%9D%20%EB%AC%B8%ED%99%94%EA%B3%B5%EC%97%B0%20%EA%B4%80%EB%9E%8C%20%EC%A7%80%EC%9B%90%20%5B%EA%B3%B5%EC%97%B0%EB%B4%84%EB%82%A0%5D&quot;,&quot;dd4e4c1e-f128-4a7c-a946-a9b569a38be9&quot;,&quot;65bcf48c-7c94-4d7c-9162-205872336213&quot;,15);">공유하기</a></li>
										<li class="btn_cart" id="65bcf48c-7c94-4d7c-9162-205872336213"><a
											href="javascript:"
											onclick="myCourseList(&quot;C&quot;,&quot;15&quot;,&quot;65bcf48c-7c94-4d7c-9162-205872336213&quot;,&quot;&quot;)">코스에
												담기</a></li>
									</ul>
								</div></li>
							<li class="bdr_nor"><div class="photo">
									<a href="javascript:"
										onclick="goDetail(&quot;cd532c20-e7e6-48cc-a9e2-da0f64100f35&quot;,&quot;A02&quot;,&quot;A0207&quot;,&quot;38&quot;);"><img
										src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=61ff0698-01b4-4864-a4b5-3d66cd697bb8&amp;thumb"
										alt="2022 영광법성포단오제"><em class="flag type_before">진행전</em></a>
								</div>
								<div class="area_txt">
									<div class="tit">
										<a href="javascript:"
											onclick="goDetail(&quot;cd532c20-e7e6-48cc-a9e2-da0f64100f35&quot;,&quot;A02&quot;,&quot;A0207&quot;,&quot;38&quot;);">2022
											영광법성포단오제</a>
									</div>
									<p>[2022.06.02~06.05]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
									<p class="tag">
										<span>#가족여행</span><span>#관광지</span><span>#기차여행</span><span>#나들이</span><span>#법성포단오제</span><span>#아이와함께</span><span>#연인과함께</span><span>#이색체험</span><span>#전라권</span><span>#전통&amp;역사문화체험</span><span>#체험학습</span><span>#축제</span><span>#친구와함께</span><span>#힐링</span>
									</p>
								</div>
								<button type="button" title="열기" class="btn_view"
									onclick="viewClick(&quot;cd532c20-e7e6-48cc-a9e2-da0f64100f35&quot;)">더보기</button>
								<div class="pop_subMenu">
									<ul>
										<li class="btn_far"><a href="javascript:"
											onclick="setFavoContent(&quot;cd532c20-e7e6-48cc-a9e2-da0f64100f35&quot;)">즐겨찾기</a></li>
										<li class="btn_share"
											id="cd532c20-e7e6-48cc-a9e2-da0f64100f35"><a
											href="javascript:"
											onclick="getShareInfo(&quot;2022%20%EC%98%81%EA%B4%91%EB%B2%95%EC%84%B1%ED%8F%AC%EB%8B%A8%EC%98%A4%EC%A0%9C&quot;,&quot;61ff0698-01b4-4864-a4b5-3d66cd697bb8&quot;,&quot;cd532c20-e7e6-48cc-a9e2-da0f64100f35&quot;,15);">공유하기</a></li>
										<li class="btn_cart" id="cd532c20-e7e6-48cc-a9e2-da0f64100f35"><a
											href="javascript:"
											onclick="myCourseList(&quot;C&quot;,&quot;15&quot;,&quot;cd532c20-e7e6-48cc-a9e2-da0f64100f35&quot;,&quot;&quot;)">코스에
												담기</a></li>
									</ul>
								</div></li>
							<li class="bdr_nor"><div class="photo">
									<a href="javascript:"
										onclick="goDetail(&quot;9497d1fd-c8bf-4d47-8cca-f1f3a5cec056&quot;,&quot;A02&quot;,&quot;A0207&quot;,&quot;33&quot;);"><img
										src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=d076348c-15d5-4f13-a951-b2a5b224e8b1&amp;thumb"
										alt="제38회 단양 소백산 철쭉제"><em class="flag type_before">진행전</em></a>
								</div>
								<div class="area_txt">
									<div class="tit">
										<a href="javascript:"
											onclick="goDetail(&quot;9497d1fd-c8bf-4d47-8cca-f1f3a5cec056&quot;,&quot;A02&quot;,&quot;A0207&quot;,&quot;33&quot;);">제38회
											단양 소백산 철쭉제</a>
									</div>
									<p>[2022.06.02~06.05]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
									<p class="tag">
										<span>#15_16한국관광100선</span><span>#가볼만한축제</span><span>#가족여행</span><span>#기차여행</span><span>#꽃여행</span><span>#나들이</span><span>#단양소백산철쭉제</span><span>#데이트코스</span><span>#봄꽃</span><span>#소백산</span><span>#아이와함께</span><span>#연인과함께</span><span>#이색체험</span><span>#체험학습</span><span>#축제</span><span>#충북</span><span>#충청권</span><span>#친구와함께</span><span>#한국관광100선</span><span>#힐링</span>
									</p>
								</div>
								<button type="button" title="열기" class="btn_view"
									onclick="viewClick(&quot;9497d1fd-c8bf-4d47-8cca-f1f3a5cec056&quot;)">더보기</button>
								<div class="pop_subMenu">
									<ul>
										<li class="btn_far"><a href="javascript:"
											onclick="setFavoContent(&quot;9497d1fd-c8bf-4d47-8cca-f1f3a5cec056&quot;)">즐겨찾기</a></li>
										<li class="btn_share"
											id="9497d1fd-c8bf-4d47-8cca-f1f3a5cec056"><a
											href="javascript:"
											onclick="getShareInfo(&quot;%EC%A0%9C38%ED%9A%8C%20%EB%8B%A8%EC%96%91%20%EC%86%8C%EB%B0%B1%EC%82%B0%20%EC%B2%A0%EC%AD%89%EC%A0%9C&quot;,&quot;d076348c-15d5-4f13-a951-b2a5b224e8b1&quot;,&quot;9497d1fd-c8bf-4d47-8cca-f1f3a5cec056&quot;,15);">공유하기</a></li>
										<li class="btn_cart" id="9497d1fd-c8bf-4d47-8cca-f1f3a5cec056"><a
											href="javascript:"
											onclick="myCourseList(&quot;C&quot;,&quot;15&quot;,&quot;9497d1fd-c8bf-4d47-8cca-f1f3a5cec056&quot;,&quot;&quot;)">코스에
												담기</a></li>
									</ul>
								</div></li>
							<li class="bdr_nor"><div class="photo">
									<a href="javascript:"
										onclick="goDetail(&quot;bcc4ea14-1068-4c2f-be53-b03b48abd94d&quot;,&quot;A02&quot;,&quot;A0208&quot;,&quot;37&quot;);"><img
										src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=be8d3e62-7eec-4a1d-8272-d6936858b32c&amp;thumb"
										alt="무주산골영화제"><em class="flag type_before">진행전</em></a>
								</div>
								<div class="area_txt">
									<div class="tit">
										<a href="javascript:"
											onclick="goDetail(&quot;bcc4ea14-1068-4c2f-be53-b03b48abd94d&quot;,&quot;A02&quot;,&quot;A0208&quot;,&quot;37&quot;);">무주산골영화제</a>
									</div>
									<p>[2022.06.02~06.06]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
									<p class="tag">
										<span>#가족과함께</span><span>#무주가볼만축제</span><span>#무주가볼만한곳</span><span>#무주산골영화제</span><span>#산골영화제</span><span>#아이와함께</span><span>#영화제</span><span>#축제</span><span>#힐링</span>
									</p>
								</div>
								<button type="button" title="열기" class="btn_view"
									onclick="viewClick(&quot;bcc4ea14-1068-4c2f-be53-b03b48abd94d&quot;)">더보기</button>
								<div class="pop_subMenu">
									<ul>
										<li class="btn_far"><a href="javascript:"
											onclick="setFavoContent(&quot;bcc4ea14-1068-4c2f-be53-b03b48abd94d&quot;)">즐겨찾기</a></li>
										<li class="btn_share"
											id="bcc4ea14-1068-4c2f-be53-b03b48abd94d"><a
											href="javascript:"
											onclick="getShareInfo(&quot;%EB%AC%B4%EC%A3%BC%EC%82%B0%EA%B3%A8%EC%98%81%ED%99%94%EC%A0%9C&quot;,&quot;be8d3e62-7eec-4a1d-8272-d6936858b32c&quot;,&quot;bcc4ea14-1068-4c2f-be53-b03b48abd94d&quot;,15);">공유하기</a></li>
										<li class="btn_cart" id="bcc4ea14-1068-4c2f-be53-b03b48abd94d"><a
											href="javascript:"
											onclick="myCourseList(&quot;C&quot;,&quot;15&quot;,&quot;bcc4ea14-1068-4c2f-be53-b03b48abd94d&quot;,&quot;&quot;)">코스에
												담기</a></li>
									</ul>
								</div></li>
						</ul>
						<!-- paging -->
						<div class="page_box">
							<a class="on" title="선택됨" href="javascript:" id="1">1</a> <a
								href="javascript:" id="2">2</a> <a href="javascript:" id="3">3</a>
							<a href="javascript:" id="4">4</a> <a href="javascript:" id="5">5</a>
							<a href="javascript:" class="btn_next ico" id="6">다음</a><a
								class="btn_last ico" href="javascript:" id="119">끝</a>
						</div>
						<!-- //paging -->
					</div>
					<!-- //썸네일 리스트 -->

	        <div class="box_rightType1">
	            <div class="tit_mPop">
	                <h2>태그선택</h2>
	                <button type="button" class="btn_close">닫기</button>
	            </div>
	            <!-- 태그 리스트 -->
						<div class="area_tagList">
							<!-- ul class="tag_menu">
	                    <li id="thismonth"><a href="javascript:">#이달의축제</a></li>
	                </ul-->
							<ul class="tag_list js_multi" id="monthlist">
								<li id="All"><button type="button" class="btn_all_active">
										<span>#전체</span>
									</button></li>
								<li id="01"><button type="button" class="btn">
										<span>#1월</span>
									</button></li>
								<li id="02"><button type="button" class="btn">
										<span>#2월</span>
									</button></li>
								<li id="03"><button type="button" class="btn">
										<span>#3월</span>
									</button></li>
								<li id="04"><button type="button" class="btn">
										<span>#4월</span>
									</button></li>
								<li id="05"><button type="button" class="btn">
										<span>#5월</span>
									</button></li>
								<li id="06"><button type="button" class="btn">
										<span>#6월</span>
									</button></li>
								<li id="07"><button type="button" class="btn">
										<span>#7월</span>
									</button></li>
								<li id="08"><button type="button" class="btn">
										<span>#8월</span>
									</button></li>
								<li id="09"><button type="button" class="btn">
										<span>#9월</span>
									</button></li>
								<li id="10"><button type="button" class="btn">
										<span>#10월</span>
									</button></li>
								<li id="11"><button type="button" class="btn">
										<span>#11월</span>
									</button></li>
								<li id="12"><button type="button" class="btn">
										<span>#12월</span>
									</button></li>
							</ul>
							<ul class="tag_list area_list js_one" id="arealist">
								<li id="All"><button type="button" class="btn_all_active">
										<span>#전체</span>
									</button></li>
								<li id="1"><button type="button" class="btn">
										<span>#서울</span>
									</button></li>
								<li id="6"><button type="button" class="btn">
										<span>#부산</span>
									</button></li>
								<li id="4"><button type="button" class="btn">
										<span>#대구</span>
									</button></li>
								<li id="2"><button type="button" class="btn">
										<span>#인천</span>
									</button></li>
								<li id="5"><button type="button" class="btn">
										<span>#광주</span>
									</button></li>
								<li id="3"><button type="button" class="btn">
										<span>#대전</span>
									</button></li>
								<li id="7"><button type="button" class="btn">
										<span>#울산</span>
									</button></li>
								<li id="8"><button type="button" class="btn">
										<span>#세종</span>
									</button></li>
								<li id="31"><button type="button" class="btn">
										<span>#경기</span>
									</button></li>
								<li id="32"><button type="button" class="btn">
										<span>#강원</span>
									</button></li>
								<li id="33"><button type="button" class="btn">
										<span>#충북</span>
									</button></li>
								<li id="34"><button type="button" class="btn">
										<span>#충남</span>
									</button></li>
								<li id="35"><button type="button" class="btn">
										<span>#경북</span>
									</button></li>
								<li id="36"><button type="button" class="btn">
										<span>#경남</span>
									</button></li>
								<li id="37"><button type="button" class="btn">
										<span>#전북</span>
									</button></li>
								<li id="38"><button type="button" class="btn">
										<span>#전남</span>
									</button></li>
								<li id="39"><button type="button" class="btn">
										<span>#제주</span>
									</button></li>
							</ul>
							<ul class="tag_list area_view_list js_multi" id="sigungulist">
							</ul>
							<ul class="tag_list cnt_list js_multi" id="taglist">
								<li id="ca662dcd-d7f0-11e8-bff9-02001c6b0001"
									otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="4"><button
										type="button" class="btn">
										<span>#공연/행사</span>
									</button></li>
								<li id="dae6ab54-5556-47b4-a821-bed43bb8ded1"
									otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="4"><button
										type="button" class="btn">
										<span>#나들이</span>
									</button></li>
								<li id="dd2620b3-91d6-4d20-855b-054d7510947b"
									otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="4"><button
										type="button" class="btn">
										<span>#온라인축제</span>
									</button></li>
								<li id="c60ddf53-d7f1-11e8-bff9-02001c6b0001"
									otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="4"><button
										type="button" class="btn">
										<span>#전시회/박람회</span>
									</button></li>
								<li id="423a9351-bb43-45b8-97d9-2ca01b96bd10"
									otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="4"><button
										type="button" class="btn">
										<span>#가족과함께</span>
									</button></li>
								<li id="d101697e-cbdb-48e5-be62-ba725e80f74f"
									otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="4"><button
										type="button" class="btn">
										<span>#맛</span>
									</button></li>
								<li id="059b388b-97f9-410e-b275-230171661645"
									otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="4"><button
										type="button" class="btn">
										<span>#친구와함께</span>
									</button></li>
								<li id="898aa43b-9714-11e8-8165-020027310001"
									otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="4"><button
										type="button" class="btn">
										<span>#아이와함께</span>
									</button></li>
								<li id="8ee99d91-83f0-4a71-a929-e6f5b182bfb3"
									otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="4"><button
										type="button" class="btn">
										<span>#문화</span>
									</button></li>
								<li id="*46a412aa-0b3b-11ea-869b-020027310001"
									otdid="46a412aa-0b3b-11ea-869b-020027310001" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#여행가는 달</span>
									</button></li>
								<li id="*64e29192-8939-11e8-8165-020027310001"
									otdid="64e29192-8939-11e8-8165-020027310001" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#한국관광의별</span>
									</button></li>
								<li id="*ac9026ca-3ff6-49c9-81cf-10f027b044e9"
									otdid="ac9026ca-3ff6-49c9-81cf-10f027b044e9" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#생생 VR 영상</span>
									</button></li>
								<li id="*27a4afa8-57a6-11ea-b70a-020027310001"
									otdid="27a4afa8-57a6-11ea-b70a-020027310001" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#휴가문화개선</span>
									</button></li>
								<li id="*114b23a6-84c4-11e8-8165-020027310001"
									otdid="114b23a6-84c4-11e8-8165-020027310001" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#산업관광</span>
									</button></li>
								<li id="*daf2add9-b198-49cf-adbb-a14957da3a3c"
									otdid="daf2add9-b198-49cf-adbb-a14957da3a3c" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#지역명사문화여행</span>
									</button></li>
								<li id="*81f62fd1-8939-11e8-8165-020027310001"
									otdid="81f62fd1-8939-11e8-8165-020027310001" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#시티투어</span>
									</button></li>
								<li id="*54ddd9f5-fbf0-4b1c-b90b-27f5ec2168a3"
									otdid="54ddd9f5-fbf0-4b1c-b90b-27f5ec2168a3" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#관광두레</span>
									</button></li>
								<li id="*4e706603-293b-11eb-b8bd-020027310001"
									otdid="4e706603-293b-11eb-b8bd-020027310001" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#문화관광축제</span>
									</button></li>
								<li id="*b55ffe10-84c3-11e8-8165-020027310001"
									otdid="b55ffe10-84c3-11e8-8165-020027310001" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#'열린 관광' 모두의 여행</span>
									</button></li>
								<li id="*7c118d89-d51e-11ea-b8bd-020027310001"
									otdid="7c118d89-d51e-11ea-b8bd-020027310001" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#전통한옥</span>
									</button></li>
								<li id="*27f7a2ca-84c4-11e8-8165-020027310001"
									otdid="27f7a2ca-84c4-11e8-8165-020027310001" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#생태녹색관광</span>
									</button></li>
								<li id="*e6900ef3-cfaf-46df-beb4-5df186afb37d"
									otdid="e6900ef3-cfaf-46df-beb4-5df186afb37d" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#생활관광</span>
									</button></li>
								<li id="*287776d6-8939-11e8-8165-020027310001"
									otdid="287776d6-8939-11e8-8165-020027310001" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#추천! 웰니스 관광지</span>
									</button></li>
								<li id="*cce9b7a8-8d93-441a-bbbd-68c3a3baa712"
									otdid="cce9b7a8-8d93-441a-bbbd-68c3a3baa712" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#안전여행</span>
									</button></li>
								<li id="*7ff670df-84fa-11e8-8165-020027310001"
									otdid="7ff670df-84fa-11e8-8165-020027310001" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#추천! 가볼만한곳</span>
									</button></li>
								<li id="*9e37bef2-f8e2-46c8-9b87-e060e2a4b2c8"
									otdid="9e37bef2-f8e2-46c8-9b87-e060e2a4b2c8" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#DMZ 평화관광</span>
									</button></li>
								<li id="*456a84d1-84c4-11e8-8165-020027310001"
									otdid="456a84d1-84c4-11e8-8165-020027310001" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#한국관광품질인증</span>
									</button></li>
								<li id="*622bcd99-84fa-11e8-8165-020027310001"
									otdid="622bcd99-84fa-11e8-8165-020027310001" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#한국관광100선</span>
									</button></li>
								<li id="*638f5f2a-d1e2-4ade-a5d4-acd2b2d4b434"
									otdid="638f5f2a-d1e2-4ade-a5d4-acd2b2d4b434" maintype="4"
									tagtype="brand"><button type="button" class="btn">
										<span>#비대면 안심관광지</span>
									</button></li>
							</ul>
							<div class="btn_area">
								<a
									onclick="javascript:$('.box_rightType1').removeClass('on');$('body').css('overflow','');">확인</a>
							</div>
						</div>
						<!-- //태그 리스트 -->

	        </div>

	    </div>

	</div>

	    </div>
			
		<!-- partial -->
		<script src="./script.js"></script>
	</main>
	
	
	
	<footer></footer>

</body>
</html>