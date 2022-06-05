<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/festival/swiper.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/festival/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/festival/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/festival/content.css">


<style type="text/css">
.slides {
    transition: left 0.5s ease-out;
}
</style>

<script type="text/javascript">
$(function() {
	var slides = document.querySelector('.slides');
	var slide = document.querySelectorAll('.slides div');
	var currentIdx = 0;
	var slideCount = slide.length;
	var preBtn = document.querySelector('.swiper-button-prev');
	var nextBtn = document.querySelector('.swiper-button-next');
	
	function moveSlide(num) {
		slides.style.left = -num * 256 + 'px';
		currentIdx = num;
	}
	
	nextBtn.addEventListener('click', function() {
		if(currentIdx < slideCount - 3) {
			moveSlide(currentIdx + 1);
		} else {
			moveSlide(0);
		}
	});
	
	preBtn.addEventListener('click', function() {
		if(currentIdx > 0) {
			moveSlide(currentIdx - 1);
		} else {
			moveSlide(slideCount - 3);
		}
	});
});
	
</script>

<div class="container-f mb-2">
	<div class="swiper-container" id="mainTab">
		<ul class="swiper-wrapper" style="padding-left: 0;">
			<li class="otherTab swiper-slide" style="display: none;"></li>
			<li class="homeTab swiper-slide" style="display: none;"></li>
			<li class="areaTab swiper-slide" style="display: list-item;">
			<!-- contents -->
				<div id="contents" class="wideType1 main_contents">
					<div class="zone_wrap">
						<div class="list_zone">
							<div class="tit">
								<h2 id="zoneTitle">세종시</h2>
							</div>
							<!-- type0 클래스 수정 -->
							<div class="swiper-container2 type0" id="zoneArr">
								<!-- dot 0개일경우 class type1, dot 1개일경우 class type1 , dot 2개일경우 class type2, dot 3개일경우 class type3-->
								<!-- // type0 클래스 수정 -->
								<div class="swiper-wrapper">
									<div id="zone1" class="swiper-slide" data-areacode="">
										<button type="button">서울</button>
									</div>
									<div id="zone2" class="swiper-slide" data-areacode="">
										<button type="button">부산</button>
									</div>
									<div id="zone3" class="swiper-slide" data-areacode="">
										<button type="button">대구</button>
									</div>
									<div id="zone4" class="swiper-slide" data-areacode="">
										<button type="button">인천</button>
									</div>
									<div id="zone5" class="swiper-slide" data-areacode="">
										<button type="button">광주</button>
									</div>
									<div id="zone6" class="swiper-slide" data-areacode="">
										<button type="button">대전</button>
									</div>
									<div id="zone7" class="swiper-slide" data-areacode="">
										<button type="button">울산</button>
									</div>
									<div id="zone8" class="swiper-slide on" data-areacode="">
										<button type="button">세종</button>
										<span class="selected_text blind">선택됨</span>
									</div>
									<div id="zone9" class="swiper-slide" data-areacode="">
										<button type="button">경기</button>
									</div>
									<div id="zone10" class="swiper-slide" data-areacode="">
										<button type="button">강원</button>
									</div>
									<div id="zone11" class="swiper-slide" data-areacode="">
										<button type="button">충북</button>
									</div>
									<div id="zone12" class="swiper-slide" data-areacode="">
										<button type="button">충남</button>
									</div>
									<div id="zone13" class="swiper-slide" data-areacode="">
										<button type="button">전북</button>
									</div>
									<div id="zone14" class="swiper-slide" data-areacode="">
										<button type="button">전남</button>
									</div>
									<div id="zone15" class="swiper-slide" data-areacode="">
										<button type="button">경북</button>
									</div>
									<div id="zone16" class="swiper-slide" data-areacode="">
										<button type="button">경남</button>
									</div>
									<div id="zone17" class="swiper-slide" data-areacode="">
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
											<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=79709dea-bb4a-4677-9fc6-8c7a141ebf17" alt="지금, 사계展">
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
										<a href="" class="btn_detail" title="">자세히 보기 </a>
									</div>
									
									<!-- 오른쪽에 3개 짜리 -->
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
									</div>
									<!-- 오른쪽 3개짜리 끝 -->	
									
									<div class="list_sub">
										<!--  여기 없어도 됨
										<div class="inr" style="overflow: hidden; height: 25px;">
											<ul class="clfix" id="sigungulist" style="height: auto;">
												<li><a title="세종시 문화관광 홈페이지_새창">세종시</a></li>
											</ul>
										</div>
										-->
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
								<div class="swiper-wrapper slides" id="fescalendar"
									style="transform: translate3d(12px, 0px, 0px);">
									
									<div class="swiper-slide swiper-slide-duplicate" style="margin-right: 20px;">
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
									
									<div class="swiper-slide swiper-slide-duplicate" style="margin-right: 20px;">
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
									
									
									<%for(int i=0; i<5; i++){ %>
									<div class="swiper-slide swiper-slide-duplicate" style="margin-right: 20px;">
										<a href="" title="통영 문화재 야행 로 이동">
											<span class="img swiper-lazy swiper-lazy-loaded"
												style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=b6b383db-0d04-4caa-b961-c8b7b9793cd6&quot;);">
											</span>
											<span class="hover_cont">
												<span class="date">2022.06.03 ~ 2022.06.05</span>
												<strong>통영 문화재 야행</strong>
												<span class="area">경남 통영시</span>
											</span>
										</a>
									</div>
									<%} %>
									
								</div>
								<div class="swiper-button-next" tabindex="0" role="button"
									aria-label="Next slide">다음</div>
								<div class="swiper-button-prev" tabindex="0" role="button"
									aria-label="Previous slide">이전</div>
								<span class="swiper-notification" aria-live="assertive"
									aria-atomic="true"></span>
							</div>
						</div>

						<a href="" class="calendar"><span>축제 캘린더</span>로 이동</a>
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
					<strong>총<span id="totalCnt">1,181</span>건</strong>
					<div class="btn_txt">
						<button type="button" class="on" id="1" title="선택됨">최신순</button>
						<button type="button" id="2">인기순</button>
					</div>
					<button type="button" class="btn_mPop">상세조회</button>
				</div>
				<h3 class="blind" id="blindsearchtype">최신순</h3>
				<ul class="list_thumType flnon">
					<%for(int i= 0; i < 5; i++) { %>
					<li class="bdr_nor">
						<div class="photo">
							<a href="javascript:"
								onclick="goDetail(&quot;b522c193-66bb-4bea-a814-6abad43e845e&quot;,&quot;A02&quot;,&quot;A0207&quot;,&quot;32&quot;);"><img
								src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=dd3fbaa5-fb75-4ac8-b37f-643a464e3569&amp;thumb"
								alt="2022 강릉단오제"><em class="flag type_ing">진행중</em> <!-- type_ing : 진행중, type_before : 진행전, type_end : 취소 -->
							</a>
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
						<button type="button" title="열기" class="btn_view" onclick="">더보기</button>
						<div class="pop_subMenu">
							<ul>
								<li class="btn_far">
									<a href="" onclick="">즐겨찾기</a>
								</li>
								<li class="btn_share" id="">
									<a href="" onclick="">공유하기</a>
								</li>
							</ul>
						</div>
					</li>
				<%} %>
				</ul>
				
				<!-- paging -->
				<div class="page_box">
					
				</div>
				<!-- //paging -->
				
			</div>
			
			<div class="box_rightType1">
				<!-- 태그 리스트 -->
				<div class="area_tagList">
					<ul class="tag_list js_multi" id="monthlist">
						<li id="All">
							<button type="button" class="btn_all_active">
								<span>#전체</span>
							</button>
						</li>
						<li id="01">
							<button type="button" class="btn">
								<span>#1월</span>
							</button>
						</li>
						<li id="02">
							<button type="button" class="btn">
								<span>#2월</span>
							</button>
						</li>
						<li id="03">
							<button type="button" class="btn">
								<span>#3월</span>
							</button>
						</li>
						<li id="04">
							<button type="button" class="btn">
								<span>#4월</span>
							</button>
						</li>
						<li id="05">
							<button type="button" class="btn">
								<span>#5월</span>
							</button>
						</li>
						<li id="06">
							<button type="button" class="btn">
								<span>#6월</span>
							</button>
						</li>
						<li id="07">
							<button type="button" class="btn">
								<span>#7월</span>
							</button>
						</li>
						<li id="08">
							<button type="button" class="btn">
								<span>#8월</span>
							</button>
						</li>
						<li id="09">
							<button type="button" class="btn">
								<span>#9월</span>
							</button>
						</li>
						<li id="10">
							<button type="button" class="btn">
								<span>#10월</span>
							</button>
						</li>
						<li id="11">
							<button type="button" class="btn">
								<span>#11월</span>
							</button>
						</li>
						<li id="12">
							<button type="button" class="btn">
								<span>#12월</span>
							</button>
						</li>
					</ul>
					<ul class="tag_list area_list js_one" id="arealist">
						<li id="All">
							<button type="button" class="btn_all_active">
								<span>#전체</span>
							</button>
						</li>
						<li id="">
							<button type="button" class="btn">
								<span>#서울</span>
							</button>
						</li>
						<li id="">
							<button type="button" class="btn">
								<span>#부산</span>
							</button>
						</li>
						<li id="">
							<button type="button" class="btn">
								<span>#대구</span>
							</button>
						</li>
						<li id="">
							<button type="button" class="btn">
								<span>#인천</span>
							</button>
						</li>
						<li id="">
							<button type="button" class="btn">
								<span>#광주</span>
							</button>
						</li>
						<li id="">
							<button type="button" class="btn">
								<span>#대전</span>
							</button>
						</li>
						<li id="">
							<button type="button" class="btn">
								<span>#울산</span>
							</button>
						</li>
						<li id="">
							<button type="button" class="btn">
								<span>#세종</span>
							</button>
						</li>
						<li id="">
							<button type="button" class="btn">
								<span>#경기</span>
							</button>
						</li>
						<li id="">
							<button type="button" class="btn">
								<span>#강원</span>
							</button>
						</li>
						<li id="">
							<button type="button" class="btn">
								<span>#충북</span>
							</button>
						</li>
						<li id="">
							<button type="button" class="btn">
								<span>#충남</span>
							</button>
						</li>
						<li id="">
							<button type="button" class="btn">
								<span>#경북</span>
							</button>
						</li>
						<li id="">
							<button type="button" class="btn">
								<span>#경남</span>
							</button>
						</li>
						<li id="">
							<button type="button" class="btn">
								<span>#전북</span>
							</button>
						</li>
						<li id="">
							<button type="button" class="btn">
								<span>#전남</span>
							</button>
						</li>
						<li id="">
							<button type="button" class="btn">
								<span>#제주</span>
							</button>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
