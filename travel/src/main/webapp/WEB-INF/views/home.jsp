<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/home/swiper.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/home/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/home/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/home/mainmo.css">

<div class="swiper-container" id="mainTab">
	<ul class="swiper-wrapper">
		<li class="otherTab swiper-slide" style="display: none;"></li>
		<li class="homeTab swiper-slide" style="display: list-item;">
			<div id="contents" class="main_contents">
				<div class="main_curation_area">
					<div class="tit">
						<h2>
							님을 위한 맞춤 여행지 추천
						</h2>
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
									<a href="/notice/news_list.do" class="tit_atc">오늘의 여행 Issue<span
										class="btn_more">더보기</span></a>
									<ul class="list_board">
										<li><a href="javascript:"
											onclick="goCuration(1,&quot;https://korean.visitkorea.or.kr/notice/news_detail.do?nwsid=1c6cdee5-d08c-4275-a4c5-f0ced260fd7c&quot;)"
											title="일상회복 프로젝트! 번아웃 트래블 영상 공개! 로 이동"><em
												style="color: #a2660d">넉살 x 카더가든 |</em>일상회복 프로젝트! 번아웃 트래블 영상
												공개!</a></li>
										<li><a href="javascript:"
											onclick="goCuration(1,&quot;https://korean.visitkorea.or.kr/notice/news_detail.do?nwsid=49b5ca54-b003-4730-b773-edcb8fb6912d&quot;)"
											title="2022 관광기업 미니잡페어 in 서울 로 이동"><em
												style="color: #a2660d">한국관광공사ㅣ</em>2022 관광기업 미니잡페어 in 서울</a></li>
										<li><a href="javascript:"
											onclick="goCuration(1,&quot;https://korean.visitkorea.or.kr/notice/news_detail.do?nwsid=1c2ad23d-0429-4d7c-9a2c-b31c864b3e7f&quot;)"
											title="2022년도 공공기관과 함께하는 혁신 아이디어 공모 로 이동"><em
												style="color: #a2660d">한국관광공사ㅣ</em>2022년도 공공기관과 함께하는 혁신 아이디어
												공모</a></li>
										<li><a href="javascript:"
											onclick="goCuration(1,&quot;https://www.movv.co/event?code=172&quot;)"
											title="KTX+무브 무료픽업 로 이동"><em style="color: #a2660d">2022-03-10
													~ 2022-06-30 | </em>KTX+무브 무료픽업</a></li>
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
												<%for(int i=0; i<4; i++) {%>
												<li>
													<a href="" onclick="">
														<img class="swiper-lazy swiper-lazy-loaded" alt="" style="background-color: #ffffff;"
															src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=a07d58ae-4bab-4f36-baeb-b5b44614d3ad">
													</a>
												</li>
												<%} %>
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
								<div
									class="swiper-container swiper-container-initialized swiper-container-horizontal">
									<ul class="swiper-wrapper" id="bannerMobile1"
										style="transition-duration: 300ms;">
										<li class="swiper-slide swiper-slide-duplicate"
											data-swiper-slide-index="2">
											<ul class="clfix">
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/tweek2022/playlistEvent.do','나만의 여행플레이리스트 만들기');"
													tabindex="-1"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=a07d58ae-4bab-4f36-baeb-b5b44614d3ad"
														alt="나만의 여행플레이리스트 만들기" style="background-color: #ffffff;"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/event_detail.do?cotid=1f83e8b8-93ca-455f-adbe-988feea942c6','부모님과의 여.행.기 인증샷 이벤트');"
													tabindex="-1"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=478a03d0-aa62-401d-b6e8-b979ebb8ceaa"
														alt="부모님과의 여.행.기 인증샷 이벤트"
														style="background-color: #ffffff;"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://visitkoreanmarket.or.kr/kor/','시장이 여행이 되다! 이벤트 참여하고 경품받자!');"
													tabindex="-1"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=6f7e5519-390e-4b9b-a8c8-8ddc7be1c042"
														alt="시장이 여행이 되다! 이벤트 참여하고 경품받자!"
														style="background-color: #ffffff;"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=57a4c482-c099-4bb2-971a-0ad13afe5759&amp;chk=c6FLGQAaXZPqtsWY','Pokémon GO와 함께하는 대한민국 구석구석 발도장깨기! ');"
													tabindex="-1"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=e86984fd-e0e4-4d7d-af40-f71c0e92e5ff"
														alt="Pokémon GO와 함께하는 대한민국 구석구석 발도장깨기! "
														style="background-color: #ffffff;"></a></li>
											</ul>
										</li>
										<li class="swiper-slide" data-swiper-slide-index="0">
											<ul class="clfix">
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=55d51611-060e-4a0b-b254-16f20368804e&amp;chk=cXu0Cve5GixNOrB9','국내 여행 준비중이라면 [교통할인혜택]');"
													tabindex="0"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=026ba0e0-990e-4661-9ef1-03c79c5e56f9"
														alt="국내 여행 준비중이라면 [교통할인혜택]"
														style="background-color: #ffffff;"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=3242fac5-7436-4767-9470-36b2803d4433&amp;chk=7fipohAeCxUbVMt0','여행의 완성은 잠자리! [숙박할인혜택]');"
													tabindex="0"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=c1ce6037-5a5a-47ab-8450-e54422d59993"
														alt="여행의 완성은 잠자리! [숙박할인혜택]"
														style="background-color: #ffffff;"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=bccc1b89-885c-4fbf-a6d2-c436a109817b&amp;chk=qUtHOZBomDpWXZWK','다양한 놀거리가 궁금하다면? [놀거리할인혜택]');"
													tabindex="0"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=bd81307d-4134-49ec-8c7f-8338b3d9dbc0"
														alt="다양한 놀거리가 궁금하다면? [놀거리할인혜택]"
														style="background-color: #ffffff;"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=c9bf1ed3-7833-4109-8107-efc012785b44&amp;chk=R23GpJdh51dWLsiR','2022 놀이공원 할인대전');"
													tabindex="0"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=917e3976-e2b0-4183-9689-b9d00712eb3e"
														alt="2022 놀이공원 할인대전" style="background-color: #ffffff;"></a></li>
											</ul>
										</li>
										<li class="swiper-slide" data-swiper-slide-index="1">
											<ul class="clfix">
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=35088067-41ac-4191-994e-56f77df3f46d&amp;con_type=10000','월간 19투어 영주편! 영주의 숨은 매력을 발견해보세요!');"
													tabindex="-1"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=ed866238-f2fb-4344-af25-0502efd2d1a1"
														alt="월간 19투어 영주편! 영주의 숨은 매력을 발견해보세요!"
														style="background-color: #ffffff;"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=610ce1b1-0a60-4b1f-9d06-3e8c03b244e5&amp;chk=7ZMLJdRfXDNNsH0m','포토존에도 퍼스널 컬러가 필요해~! 재미로 보는 웜톤 쿨톤 여행지');"
													tabindex="-1"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=435e07bb-0e45-43f9-b01c-1ae9dfe2a183"
														alt="포토존에도 퍼스널 컬러가 필요해~! 재미로 보는 웜톤 쿨톤 여행지"
														style="background-color: #ffffff;"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/trss/applyintro.do?utm_source=main_showcase','지금 바로 여행을 구독하세요!');"
													tabindex="-1"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=91efcf86-3f94-4b63-97bf-3a75877b0daa"
														alt="지금 바로 여행을 구독하세요!" style="background-color: #ffffff;"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=f02e220a-1d95-47fb-90ac-414a91a6e881&amp;chk=f9ugag4AJLdGrvs8','경북 · 강원 산불 피해지역으로 떠나는 착한 여행 ‘GO EAST’ ');"
													tabindex="-1"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=03fc4121-63b9-497c-bc83-e2299ff1e577"
														alt="경북 · 강원 산불 피해지역으로 떠나는 착한 여행 ‘GO EAST’ "
														style="background-color: #ffffff;"></a></li>
											</ul>
										</li>
										<li class="swiper-slide" data-swiper-slide-index="2">
											<ul class="clfix">
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/tweek2022/playlistEvent.do','나만의 여행플레이리스트 만들기');"
													tabindex="-1"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=a07d58ae-4bab-4f36-baeb-b5b44614d3ad"
														alt="나만의 여행플레이리스트 만들기" style="background-color: #ffffff;"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/event_detail.do?cotid=1f83e8b8-93ca-455f-adbe-988feea942c6','부모님과의 여.행.기 인증샷 이벤트');"
													tabindex="-1"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=478a03d0-aa62-401d-b6e8-b979ebb8ceaa"
														alt="부모님과의 여.행.기 인증샷 이벤트"
														style="background-color: #ffffff;"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://visitkoreanmarket.or.kr/kor/','시장이 여행이 되다! 이벤트 참여하고 경품받자!');"
													tabindex="-1"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=6f7e5519-390e-4b9b-a8c8-8ddc7be1c042"
														alt="시장이 여행이 되다! 이벤트 참여하고 경품받자!"
														style="background-color: #ffffff;"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=57a4c482-c099-4bb2-971a-0ad13afe5759&amp;chk=c6FLGQAaXZPqtsWY','Pokémon GO와 함께하는 대한민국 구석구석 발도장깨기! ');"
													tabindex="-1"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=e86984fd-e0e4-4d7d-af40-f71c0e92e5ff"
														alt="Pokémon GO와 함께하는 대한민국 구석구석 발도장깨기! "
														style="background-color: #ffffff;"></a></li>
											</ul>
										</li>
										<li class="swiper-slide swiper-slide-duplicate"
											data-swiper-slide-index="0">
											<ul class="clfix">
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=55d51611-060e-4a0b-b254-16f20368804e&amp;chk=cXu0Cve5GixNOrB9','국내 여행 준비중이라면 [교통할인혜택]');"
													tabindex="-1"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=026ba0e0-990e-4661-9ef1-03c79c5e56f9"
														alt="국내 여행 준비중이라면 [교통할인혜택]"
														style="background-color: #ffffff;"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=3242fac5-7436-4767-9470-36b2803d4433&amp;chk=7fipohAeCxUbVMt0','여행의 완성은 잠자리! [숙박할인혜택]');"
													tabindex="-1"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=c1ce6037-5a5a-47ab-8450-e54422d59993"
														alt="여행의 완성은 잠자리! [숙박할인혜택]"
														style="background-color: #ffffff;"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=bccc1b89-885c-4fbf-a6d2-c436a109817b&amp;chk=qUtHOZBomDpWXZWK','다양한 놀거리가 궁금하다면? [놀거리할인혜택]');"
													tabindex="-1"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=bd81307d-4134-49ec-8c7f-8338b3d9dbc0"
														alt="다양한 놀거리가 궁금하다면? [놀거리할인혜택]"
														style="background-color: #ffffff;"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=c9bf1ed3-7833-4109-8107-efc012785b44&amp;chk=R23GpJdh51dWLsiR','2022 놀이공원 할인대전');"
													tabindex="-1"><img
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=917e3976-e2b0-4183-9689-b9d00712eb3e"
														alt="2022 놀이공원 할인대전" style="background-color: #ffffff;"></a></li>
											</ul>
										</li>
									</ul>
									<span class="swiper-notification" aria-live="assertive"
										aria-atomic="true"></span>
								</div>
								<div class="paging">
									<div class="btn_autoArea">
										<button class="btn_autoPlay">재생</button>
										<button class="btn_autoStop">멈춤</button>
									</div>
									<div
										class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div>
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