<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/home/swiper.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/home/common2.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/home/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/home/mainmo.css">

<style>
.imtext2 {
    position: absolute;
    top: 10px;
    font-size: 20px;
    color: white;
    font-weight: bold;
    left: 15px;
    z-index: 1;
    font-size: 30px;
    text-shadow: 1px 1px 1px #000;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    width: 87%;
}
.imtext5 {
    position: absolute;
    top: 54px;
    left: 15px;
    z-index: 1;
    font-size: 20px;
    color: white;
    font-weight: bold;
    text-shadow: 1px 1px 1px #000;
}

.imtext3 {
    position: absolute;
    top: 175px;
    left: 15px;
    z-index: 1;
    font-size: 20px;
    color: white;
    font-weight: bold;
    text-shadow: 1px 1px 1px #000;
}

.imtext4 {
    position: absolute;
    top: 205px;
    left: 15px;
    z-index: 1;
    font-size: 20px;
    color: white;
    font-weight: bold;
    text-shadow: 1px 1px 1px #000;
}
</style>


<div class="swiper-container" id="mainTab">
	<ul class="swiper-wrapper">
		<li class="otherTab swiper-slide" style="display: none;"></li>
		<li class="homeTab swiper-slide" style="display: list-item;">
			<div id="contents" class="main_contents">

				<div class="main_curation_area">
					<div class="tit">
						<c:choose>
							<c:when test="${not empty sessionScope.member.userName}">
								<h2><strong>${sessionScope.member.userName}</strong>님을 위한 테마별 여행 코스</h2>
							</c:when>
							<c:otherwise>
								<h2><strong>테마별 </strong>여행 코스 추천</h2>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="swiper-container swiper-container-initialized swiper-container-horizontal">
						<div class="swiper-wrapper" id="curationlist" style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
							<div class="swiper-slide swiper-slide-duplicate">
								<a href="${pageContext.request.contextPath}/theme/list">
									<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded" style="background-image: url('/trip/resources/images/home/산.jpg');"></span>
									</div>
									<strong>산 코스</strong>
								</a>
							</div>
							
							<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev">
								<a href="${pageContext.request.contextPath}/theme/list">
									<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded" style="background-image: url('/trip/resources/images/home/바다.jpg');"></span>
									</div>
									<strong>바다 코스</strong></a>
							</div>
							<div class="swiper-slide swiper-slide-active">
								<a href="${pageContext.request.contextPath}/theme/list">
									<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded" style="background-image: url('/trip/resources/images/home/도시.jpg');"></span>
									</div>
									<strong>도시 코스</strong></a>
							</div>
							<div class="swiper-slide swiper-slide-next">
								<a href="${pageContext.request.contextPath}/theme/list">
									<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded" style="background-image: url('/trip/resources/images/home/나들이.jpg');"></span>
									</div>
									<strong>나들이 코스</strong></a>
							</div>
							
							
							<div class="swiper-slide" onclick="">
								<a href="#">
									<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded" style="background-image: url('/trip/resources/images/home/액티비티.jpg');"></span>
									</div>
									<strong>액티비티 코스</strong></a>
							</div>
						</div>
						
						<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
					</div>
				</div>





				<!-- taglist -->
				<div class="specialEdition">
					<div class="mc_inner">
						<div class="top_cont clfix">
							<div class="top_leftCont">
								<div class="videoArea">
									<div class="youtube_area">
										<div id="youtube" class="youtube_box">
								 			<div class="festival_container">
												<a href="${pageContext.request.contextPath}/festival/list">
													<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=5ec3b1e0-e2f4-4d34-8b4b-3612dc6e366c" alt="전체 축제 리스트 페이지">
												</a>
												<div class="text">지역별 축제 모아보기!</div>
											</div>
										</div>
									</div>
								</div>
								<div class="article bd0">
									<a href="${pageContext.request.contextPath}/freebbs/list" class="tit_atc">자유 소통 공간<span
										class="btn_more">더보기</span></a>
									<ul class="list_board">
										<li>
											<a href="#" onclick="" title="">
												<em style="color: #a2660d"> 제주토박이 |</em>제주도 현지인 로컬 맛집 추천합니다!!(광고 아님)
											</a>
										</li>
										<li>
											<a href="#" onclick="" title="">
												<em style="color: #a2660d"> 할룽 ㅣ</em>강릉 여행 코스 한 번만 봐주세요~~
											</a>
										</li>
										<li>
											<a href="#" onclick="" title="">
												<em style="color: #a2660d">핑크모자ㅣ</em>강릉 카페거리 쪽 맛집 추천 좀 해주세용! 
											</a>
										</li>
										<li>
											<a href="#" onclick="" title="">
												<em style="color: #a2660d">인산타수ㅣ</em>놀려왔는데 비오네요..ㅜ
											</a>
										</li>
									</ul>
								</div>
							</div>
							<!-- 홍보배너 (PC)-->
							<div class="banner_pcTop active">
								<div
									class="swiper-container swiper-container-initialized swiper-container-horizontal">
									<ul class="swiper-wrapper"
										style="transition-duration: 0ms; transform: translate3d(-930px, 0px, 0px);">
										<li class="swiper-slide" style="width: 465px;"></li>
										<li class="swiper-slide" style="width: 465px;"></li>
										
										<li class="swiper-slide swiper-slide-next"
											data-swiper-slide-index="2" style="width: 465px;">
											<ul>
												<li>
													<a href="${pageContext.request.contextPath}/travelCourse/article?courseNum=25&page=1">
														<img class="swiper-lazy swiper-lazy-loaded" alt="" style="background-color: #ffffff;"
															src="${pageContext.request.contextPath}/uploads/course/20220623152618282867366784900.jpg">
														<span class="imtext2">제주도 맛집탐험!</span>
														<span class="imtext5"># 맛코스</span>
														<span class="imtext3">지역 : 제주도</span>
														<span class="imtext4">기간: 1박2일</span>
													</a>
												</li>
												<li>
													<a href="${pageContext.request.contextPath}/travelCourse/article?courseNum=23&page=1">
														<img class="swiper-lazy swiper-lazy-loaded" alt="" style="background-color: #ffffff;"
															src="${pageContext.request.contextPath}/uploads/course/2022062016485828621950924600.jpg">
														<span class="imtext2">대전으로 떠나봐요!</span>
														<span class="imtext5"># 맛코스</span>
														<span class="imtext3">지역 : 대전</span>
														<span class="imtext4">기간: 2박3일</span>
													</a>
												</li>
												<li>
													<a href="${pageContext.request.contextPath}/travelCourse/article?courseNum=20&page=1">
														<img class="swiper-lazy swiper-lazy-loaded" alt="" style="background-color: #ffffff;"
															src="${pageContext.request.contextPath}/uploads/course/2022062016250627190400385800.jpg">
														<span class="imtext2">전북나들이</span>
														<span class="imtext5"># 힐링코스</span>
														<span class="imtext3">지역 : 전라북도</span>
														<span class="imtext4">기간: 1박2일</span>
													</a>
												</li>
												<li>
													<a href="${pageContext.request.contextPath}/travelCourse/article?courseNum=19&page=1">
														<img class="swiper-lazy swiper-lazy-loaded" alt="" style="background-color: #ffffff;"
															src="${pageContext.request.contextPath}/uploads/course/2022062016183426797912584400.jpg">
														<span class="imtext2">충청북도 코스</span>
														<span class="imtext5"># 가족코스</span>
														<span class="imtext3">지역 : 충청북도</span>
														<span class="imtext4">기간: 3박4일</span>
													</a>
												</li>
											</ul>
										</li>
									</ul>
									<span class="swiper-notification" aria-live="assertive"
										aria-atomic="true"></span><span class="swiper-notification"
										aria-live="assertive" aria-atomic="true"></span>
								</div>
							</div>
							<!-- // 홍보배너 (PC)-->
						</div>
						<div class="article">
							<!-- 홍보배너 (모바일) 갯수 추가 -->
							<div class="banner_mobileTop slider">
								<div class="swiper-container swiper-container-initialized swiper-container-horizontal">
									<ul class="swiper-wrapper" id="bannerMobile1"
										style="transition-duration: 300ms;">
										<li class="swiper-slide swiper-slide-duplicate"
											data-swiper-slide-index="2">
											<ul class="clfix">
												<li>
													<a href="" onclick="" tabindex="-1">
														<img
															src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=a07d58ae-4bab-4f36-baeb-b5b44614d3ad"
															alt="나만의 여행플레이리스트 만들기" style="background-color: #ffffff;">
													</a>
												</li>
												<li>
													<a href="" onclick="" tabindex="-1">
														<img
															src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=478a03d0-aa62-401d-b6e8-b979ebb8ceaa"
															alt="부모님과의 여.행.기 인증샷 이벤트"
															style="background-color: #ffffff;">
													</a>
												</li>
												<li>
													<a href="" onclick="" tabindex="-1">
													<img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=6f7e5519-390e-4b9b-a8c8-8ddc7be1c042"
														alt="시장이 여행이 되다! 이벤트 참여하고 경품받자!"
														style="background-color: #ffffff;">
													</a>
												</li>
												<li>
													<a href="" onclick="" tabindex="-1">
														<img
															src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=e86984fd-e0e4-4d7d-af40-f71c0e92e5ff"
															alt="Pokémon GO와 함께하는 대한민국 구석구석 발도장깨기! "
															style="background-color: #ffffff;">
													</a>
												</li>
											</ul>
										</li>
									</ul>
								</div>
							</div>
							<!-- // 홍보배너 (모바일)-->
						</div>
					</div>
				</div>

				<div class="mc_inner">
					<div class="btm_cont clfix">
						<!-- 컴퍼넌트 -->
						<div class="wrap_sevice3col type1">
							<h2 class="tit_atc">함께 떠나는 힐링 테마여행</h2>

							<!-- 좌측 컴포넌트 -->
							<div class="area_left" id="otherleft">
								<div class="article mWide type1">
									<div class="mdu_img1type">
										<div class="img">
											<h3 class="tit_atc">온 가족이 함께 떠나는<br>강원도 춘천 여행</h3>
											<a href="">
												<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40883d40-c313-417b-ac52-33ea48dee76b"
													alt="온 가족이 함께 떠나는 강원도 춘천 여행">
											</a>
										</div>
									</div>
								</div>
								<div class="article mt20 mWide type1">
									<div class="mdu_img1type">
										<div class="img">
											<h3 class="tit_atc">이색 체험을 할 수 있는<br>경기도 예스 키즈존 카페</h3>
											<a href="javascript:otherDetail(&quot;home&quot;,&quot;9ef0abca-cee1-4eec-8287-41c0b4719393&quot;,&quot;undefined&quot;,&quot;undefined&quot;, &quot;undefined&quot;, &quot;경기도 예스 키즈존 카페 4 <br>이색 체험도 가능하다고?🎨&quot;, &quot;이색 체험을 할 수 있는<br>경기도 예스 키즈존 카페&quot;);"><img
												src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=ac32b9a9-311c-4124-b3e1-dbf2a3a7cb51"
												alt="이색 체험을 할 수 있는 경기도 예스 키즈존 카페">
											</a>
										</div>
									</div>
								</div>
							</div>

							<!-- 중앙 컴포넌트 -->
							<div class="area_mid" id="othermid">
								<div class="article mWide type1">
									<div class="mdu_img1type">
										<div class="img">
											<h3 class="tit_atc">초록이 아름다운<br>전남 보성의 여름 여행</h3>
											<a href="">
												<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=d0b796fa-17ae-444c-a49f-690ea75fe90f"
													alt="초록이 아름다운 전남 보성의 여름 여행">
											</a>
										</div>
									</div>
								</div>
								<div class="article mt20 mWide type1">
									<div class="mdu_img1type">
										<div class="img">
											<h3 class="tit_atc">한여름에 만나는 아름다운<br>대구 동구 연꽃단지</h3>
											<a href="">
												<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=5e47b4aa-3a20-424e-8a3c-1b69a383f4d3"
													alt="한여름에 만나는 아름다운 대구 동구 연꽃단지">
											</a>
										</div>
									</div>
								</div>
							</div>

							<!-- 우측 컴포넌트 -->
							<div class="area_right" id="otherright">
								<div class="article mWide type1">
									<div class="mdu_img1type">
										<div class="img">
											<h3 class="tit_atc">새로운 히든 플레이스<br>경남 밀양으로 떠나자!</h3>
											<a href="">
												<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=e0cc43c2-8b36-40c9-a22d-e9d486ba3376"
													alt="새로운 히든 플레이스 경남 밀양으로 떠나자!">
											</a>
										</div>
									</div>
								</div>
								<div class="article mt20 mWide type1">
									<div class="mdu_img1type">
										<div class="img">
											<h3 class="tit_atc">천년의 역사가 이어지고 있는<br>전라남도 영광으로의 여행</h3>
											<a href="">
												<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=e1d77f81-cb07-4cb4-8e54-1adb6468574a"
												alt="천년의 역사가 이어지고 있는 전라남도 영광으로의 여행">
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- //컴퍼넌트 -->
					</div>
				</div>
			</div> <!-- //contents -->
		</li>
		<li class="areaTab swiper-slide" style="display: none;"></li>
	</ul>
</div>