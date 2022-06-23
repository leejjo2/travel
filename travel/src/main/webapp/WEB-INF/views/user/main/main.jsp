<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" type="text/css" href="https://cdn.visitkorea.or.kr/resources/css/swiper.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.visitkorea.or.kr/resources/css/common.css?v=20220621001" />
<link rel="stylesheet" type="text/css" href="https://cdn.visitkorea.or.kr/resources/css/main.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.visitkorea.or.kr/resources/css/content.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.visitkorea.or.kr/resources/css/main_mo.css?v=20210722001638c7206-431f-4a76-b627-c538feddfcc6" />
<link rel="stylesheet" type="text/css" href="https://cdn.visitkorea.or.kr/resources/css/switch_main_mo.css" />

<div class="swiper-container" id="mainTab">
	<ul class="swiper-wrapper">
		<li class="otherTab swiper-slide" style="display: none;"></li>
		<li class="homeTab swiper-slide" style="display: list-item;">
			<!-- visual -->
			<div class="moVisu summer" style="height: 576.6px;">
				<!-- 0311 계절별 bar class : spring, summer, autumn, winter -->
				<div
					class="swiper-container swiper-container-fade swiper-container-initialized swiper-container-horizontal">
					<div class="showcaseImg swiper-wrapper"
						style="transition-duration: 0ms;">
						<div class="swiper-slide mainshowcase"
							style="width: 1142px; opacity: 1; transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
							<a
								href="javascript:goShowcase('undefined','https://korean.visitkorea.or.kr/trss/applyintro.do?utm_source=main_showcase');"
								title="지금 여행을 구독하세요 ♥로 이동">
								<div class="bg swiper-lazy swiper-lazy-loaded"
									style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=e9449d81-2509-42f0-8b95-b21e19c0e51c&amp;mode=raw&quot;);"></div>
								<div>
									<strong class="tit" style="color: #00ffab">지금 여행을
										구독하세요 ♥</strong> <span class="tag" style="color: #ffffff">단, 5초면
										끝! 초간단 여행구독 신청하면 매월 신상여행지&amp;핫플레이스 정보부터 여행선물까지 무료!</span>
								</div>
							</a>
						</div>
						<div class="swiper-slide mainshowcase"
							style="width: 1142px; opacity: 1; transform: translate3d(-1142px, 0px, 0px); transition-duration: 0ms;">
							<a
								href="javascript:goShowcase('undefined','https://korean.visitkorea.or.kr/other/otherService.do?otdid=46a412aa-0b3b-11ea-869b-020027310001&amp;utm_source=main_showcase');"
								title="여행으로 ‘일상을 골목을 경험을 자연을’ 재생해 주세요♪로 이동">
								<div class="bg swiper-lazy swiper-lazy-loaded"
									style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=f10a65dd-f83a-49f4-8a1e-798cdb2e0fb2&amp;mode=raw&quot;);"></div>
								<div>
									<strong class="tit" style="color: #ffffff">여행으로 ‘일상을
										골목을 경험을 자연을’ 재생해 주세요♪</strong> <span class="tag" style="color: #ffffff">여행을
										잘 다녀오는 것만으로 멈춰있던 대한민국이 되살아나니까~ 이번 달엔 당신만의 여행을 재생해보세요!</span>
								</div>
							</a>
						</div>
						<div class="swiper-slide mainshowcase swiper-slide-prev"
							style="width: 1142px; opacity: 1; transform: translate3d(-2284px, 0px, 0px); transition-duration: 0ms;">
							<a
								href="javascript:goShowcase('abee0f1a-14c4-473b-a168-84efdfc58204','https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=abee0f1a-14c4-473b-a168-84efdfc58204');"
								title="지구 생물 80%는 바다에 산다, 서천 국립해양생물자원관로 이동">
								<div class="bg swiper-lazy swiper-lazy-loaded"
									style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=d07fd6bc-bda3-453b-90e0-49dd33b0b849&amp;mode=raw&quot;);"></div>
								<div>
									<strong class="tit" style="color: #ffffff">추천 가볼 만한 곳!
										‘서천’으로 떠나는 신비한 과학여행!</strong> <span class="tag" style="color: #ffffff">지구
										생물의 80%가 사는 바다 탐험 ‘국립해양생물자원관’부터, 장항스카이워크, 에코리움까지 아이와 함께 신나게!</span>
								</div>
							</a>
						</div>
						<div class="swiper-slide mainshowcase swiper-slide-active"
							style="width: 1142px; opacity: 1; transform: translate3d(-3426px, 0px, 0px); transition-duration: 0ms;">
							<a
								href="javascript:goShowcase('3477320c-54d2-4fec-b4fb-2f70a338d27a','https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=3477320c-54d2-4fec-b4fb-2f70a338d27a');"
								title="이 안에 속초 있다! 설악산과 동해 품은 신상 랜드마크 속초아이로 이동">
								<div class="bg swiper-lazy swiper-lazy-loaded"
									style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=a90cf35f-23aa-4388-b5bb-bf4f6ec1abe9&amp;mode=raw&quot;);"></div>
								<div>
									<strong class="tit" style="color: #ffffff">설악산과 동해를 모두
										품은 신상 랜드마크 등장이오!</strong> <span class="tag" style="color: #ffffff">런던아이
										부럽지 않은 대관람차 ‘속초아이’ &amp; 울산 바위뷰 카페까지! 우주- 힙플레이스 속초 여행 즐겨봐 ♪</span>
								</div>
							</a>
						</div>
						<div class="swiper-slide mainshowcase swiper-slide-next"
							style="width: 1142px; opacity: 0; transform: translate3d(-4568px, 0px, 0px); transition-duration: 0ms;">
							<a
								href="javascript:goShowcase('35e9d06b-febc-41bc-b0b6-499072614923','https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=35e9d06b-febc-41bc-b0b6-499072614923');"
								title="푸릇한 농장에 사과꽃 눈 내리다! <br>예산 돌다리 농원 힐링 팜크닉로 이동">
								<div class="bg swiper-lazy swiper-lazy-loaded"
									style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=a79d0484-c9b6-48a7-ba09-98ca37eedaea&amp;mode=raw&quot;);"></div>
								<div>
									<strong class="tit" style="color: #ffffff">하얀 사과꽃 만발한
										농원에서 즐기는 힐링 팜크닉 ♪</strong> <span class="tag" style="color: #ffffff">이런
										여행도 있어요! 팜 큐레이터 ‘프루떼’가 추천하는 프라이빗 사과🍎 피크닉 (feat. 예산 돌다리 농원)</span>
								</div>
							</a>
						</div>
						<div class="swiper-slide mainshowcase"
							style="width: 1142px; opacity: 0; transform: translate3d(-5710px, 0px, 0px); transition-duration: 0ms;">
							<a
								href="javascript:goShowcase('610ce1b1-0a60-4b1f-9d06-3e8c03b244e5','https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=610ce1b1-0a60-4b1f-9d06-3e8c03b244e5');"
								title="포토존에도 퍼스널 컬러가 필요해~! 재미로 보는 웜톤 쿨톤 여행지로 이동">
								<div class="bg swiper-lazy"
									data-background="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=8fda5c6b-489f-47a9-9590-54d15949c870&amp;mode=raw">
									<div class="swiper-lazy-preloader"></div>
								</div>
								<div>
									<strong class="tit" style="color: #ffffff"> 쿨톤 VS 웜톤!
										포토존에도 퍼스널 컬러가 필요해!</strong> <span class="tag" style="color: #ffffff">톤만
										맞춰도! 색깔만 잘 골라도 인생샷이 우르르! 미모 빛내줄 찰떡, 착붙 사진 맛집 여행지는 어디?</span>
								</div>
							</a>
						</div>
						<div class="swiper-slide mainshowcase"
							style="width: 1142px; opacity: 0; transform: translate3d(-6852px, 0px, 0px); transition-duration: 0ms;">
							<a
								href="javascript:goShowcase('ebd56248-89bc-4a3b-bfdc-40bf1ec34815','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=ebd56248-89bc-4a3b-bfdc-40bf1ec34815');"
								title="어린이, 어른이 모두 모여라! <br>부산 롯데월드 어드벤처로 이동">
								<div class="bg swiper-lazy"
									data-background="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=91403a60-3f73-43d7-863a-93f16dc6dce1&amp;mode=raw">
									<div class="swiper-lazy-preloader"></div>
								</div>
								<div>
									<strong class="tit" style="color: #ffffff">부산에 생긴 동화 속
										왕국! 롯데월드 어드벤처 부산! </strong> <span class="tag" style="color: #ffffff">국내
										최초! 스릴만점 놀이기구로 입소문난 ‘자이언트 디거’, ‘자이언트 스플래시’ 즐기고, 테마파크의 꽃 퍼레이드까지</span>
								</div>
							</a>
						</div>
					</div>
					<!-- Add Arrows -->
					<div class="swiper-button-next" tabindex="0" role="button"
						aria-label="Next slide" aria-disabled="false"></div>
					<div class="swiper-button-prev" tabindex="0" role="button"
						aria-label="Previous slide" aria-disabled="false"></div>
					<!-- Add Scrollbar -->
					<div class="swiper-scrollbar"
						style="opacity: 0; transition-duration: 400ms;">
						<div class="swiper-scrollbar-drag"
							style="transform: translate3d(402.857px, 0px, 0px); background: rgb(58, 171, 252); transition-duration: 0ms; width: 134.286px;"></div>
					</div>
					<span class="swiper-notification" aria-live="assertive"
						aria-atomic="true"></span><span class="swiper-notification"
						aria-live="assertive" aria-atomic="true"></span>
				</div>
			</div> <!-- // visual -->

			<div id="contents" class="main_contents">
				<!-- taglist -->
				<div class="main_taglist" style="padding-right: 80px;">
					<div class="inr" style="height: 100px;">
						<ul class="taglist clfix">
							<li><a href="javascript:goAlllist('','');"><span>#전체</span></a></li>
							<li><a href="/main/cr_main.do"><span>#여행콕콕</span></a></li>
							<li><a
								href="javascript:goAlllist('08b47590-4b3f-4b4f-91b2-8fd143e0fa88','여행구독');"><span>#여행구독</span></a></li>
							<li><a
								href="javascript:goAlllist('735af736-a028-11ec-b08c-0050569dc2b9','여행으로_응원하는_산불피해지역');"><span>#여행으로_응원하는_산불피해지역</span></a></li>
							<li><a
								href="javascript:goAlllist('627d7664-a686-440f-a5f1-0413cae679bc','테마여행');"><span>#테마여행</span></a></li>
							<li><a
								href="javascript:goAlllist('00bb51f9-922d-46f4-83e5-3db360575b96','로맨틱_야경');"><span>#로맨틱_야경</span></a></li>
							<li><a
								href="javascript:goAlllist('e694b920-de38-40e9-a08d-2d3c85e2f79d','바다여행');"><span>#바다여행</span></a></li>
							<li><a
								href="javascript:goAlllist('e378af13-f6d1-11e8-9488-02001c6b0001','숙소추천_한국관광품질인증업소');"><span>#숙소추천_한국관광품질인증업소</span></a></li>
							<li><a
								href="javascript:goAlllist('01161a8e-fbe7-40b7-a0ba-54aace3144ab','당일치기여행');"><span>#당일치기여행</span></a></li>
							<li><a
								href="javascript:goAlllist('a1b889a6-3395-4c1e-bad1-6226268bffd8','제주여행지추천');"><span>#제주여행지추천</span></a></li>
							<li><a
								href="javascript:goAlllist('6007d888-9e88-11ec-b08c-0050569dc2b9','2022년_여름시즌 비대면 안심관광지');"><span>#2022년_여름시즌
										비대면 안심관광지</span></a></li>
							<li><a
								href="javascript:goAlllist('c2d6e663-6186-11eb-b08c-0050569dc2b9','꿀잼_액티비티');"><span>#꿀잼_액티비티</span></a></li>
							<li><a
								href="javascript:goAlllist('62492549-e40b-4f9d-8f79-48f9eb50d39b','부산가볼만한곳');"><span>#부산가볼만한곳</span></a></li>
							<li><a
								href="javascript:goAlllist('e36a319c-7cf2-11e9-9488-02001c6b0001','반려견동반여행지');"><span>#반려견동반여행지</span></a></li>
							<li><a
								href="javascript:goAlllist('423a9351-bb43-45b8-97d9-2ca01b96bd10','가족과함께');"><span>#가족과함께</span></a></li>
							<li><a
								href="javascript:goAlllist('af5e51e3-83df-11e8-8165-020027310001','역사여행');"><span>#역사여행</span></a></li>
							<li><a
								href="javascript:goAlllist('898aa43b-9714-11e8-8165-020027310001','아이와함께');"><span>#아이와함께</span></a></li>
							<li><a
								href="javascript:goAlllist('623d1fa9-623b-4c19-adf6-e008c85bd4e3','21_22한국관광100선');"><span>#21_22한국관광100선</span></a></li>
							<li><a
								href="javascript:goAlllist('07ffcaf5-a05b-11e8-8165-020027310001','공공누리');"><span>#공공누리</span></a></li>
						</ul>
					</div>
					<button type="button" class="btn_more" style="display: block;">더보기</button>
				</div>
				<div class="main_curation_area">
					<div class="tit">
						<h2>
							<a href="/main/cr_main.do">여행콕콕<span>빅데이터 기반의 안전여행정보를
									콕콕 알려드려요!</span></a>
						</h2>
						<button type="button"
							onclick="layerPopup.layerShow('curationAreaPop');">지역선택</button>
					</div>
					<div
						class="swiper-container swiper-container-initialized swiper-container-horizontal">
						<div class="swiper-wrapper" id="curationlist"
							style="transition-duration: 0ms; transform: translate3d(-5430px, 0px, 0px);">
							<div class="swiper-slide swiper-slide-duplicate"
								onclick="__traceCurationConsume(this)" data-content-order="1"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="7b88431a-179d-4ae5-9530-b0669e8d7384"
								data-content-type="12" data-swiper-slide-index="0">
								<a
									href="javascript:goCurationContent('7b88431a-179d-4ae5-9530-b0669e8d7384','순천 브루어리','MAIN_A');"><em
									class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=f53bd285-6f58-4458-b51c-d2bdd1d2e056&amp;mode=progress&quot;);"></span>
									</div>
									<strong>순천 브루어리</strong></a>
							</div>
							<div class="swiper-slide swiper-slide-duplicate"
								onclick="__traceCurationConsume(this)" data-content-order="2"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="11fdf5c3-94d2-4b6b-aee9-6896a331ce76"
								data-content-type="14" data-swiper-slide-index="1">
								<a
									href="javascript:goCurationContent('11fdf5c3-94d2-4b6b-aee9-6896a331ce76','서울 롯데월드 아쿠아리움','MAIN_A');"><em
									class="danger">경계</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=294a6d30-c170-41ee-bf56-83f1c020e9a7&amp;mode=progress&quot;);"></span>
									</div>
									<strong>서울 롯데월드 아쿠아리움</strong></a>
							</div>
							<div class="swiper-slide swiper-slide-duplicate"
								onclick="__traceCurationConsume(this)" data-content-order="3"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="29dc393d-367f-4721-b283-0067bf76ffd4"
								data-content-type="12" data-swiper-slide-index="2">
								<a
									href="javascript:goCurationContent('29dc393d-367f-4721-b283-0067bf76ffd4','서울 반포한강공원','MAIN_A');"><em
									class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=bbe05db2-b849-4b7a-be76-a7e9dd58b0c8&amp;mode=progress&quot;);"></span>
									</div>
									<strong>서울 반포한강공원</strong></a>
							</div>
							<div class="swiper-slide swiper-slide-duplicate"
								onclick="__traceCurationConsume(this)" data-content-order="4"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="6a61f74a-9c2c-4784-bc05-a9dc5f933e31"
								data-content-type="12" data-swiper-slide-index="3">
								<a
									href="javascript:goCurationContent('6a61f74a-9c2c-4784-bc05-a9dc5f933e31','광주 곤지암리조트 힐링캠퍼스','MAIN_A');"><em
									class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=9ee3488e-bc64-479f-8e16-a1ad8673b63f&amp;mode=progress&quot;);"></span>
									</div>
									<strong>광주 곤지암리조트 힐링캠퍼스</strong></a>
							</div>
							<div class="swiper-slide swiper-slide-duplicate"
								onclick="__traceCurationConsume(this)" data-content-order="5"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="affa8a02-ae7b-4ad7-9bae-728b6ea04607"
								data-content-type="12" data-swiper-slide-index="4">
								<a
									href="javascript:goCurationContent('affa8a02-ae7b-4ad7-9bae-728b6ea04607','강릉 주문진읍 BTS 앨범사진 촬영지','MAIN_A');"><em
									class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=2b57c1aa-2268-4768-b7ac-bb88ddba8116&amp;mode=progress&quot;);"></span>
									</div>
									<strong>강릉 주문진읍 BTS 앨범사진 촬영지</strong></a>
							</div>
							<div class="swiper-slide swiper-slide-duplicate"
								onclick="__traceCurationConsume(this)" data-content-order="6"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="d8442fb4-848e-4f96-aa75-202037166ae2"
								data-content-type="28" data-swiper-slide-index="5">
								<a
									href="javascript:goCurationContent('d8442fb4-848e-4f96-aa75-202037166ae2','진안 운일암반일암 숲길','MAIN_A');"><em
									class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=c2066c1d-33e5-4f1e-92b4-a3d7db14e1f8&amp;mode=progress&quot;);"></span>
									</div>
									<strong>진안 운일암반일암 숲길</strong></a>
							</div>
							<div class="swiper-slide swiper-slide-duplicate"
								onclick="__traceCurationConsume(this)" data-content-order="7"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="4f6feec0-02f2-45d9-8335-1cf99df2c338"
								data-content-type="12" data-swiper-slide-index="6">
								<a
									href="javascript:goCurationContent('4f6feec0-02f2-45d9-8335-1cf99df2c338','산청 생초국제조각공원','MAIN_A');"><em
									class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=211d564e-935a-4b4b-9df2-6e9238655120&amp;mode=progress&quot;);"></span>
									</div>
									<strong>산청 생초국제조각공원</strong></a>
							</div>
							<div class="swiper-slide swiper-slide-duplicate"
								onclick="__traceCurationConsume(this)" data-content-order="8"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="1c9a8770-2bbd-4b23-8b87-00ba2388dba4"
								data-content-type="38" data-swiper-slide-index="7">
								<a
									href="javascript:goCurationContent('1c9a8770-2bbd-4b23-8b87-00ba2388dba4','서울 스타필드 코엑스몰','MAIN_A');"><em
									class="danger">경계</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=b148c046-75e9-46cf-96a4-25ae9180b883&amp;mode=progress&quot;);"></span>
									</div>
									<strong>서울 스타필드 코엑스몰</strong></a>
							</div>
							<div
								class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev"
								onclick="__traceCurationConsume(this)" data-content-order="9"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="0cfb04be-665c-4482-825e-24977087f0b9"
								data-content-type="12" data-swiper-slide-index="8">
								<a
									href="javascript:goCurationContent('0cfb04be-665c-4482-825e-24977087f0b9','대구 단산 저수지','MAIN_A');"
									class=""><em class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=b46e58ee-af71-40e1-a88b-d98eb0e99f51&amp;mode=progress&quot;);"></span>
									</div>
									<strong>대구 단산 저수지</strong></a>
							</div>
							<div
								class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active"
								onclick="__traceCurationConsume(this)" data-content-order="10"
								data-curation-type="MAIN_B" data-section="SITE_MAIN"
								data-cot-id="93d4108e-e02e-47ef-bccb-cc1f6dcaa6d7"
								data-content-type="39" data-swiper-slide-index="9">
								<a
									href="javascript:goCurationContent('93d4108e-e02e-47ef-bccb-cc1f6dcaa6d7','성남 일번지','MAIN_B');"
									class=""><em class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=bd188a0b-25db-48fd-8454-9adc63452c33&amp;mode=progress&quot;);"></span>
									</div>
									<strong>성남 일번지</strong></a>
							</div>
							<div class="swiper-slide swiper-slide-duplicate-next"
								onclick="__traceCurationConsume(this)" data-content-order="1"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="7b88431a-179d-4ae5-9530-b0669e8d7384"
								data-content-type="12" data-swiper-slide-index="0">
								<a
									href="javascript:goCurationContent('7b88431a-179d-4ae5-9530-b0669e8d7384','순천 브루어리','MAIN_A');"
									class=""><em class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=f53bd285-6f58-4458-b51c-d2bdd1d2e056&amp;mode=progress&quot;);"></span>
									</div>
									<strong>순천 브루어리</strong></a>
							</div>
							<div class="swiper-slide" onclick="__traceCurationConsume(this)"
								data-content-order="2" data-curation-type="MAIN_A"
								data-section="SITE_MAIN"
								data-cot-id="11fdf5c3-94d2-4b6b-aee9-6896a331ce76"
								data-content-type="14" data-swiper-slide-index="1">
								<a
									href="javascript:goCurationContent('11fdf5c3-94d2-4b6b-aee9-6896a331ce76','서울 롯데월드 아쿠아리움','MAIN_A');"
									class=""><em class="danger">경계</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=294a6d30-c170-41ee-bf56-83f1c020e9a7&amp;mode=progress&quot;);"></span>
									</div>
									<strong>서울 롯데월드 아쿠아리움</strong></a>
							</div>
							<div class="swiper-slide" onclick="__traceCurationConsume(this)"
								data-content-order="3" data-curation-type="MAIN_A"
								data-section="SITE_MAIN"
								data-cot-id="29dc393d-367f-4721-b283-0067bf76ffd4"
								data-content-type="12" data-swiper-slide-index="2">
								<a
									href="javascript:goCurationContent('29dc393d-367f-4721-b283-0067bf76ffd4','서울 반포한강공원','MAIN_A');"
									class=""><em class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=bbe05db2-b849-4b7a-be76-a7e9dd58b0c8&amp;mode=progress&quot;);"></span>
									</div>
									<strong>서울 반포한강공원</strong></a>
							</div>
							<div class="swiper-slide" onclick="__traceCurationConsume(this)"
								data-content-order="4" data-curation-type="MAIN_A"
								data-section="SITE_MAIN"
								data-cot-id="6a61f74a-9c2c-4784-bc05-a9dc5f933e31"
								data-content-type="12" data-swiper-slide-index="3">
								<a
									href="javascript:goCurationContent('6a61f74a-9c2c-4784-bc05-a9dc5f933e31','광주 곤지암리조트 힐링캠퍼스','MAIN_A');"
									class=""><em class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=9ee3488e-bc64-479f-8e16-a1ad8673b63f&amp;mode=progress&quot;);"></span>
									</div>
									<strong>광주 곤지암리조트 힐링캠퍼스</strong></a>
							</div>
							<div class="swiper-slide" onclick="__traceCurationConsume(this)"
								data-content-order="5" data-curation-type="MAIN_A"
								data-section="SITE_MAIN"
								data-cot-id="affa8a02-ae7b-4ad7-9bae-728b6ea04607"
								data-content-type="12" data-swiper-slide-index="4">
								<a
									href="javascript:goCurationContent('affa8a02-ae7b-4ad7-9bae-728b6ea04607','강릉 주문진읍 BTS 앨범사진 촬영지','MAIN_A');"
									class=""><em class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=2b57c1aa-2268-4768-b7ac-bb88ddba8116&amp;mode=progress&quot;);"></span>
									</div>
									<strong>강릉 주문진읍 BTS 앨범사진 촬영지</strong></a>
							</div>
							<div class="swiper-slide" onclick="__traceCurationConsume(this)"
								data-content-order="6" data-curation-type="MAIN_A"
								data-section="SITE_MAIN"
								data-cot-id="d8442fb4-848e-4f96-aa75-202037166ae2"
								data-content-type="28" data-swiper-slide-index="5">
								<a
									href="javascript:goCurationContent('d8442fb4-848e-4f96-aa75-202037166ae2','진안 운일암반일암 숲길','MAIN_A');"
									class=""><em class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=c2066c1d-33e5-4f1e-92b4-a3d7db14e1f8&amp;mode=progress&quot;);"></span>
									</div>
									<strong>진안 운일암반일암 숲길</strong></a>
							</div>
							<div class="swiper-slide" onclick="__traceCurationConsume(this)"
								data-content-order="7" data-curation-type="MAIN_A"
								data-section="SITE_MAIN"
								data-cot-id="4f6feec0-02f2-45d9-8335-1cf99df2c338"
								data-content-type="12" data-swiper-slide-index="6">
								<a
									href="javascript:goCurationContent('4f6feec0-02f2-45d9-8335-1cf99df2c338','산청 생초국제조각공원','MAIN_A');"
									class=""><em class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=211d564e-935a-4b4b-9df2-6e9238655120&amp;mode=progress&quot;);"></span>
									</div>
									<strong>산청 생초국제조각공원</strong></a>
							</div>
							<div class="swiper-slide" onclick="__traceCurationConsume(this)"
								data-content-order="8" data-curation-type="MAIN_A"
								data-section="SITE_MAIN"
								data-cot-id="1c9a8770-2bbd-4b23-8b87-00ba2388dba4"
								data-content-type="38" data-swiper-slide-index="7">
								<a
									href="javascript:goCurationContent('1c9a8770-2bbd-4b23-8b87-00ba2388dba4','서울 스타필드 코엑스몰','MAIN_A');"
									class="dim"><em class="danger">경계</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=b148c046-75e9-46cf-96a4-25ae9180b883&amp;mode=progress&quot;);"></span>
									</div>
									<strong>서울 스타필드 코엑스몰</strong></a>
							</div>
							<div class="swiper-slide swiper-slide-prev"
								onclick="__traceCurationConsume(this)" data-content-order="9"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="0cfb04be-665c-4482-825e-24977087f0b9"
								data-content-type="12" data-swiper-slide-index="8">
								<a
									href="javascript:goCurationContent('0cfb04be-665c-4482-825e-24977087f0b9','대구 단산 저수지','MAIN_A');"
									class=""><em class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=b46e58ee-af71-40e1-a88b-d98eb0e99f51&amp;mode=progress&quot;);"></span>
									</div>
									<strong>대구 단산 저수지</strong></a>
							</div>
							<div class="swiper-slide swiper-slide-active"
								onclick="__traceCurationConsume(this)" data-content-order="10"
								data-curation-type="MAIN_B" data-section="SITE_MAIN"
								data-cot-id="93d4108e-e02e-47ef-bccb-cc1f6dcaa6d7"
								data-content-type="39" data-swiper-slide-index="9">
								<a
									href="javascript:goCurationContent('93d4108e-e02e-47ef-bccb-cc1f6dcaa6d7','성남 일번지','MAIN_B');"
									class=""><em class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=bd188a0b-25db-48fd-8454-9adc63452c33&amp;mode=progress&quot;);"></span>
									</div>
									<strong>성남 일번지</strong></a>
							</div>
							<div
								class="swiper-slide swiper-slide-duplicate swiper-slide-next"
								onclick="__traceCurationConsume(this)" data-content-order="1"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="7b88431a-179d-4ae5-9530-b0669e8d7384"
								data-content-type="12" data-swiper-slide-index="0">
								<a
									href="javascript:goCurationContent('7b88431a-179d-4ae5-9530-b0669e8d7384','순천 브루어리','MAIN_A');"
									class=""><em class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=f53bd285-6f58-4458-b51c-d2bdd1d2e056&amp;mode=progress&quot;);"></span>
									</div>
									<strong>순천 브루어리</strong></a>
							</div>
							<div class="swiper-slide swiper-slide-duplicate"
								onclick="__traceCurationConsume(this)" data-content-order="2"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="11fdf5c3-94d2-4b6b-aee9-6896a331ce76"
								data-content-type="14" data-swiper-slide-index="1">
								<a
									href="javascript:goCurationContent('11fdf5c3-94d2-4b6b-aee9-6896a331ce76','서울 롯데월드 아쿠아리움','MAIN_A');"
									class="dim"><em class="danger">경계</em>
								<div class="wrap">
										<span class="swiper-lazy swiper-lazy-loaded"
											style="background-image: url(&quot;https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=294a6d30-c170-41ee-bf56-83f1c020e9a7&amp;mode=progress&quot;);"></span>
									</div>
									<strong>서울 롯데월드 아쿠아리움</strong></a>
							</div>
							<div class="swiper-slide swiper-slide-duplicate"
								onclick="__traceCurationConsume(this)" data-content-order="3"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="29dc393d-367f-4721-b283-0067bf76ffd4"
								data-content-type="12" data-swiper-slide-index="2">
								<a
									href="javascript:goCurationContent('29dc393d-367f-4721-b283-0067bf76ffd4','서울 반포한강공원','MAIN_A');"><em
									class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy"
											data-background="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=bbe05db2-b849-4b7a-be76-a7e9dd58b0c8&amp;mode=progress"><div
												class="swiper-lazy-preloader"></div></span>
									</div>
									<strong>서울 반포한강공원</strong></a>
							</div>
							<div class="swiper-slide swiper-slide-duplicate"
								onclick="__traceCurationConsume(this)" data-content-order="4"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="6a61f74a-9c2c-4784-bc05-a9dc5f933e31"
								data-content-type="12" data-swiper-slide-index="3">
								<a
									href="javascript:goCurationContent('6a61f74a-9c2c-4784-bc05-a9dc5f933e31','광주 곤지암리조트 힐링캠퍼스','MAIN_A');"><em
									class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy"
											data-background="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=9ee3488e-bc64-479f-8e16-a1ad8673b63f&amp;mode=progress"><div
												class="swiper-lazy-preloader"></div></span>
									</div>
									<strong>광주 곤지암리조트 힐링캠퍼스</strong></a>
							</div>
							<div class="swiper-slide swiper-slide-duplicate"
								onclick="__traceCurationConsume(this)" data-content-order="5"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="affa8a02-ae7b-4ad7-9bae-728b6ea04607"
								data-content-type="12" data-swiper-slide-index="4">
								<a
									href="javascript:goCurationContent('affa8a02-ae7b-4ad7-9bae-728b6ea04607','강릉 주문진읍 BTS 앨범사진 촬영지','MAIN_A');"><em
									class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy"
											data-background="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=2b57c1aa-2268-4768-b7ac-bb88ddba8116&amp;mode=progress"><div
												class="swiper-lazy-preloader"></div></span>
									</div>
									<strong>강릉 주문진읍 BTS 앨범사진 촬영지</strong></a>
							</div>
							<div class="swiper-slide swiper-slide-duplicate"
								onclick="__traceCurationConsume(this)" data-content-order="6"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="d8442fb4-848e-4f96-aa75-202037166ae2"
								data-content-type="28" data-swiper-slide-index="5">
								<a
									href="javascript:goCurationContent('d8442fb4-848e-4f96-aa75-202037166ae2','진안 운일암반일암 숲길','MAIN_A');"><em
									class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy"
											data-background="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=c2066c1d-33e5-4f1e-92b4-a3d7db14e1f8&amp;mode=progress"><div
												class="swiper-lazy-preloader"></div></span>
									</div>
									<strong>진안 운일암반일암 숲길</strong></a>
							</div>
							<div class="swiper-slide swiper-slide-duplicate"
								onclick="__traceCurationConsume(this)" data-content-order="7"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="4f6feec0-02f2-45d9-8335-1cf99df2c338"
								data-content-type="12" data-swiper-slide-index="6">
								<a
									href="javascript:goCurationContent('4f6feec0-02f2-45d9-8335-1cf99df2c338','산청 생초국제조각공원','MAIN_A');"><em
									class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy"
											data-background="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=211d564e-935a-4b4b-9df2-6e9238655120&amp;mode=progress"><div
												class="swiper-lazy-preloader"></div></span>
									</div>
									<strong>산청 생초국제조각공원</strong></a>
							</div>
							<div class="swiper-slide swiper-slide-duplicate"
								onclick="__traceCurationConsume(this)" data-content-order="8"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="1c9a8770-2bbd-4b23-8b87-00ba2388dba4"
								data-content-type="38" data-swiper-slide-index="7">
								<a
									href="javascript:goCurationContent('1c9a8770-2bbd-4b23-8b87-00ba2388dba4','서울 스타필드 코엑스몰','MAIN_A');"><em
									class="danger">경계</em>
								<div class="wrap">
										<span class="swiper-lazy"
											data-background="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=b148c046-75e9-46cf-96a4-25ae9180b883&amp;mode=progress"><div
												class="swiper-lazy-preloader"></div></span>
									</div>
									<strong>서울 스타필드 코엑스몰</strong></a>
							</div>
							<div
								class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev"
								onclick="__traceCurationConsume(this)" data-content-order="9"
								data-curation-type="MAIN_A" data-section="SITE_MAIN"
								data-cot-id="0cfb04be-665c-4482-825e-24977087f0b9"
								data-content-type="12" data-swiper-slide-index="8">
								<a
									href="javascript:goCurationContent('0cfb04be-665c-4482-825e-24977087f0b9','대구 단산 저수지','MAIN_A');"><em
									class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy"
											data-background="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=b46e58ee-af71-40e1-a88b-d98eb0e99f51&amp;mode=progress"><div
												class="swiper-lazy-preloader"></div></span>
									</div>
									<strong>대구 단산 저수지</strong></a>
							</div>
							<div
								class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active"
								onclick="__traceCurationConsume(this)" data-content-order="10"
								data-curation-type="MAIN_B" data-section="SITE_MAIN"
								data-cot-id="93d4108e-e02e-47ef-bccb-cc1f6dcaa6d7"
								data-content-type="39" data-swiper-slide-index="9">
								<a
									href="javascript:goCurationContent('93d4108e-e02e-47ef-bccb-cc1f6dcaa6d7','성남 일번지','MAIN_B');"><em
									class="good">양호</em>
								<div class="wrap">
										<span class="swiper-lazy"
											data-background="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=bd188a0b-25db-48fd-8454-9adc63452c33&amp;mode=progress"><div
												class="swiper-lazy-preloader"></div></span>
									</div>
									<strong>성남 일번지</strong></a>
							</div>
						</div>
						<div class="page">
							<div class="swiper-pagination swiper-pagination-progressbar">
								<span class="swiper-pagination-progressbar-fill"
									style="transform: translate3d(0px, 0px, 0px) scaleX(1) scaleY(1); transition-duration: 300ms;"></span>
							</div>
							<div class="swiper-button-prev" tabindex="0" role="button"
								aria-label="Previous slide">이전</div>
							<div class="swiper-button-next" tabindex="0" role="button"
								aria-label="Next slide">다음</div>
							<div class="page_num">
								<strong>10</strong>/<span>10</span>
							</div>
						</div>
						<span class="swiper-notification" aria-live="assertive"
							aria-atomic="true"></span>
					</div>
				</div>
				<!-- taglist -->
				<div class="specialEdition">
					<strong class="title" style="display: none !important;"> <img
						src="../resources/images/main/title_specialedition.gif"
						class="type_p" alt="2021 설프라이즈! 당신의 오감을 만족시킬 여행 아이디어 모았zip">
						<img src="../resources/images/main/title_specialedition_m.gif"
						class="type_m" alt="2021 설프라이즈! 당신의 오감을 만족시킬 여행 아이디어 모았zip">
					</strong>
					<div class="mc_inner">
						<div class="top_cont clfix">
							<div class="top_leftCont">
								<div class="videoArea">
									<div class="youtube_area">
										<img src="../resources/images/temp/dummy_youtube.png"
											class="img_dummy" alt="">
										<div id="youtube" class="youtube_box">
											<div id="youtube" style="height: 100%;" class="youtube_box">
												<iframe id="7c0e000f-8ab8-4d54-94ff-f048725f2e46"
													frameborder="0" allowfullscreen="1"
													allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
													title="[EN] 이름은 알지만 얼굴은 모르는 유명가수가 부릅니다. 평창콜링♬ | 국내여행 | 평창 | 넉살 | 카더가든 | 번아웃트래블 EP.3"
													width="100%" height="100%"
													src="https://www.youtube.com/embed/N9yjfzmdK1w?rel=0&amp;playsinline=1&amp;enablejsapi=1&amp;origin=https%3A%2F%2Fkorean.visitkorea.or.kr&amp;widgetid=1"></iframe>
											</div>
											​
											<script>window.ytPlayerList.push({ Id: '0f601d27-2c9a-495b-8f2e-bfa5aa2ca0f9', DivId: '7c0e000f-8ab8-4d54-94ff-f048725f2e46', VideoId: 'N9yjfzmdK1w', playerVars: {rel:0, playsinline:1,}});</script>
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
										<li
											class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next"
											data-swiper-slide-index="2" style="width: 465px;">
											<ul>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/tweek2022/playlistEvent.do','나만의 여행플레이리스트 만들기');"
													tabindex="-1"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="나만의 여행플레이리스트 만들기" style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=a07d58ae-4bab-4f36-baeb-b5b44614d3ad"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/event_detail.do?cotid=1f83e8b8-93ca-455f-adbe-988feea942c6','부모님과의 여.행.기 인증샷 이벤트');"
													tabindex="-1"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="부모님과의 여.행.기 인증샷 이벤트"
														style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=478a03d0-aa62-401d-b6e8-b979ebb8ceaa"></a></li>
												<li><a href="javascript:" title="새창열림"
													onclick="goMarketing('undefined','undefined','https://visitkoreanmarket.or.kr/kor/','시장이 여행이 되다! 이벤트 참여하고 경품받자!');"
													tabindex="-1"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="시장이 여행이 되다! 이벤트 참여하고 경품받자!"
														style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=6f7e5519-390e-4b9b-a8c8-8ddc7be1c042"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=57a4c482-c099-4bb2-971a-0ad13afe5759&amp;chk=c6FLGQAaXZPqtsWY','Pokémon GO와 함께하는 대한민국 구석구석 발도장깨기! ');"
													tabindex="-1"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="Pokémon GO와 함께하는 대한민국 구석구석 발도장깨기! "
														style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=e86984fd-e0e4-4d7d-af40-f71c0e92e5ff"></a></li>
											</ul>
										</li>
										<li class="swiper-slide swiper-slide-prev"
											data-swiper-slide-index="0" style="width: 465px;">
											<ul>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=55d51611-060e-4a0b-b254-16f20368804e&amp;chk=cXu0Cve5GixNOrB9','국내 여행 준비중이라면 [교통할인혜택]');"
													tabindex="-1"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="국내 여행 준비중이라면 [교통할인혜택]"
														style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=026ba0e0-990e-4661-9ef1-03c79c5e56f9"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=3242fac5-7436-4767-9470-36b2803d4433&amp;chk=7fipohAeCxUbVMt0','여행의 완성은 잠자리! [숙박할인혜택]');"
													tabindex="-1"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="여행의 완성은 잠자리! [숙박할인혜택]"
														style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=c1ce6037-5a5a-47ab-8450-e54422d59993"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=bccc1b89-885c-4fbf-a6d2-c436a109817b&amp;chk=qUtHOZBomDpWXZWK','다양한 놀거리가 궁금하다면? [놀거리할인혜택]');"
													tabindex="-1"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="다양한 놀거리가 궁금하다면? [놀거리할인혜택]"
														style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=bd81307d-4134-49ec-8c7f-8338b3d9dbc0"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=c9bf1ed3-7833-4109-8107-efc012785b44&amp;chk=R23GpJdh51dWLsiR','2022 놀이공원 할인대전');"
													tabindex="-1"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="2022 놀이공원 할인대전" style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=917e3976-e2b0-4183-9689-b9d00712eb3e"></a></li>
											</ul>
										</li>
										<li class="swiper-slide swiper-slide-active"
											data-swiper-slide-index="1" style="width: 465px;">
											<ul>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=35088067-41ac-4191-994e-56f77df3f46d&amp;con_type=10000','월간 19투어 영주편! 영주의 숨은 매력을 발견해보세요!');"
													tabindex="0"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="월간 19투어 영주편! 영주의 숨은 매력을 발견해보세요!"
														style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=ed866238-f2fb-4344-af25-0502efd2d1a1"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=610ce1b1-0a60-4b1f-9d06-3e8c03b244e5&amp;chk=7ZMLJdRfXDNNsH0m','포토존에도 퍼스널 컬러가 필요해~! 재미로 보는 웜톤 쿨톤 여행지');"
													tabindex="0"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="포토존에도 퍼스널 컬러가 필요해~! 재미로 보는 웜톤 쿨톤 여행지"
														style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=435e07bb-0e45-43f9-b01c-1ae9dfe2a183"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/trss/applyintro.do?utm_source=main_showcase','지금 바로 여행을 구독하세요!');"
													tabindex="0"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="지금 바로 여행을 구독하세요!" style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=91efcf86-3f94-4b63-97bf-3a75877b0daa"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=f02e220a-1d95-47fb-90ac-414a91a6e881&amp;chk=f9ugag4AJLdGrvs8','경북 · 강원 산불 피해지역으로 떠나는 착한 여행 ‘GO EAST’ ');"
													tabindex="0"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="경북 · 강원 산불 피해지역으로 떠나는 착한 여행 ‘GO EAST’ "
														style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=03fc4121-63b9-497c-bc83-e2299ff1e577"></a></li>
											</ul>
										</li>
										<li class="swiper-slide swiper-slide-next"
											data-swiper-slide-index="2" style="width: 465px;">
											<ul>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/tweek2022/playlistEvent.do','나만의 여행플레이리스트 만들기');"
													tabindex="-1"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="나만의 여행플레이리스트 만들기" style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=a07d58ae-4bab-4f36-baeb-b5b44614d3ad"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/event_detail.do?cotid=1f83e8b8-93ca-455f-adbe-988feea942c6','부모님과의 여.행.기 인증샷 이벤트');"
													tabindex="-1"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="부모님과의 여.행.기 인증샷 이벤트"
														style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=478a03d0-aa62-401d-b6e8-b979ebb8ceaa"></a></li>
												<li><a href="javascript:" title="새창열림"
													onclick="goMarketing('undefined','undefined','https://visitkoreanmarket.or.kr/kor/','시장이 여행이 되다! 이벤트 참여하고 경품받자!');"
													tabindex="-1"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="시장이 여행이 되다! 이벤트 참여하고 경품받자!"
														style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=6f7e5519-390e-4b9b-a8c8-8ddc7be1c042"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=57a4c482-c099-4bb2-971a-0ad13afe5759&amp;chk=c6FLGQAaXZPqtsWY','Pokémon GO와 함께하는 대한민국 구석구석 발도장깨기! ');"
													tabindex="-1"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="Pokémon GO와 함께하는 대한민국 구석구석 발도장깨기! "
														style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=e86984fd-e0e4-4d7d-af40-f71c0e92e5ff"></a></li>
											</ul>
										</li>
										<li
											class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev"
											data-swiper-slide-index="0" style="width: 465px;">
											<ul>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=55d51611-060e-4a0b-b254-16f20368804e&amp;chk=cXu0Cve5GixNOrB9','국내 여행 준비중이라면 [교통할인혜택]');"
													tabindex="-1"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="국내 여행 준비중이라면 [교통할인혜택]"
														style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=026ba0e0-990e-4661-9ef1-03c79c5e56f9"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=3242fac5-7436-4767-9470-36b2803d4433&amp;chk=7fipohAeCxUbVMt0','여행의 완성은 잠자리! [숙박할인혜택]');"
													tabindex="-1"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="여행의 완성은 잠자리! [숙박할인혜택]"
														style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=c1ce6037-5a5a-47ab-8450-e54422d59993"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=bccc1b89-885c-4fbf-a6d2-c436a109817b&amp;chk=qUtHOZBomDpWXZWK','다양한 놀거리가 궁금하다면? [놀거리할인혜택]');"
													tabindex="-1"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="다양한 놀거리가 궁금하다면? [놀거리할인혜택]"
														style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=bd81307d-4134-49ec-8c7f-8338b3d9dbc0"></a></li>
												<li><a href="javascript:"
													onclick="goMarketing('undefined','undefined','https://korean.visitkorea.or.kr/detail/detail_view.html?cotid=c9bf1ed3-7833-4109-8107-efc012785b44&amp;chk=R23GpJdh51dWLsiR','2022 놀이공원 할인대전');"
													tabindex="-1"><img
														class="swiper-lazy swiper-lazy-loaded"
														alt="2022 놀이공원 할인대전" style="background-color: #ffffff;"
														src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=917e3976-e2b0-4183-9689-b9d00712eb3e"></a></li>
											</ul>
										</li>
									</ul>
									<span class="swiper-notification" aria-live="assertive"
										aria-atomic="true"></span><span class="swiper-notification"
										aria-live="assertive" aria-atomic="true"></span>
								</div>
								<div class="paging">
									<div class="btn_autoArea">
										<button class="btn_autoPlay">재생</button>
										<button class="btn_autoStop">멈춤</button>
									</div>
									<div
										class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets">
										<button type="button" class="swiper-pagination-bullet"
											tabindex="0" role="button" aria-label="Go to slide 1">
											<span class="blind">1번째 슬라이드 보기</span>
										</button>
										<button type="button"
											class="swiper-pagination-bullet swiper-pagination-bullet-active"
											tabindex="0" role="button" aria-label="Go to slide 2">
											<span class="blind">2번째 슬라이드 보기</span>
										</button>
										<button type="button" class="swiper-pagination-bullet"
											tabindex="0" role="button" aria-label="Go to slide 3">
											<span class="blind">3번째 슬라이드 보기</span>
										</button>
									</div>
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

				<!-- 부서 서비스 배너 -->
				<div class="service_banner" id="odsBanner" style="display: none;">
					<h2></h2>
					<div class="swiper-container">
						<ul class="swiper-wrapper">
						</ul>
						<div class="swiper-pagination"></div>
						<div class="swiper-button-next" style="display: none;"></div>
						<div class="swiper-button-prev" style="display: none;"></div>
					</div>
				</div>
				<!-- //부서 서비스 배너 -->

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
											<h3 class="tit_atc">
												온 가족이 함께 떠나는<br>강원도 춘천 여행
											</h3>
											<a
												href="javascript:otherDetail(&quot;home&quot;,&quot;652ef062-f5e0-4c6d-bd58-e30d77698dc9&quot;,&quot;undefined&quot;,&quot;undefined&quot;, &quot;undefined&quot;, &quot;[춘천 가볼 만한 곳] 2시간이면 갈 수 있는 펀(fun)한 춘천 여행 코스&quot;, &quot;온 가족이 함께 떠나는<br>강원도 춘천 여행&quot;);"><img
												src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=40883d40-c313-417b-ac52-33ea48dee76b"
												alt="온 가족이 함께 떠나는 강원도 춘천 여행"></a>
										</div>
									</div>
								</div>
								<div class="article mt20 mWide type1">
									<div class="mdu_img1type">
										<div class="img">
											<h3 class="tit_atc">
												이색 체험을 할 수 있는<br>경기도 예스 키즈존 카페
											</h3>
											<a
												href="javascript:otherDetail(&quot;home&quot;,&quot;9ef0abca-cee1-4eec-8287-41c0b4719393&quot;,&quot;undefined&quot;,&quot;undefined&quot;, &quot;undefined&quot;, &quot;경기도 예스 키즈존 카페 4 <br>이색 체험도 가능하다고?🎨&quot;, &quot;이색 체험을 할 수 있는<br>경기도 예스 키즈존 카페&quot;);"><img
												src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=ac32b9a9-311c-4124-b3e1-dbf2a3a7cb51"
												alt="이색 체험을 할 수 있는 경기도 예스 키즈존 카페"></a>
										</div>
									</div>
								</div>
							</div>

							<!-- 중앙 컴포넌트 -->
							<div class="area_mid" id="othermid">
								<div class="article mWide type1">
									<div class="mdu_img1type">
										<div class="img">
											<h3 class="tit_atc">
												초록이 아름다운<br>전남 보성의 여름 여행
											</h3>
											<a
												href="javascript:otherDetail(&quot;home&quot;,&quot;f1e167a3-57a4-43d0-a284-1a2fbae58285&quot;,&quot;undefined&quot;,&quot;undefined&quot;, &quot;undefined&quot;, &quot;전남 보성 여름 여행 코스 BEST4&quot;, &quot;초록이 아름다운<br>전남 보성의 여름 여행&quot;);"><img
												src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=d0b796fa-17ae-444c-a49f-690ea75fe90f"
												alt="초록이 아름다운 전남 보성의 여름 여행"></a>
										</div>
									</div>
								</div>
								<div class="article mt20 mWide type1">
									<div class="mdu_img1type">
										<div class="img">
											<h3 class="tit_atc">
												한여름에 만나는 아름다운<br>대구 동구 연꽃단지
											</h3>
											<a
												href="javascript:otherDetail(&quot;home&quot;,&quot;42e728ad-5d07-4051-a7e9-2076628dd1e2&quot;,&quot;undefined&quot;,&quot;undefined&quot;, &quot;undefined&quot;, &quot;한여름에 만나는 아름다움, 안심창조밸리 연꽃단지&quot;, &quot;한여름에 만나는 아름다운<br>대구 동구 연꽃단지&quot;);"><img
												src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=5e47b4aa-3a20-424e-8a3c-1b69a383f4d3"
												alt="한여름에 만나는 아름다운 대구 동구 연꽃단지"></a>
										</div>
									</div>
								</div>
							</div>

							<!-- 우측 컴포넌트 -->
							<div class="area_right" id="otherright">
								<div class="article mWide type1">
									<div class="mdu_img1type">
										<div class="img">
											<h3 class="tit_atc">
												새로운 히든 플레이스<br>경남 밀양으로 떠나자!
											</h3>
											<a
												href="javascript:otherDetail(&quot;home&quot;,&quot;f65c39a4-4f8a-4233-a1e3-24e64e5bdecc&quot;,&quot;undefined&quot;,&quot;undefined&quot;, &quot;undefined&quot;, &quot;숨은 국내 여행지, <br>밀양 가볼 만한 곳 다 모음😎&quot;, &quot;새로운 히든 플레이스<br>경남 밀양으로 떠나자!&quot;);"><img
												src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=e0cc43c2-8b36-40c9-a22d-e9d486ba3376"
												alt="새로운 히든 플레이스 경남 밀양으로 떠나자!"></a>
										</div>
									</div>
								</div>
								<div class="article mt20 mWide type1">
									<div class="mdu_img1type">
										<div class="img">
											<h3 class="tit_atc">
												천년의 역사가 이어지고 있는<br>전라남도 영광으로의 여행
											</h3>
											<a
												href="javascript:otherDetail(&quot;home&quot;,&quot;75a1d372-2b88-49b9-aa29-202d24b15958&quot;,&quot;undefined&quot;,&quot;undefined&quot;, &quot;undefined&quot;, &quot;[1박2일 영광 여행] <br>보리굴비 맛집부터 노을 명소까지&quot;, &quot;천년의 역사가 이어지고 있는<br>전라남도 영광으로의 여행&quot;);"><img
												src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=e1d77f81-cb07-4cb4-8e54-1adb6468574a"
												alt="천년의 역사가 이어지고 있는 전라남도 영광으로의 여행"></a>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- //컴퍼넌트 -->
					</div>
				</div>
			</div> <!-- //contents --> <script type="text/javascript"
				src="/resources/js/curation/curation_trace.js"></script> <script
				type="text/javascript">

	var ytPlayerList = [];
	var players = [];
	var createVideo = false;
	let sigunguObj;
	var curationSwiper;
	function GetForeCast(){

		/* var params =  {
				'codeUpr' : "VST_PUPOS_CD"
		}; */

		$.ajax({
			url: 'https://datalab.visitkorea.or.kr/forecast/getTourFocMaiRndmList.do',
			dataType: 'json',
			type: 'POST',
			timeout: 3000,
		/* 	data: params, */
			success: function(data){
				try {
					if(data.list.length > 0){
						$.getScript('https://datalab.visitkorea.or.kr/forecast/js/tourfoc/foc.js');
						$.getScript('https://datalab.visitkorea.or.kr/forecast/js/tourfoc/foc_main.js',SetForeCast(0));
						$.getScript('https://datalab.visitkorea.or.kr/forecast/js/tourfoc/simpleStorage.js');
						$('head').append('<link rel="stylesheet" type="text/css" href="https://datalab.visitkorea.or.kr/forecast/css/tourfoc/forecast.css">');
					}
				}catch(error){
					$('#frmFoc').css('display','none');
				}
			},
			complete: function(){

			},
			error: function(xhr, textStatus, errorThrown){
				$('#frmFoc').css('display','none');
			}
		});

	}

	function SetForeCast(cnt){
		if(cnt > 10){
			return;
		}
		if(typeof(window["initFocMain"]) == "function"){
				initFocMain();
				$('#frmFoc').css('display','block')
		} else{
			setTimeout(function() {
				cnt++;
				SetForeCast(cnt);
			}, 300);
		}
	}

	function homeReady() {
		if (  $(window).width() > 1023) {
			getMainShowcase();
		}
		getCurationContents();
		// GetForeCast();
	}

	// Main Showcase 가져오기
	function getMainShowcase() {
		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: 'POST',
			data: {
				cmd : 'MAIN_SHOWCASE_VIEW',
				kind : MainChoice
			},
			success: function(data){
				setMainShowcaseView(data);
			},
			complete: function(){
				getHomeTag();
			},
			error: function(xhr, textStatus, errorThrown){
			}
		});
	}

	function setMainShowcaseView(data){
		var strHtml = '';

		if( data.body.result != undefined ) {
			$.each(data.body.result, function (index, items) {
				var desc = items.contentDescription;
				if( desc == null || desc == undefined || desc == 'undefined') {
					desc = '';
				}

				var title = items.title;
				if( items.title == null || items.title == undefined || items.title == 'undefined') {
					title = items.contentTitle;
				}

				var titleColor = items.contentTitleColor;
				var descColor = items.contentDescriptionColor;

				strHtml += '<div class="swiper-slide mainshowcase">';
				strHtml += '	<a href="javascript:goShowcase(\''+items.cotId+'\',\''+items.link+'\');" title="'+title+'로 이동">';
				strHtml += '		<div class="bg swiper-lazy" data-background="'+mainimgurl+items.imgPath1+imgmode+'" ><div class="swiper-lazy-preloader"></div></div>';
				strHtml += '		<div>';
				strHtml += '			<strong class="tit" style="color: ' + titleColor + '">'+items.contentTitle+'</strong>';
				strHtml += '			<span class="tag" style="color: ' + descColor + '">'+desc+'</span>';
				strHtml += '		</div>';
				strHtml += '	</a>';
				strHtml += '</div>';
			});

			$('.showcaseImg').html(strHtml);

			wrapVisual();
		}
		if ( $(window).width() > 1023) {
			homeEnd();
		}
	}

	//showcase 클릭시
	function goShowcase(rCotId, link) {
		//메인 쇼케이스 클릭수 저장
		goMainLogSave('faead355-9aa6-11e8-8165-020027310001');

		if( link != undefined && link != 'undefined' ) {
			if( link.indexOf(mainurl) > -1  ) {
				location.href = link;
			} else {
				openWindow(link);
			}
		} else {
			goDetail(rCotId);
		}
	}

	function getHomeTag() {
		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: 'POST',
			data: {
				cmd : 'OTHER_MAIN_TAG_VIEW',
				otdid : MainOtdid
			},
			success: function(data) {
				goMainTagListView(data)
			},
			complete: function() {
				//메인 배너 가져오기
				getMainBanner();
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
	}

	function goMainTagListView(data){

		var strHtml = '';

		if( data.body.result != undefined ) {
			$.each(data.body.result, function (index, items) {

				if( index == 0 ) {
					strHtml += '<li><a href="javascript:goAlllist(\'\',\'\');"><span>#전체</span></a></li>';
					strHtml += '<li><a href="/main/cr_main.do"><span>#여행콕콕</span></a></li>';
				}

				var tagname = '';
				if(items.dispYn == 'Y'){
					if(items.dispName)
						tagname = items.dispName;
					else
						tagname = items.tagName;
				} else{
					tagname = items.tagName;

				}

				strHtml += '<li><a href="javascript:goAlllist(\''+items.tagId+'\',\''+tagname+'\');"><span>#'+tagname+'</span></a></li>';
			});

			$('.taglist').html(strHtml);

			main_TagList();
		}
	}

	function getMainBanner(){
		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: 'POST',
			data: {
				cmd : 'MAIN_BANNER_VIEW',
				kind : MainChoice
			},
			success: function(data) {
				setTimeout( function() {
					video();
				},500);

				setMainBanner(data);
			},
			complete: function() {
				//큐레이션 가져오기
				getMainCuration();
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		})
	}

	function setMainBanner(data){
		var html = '';
		if( data.body.result != undefined ) {
			$.each(data.body.result, function (index, items) {
				if(index == 0){
					if(items.imgId != null && items.imgId != undefined){
						var img_desc = '';
						var img_link = '';
						if(items.img_link != null && items.img_link != undefined) img_link = items.img_link;
						if(items.img_desc != null && items.img_desc != undefined) img_desc = items.img_desc;
						html += '<div class="imgbannerArea">';
						html += '	<a href="javascript:goCuration(1,\''+img_link+'\');"><img src="'+mainimgurl+items.imgId+'"  alt="'+img_desc+'"></a>';
						html += '</div>';
					} else{
						html += '<div class="videoArea">';
						html += '	<div class="youtube_area">';
						html += '		<img src="../resources/images/temp/dummy_youtube.png" class="img_dummy" alt="">';
						html += '		<div id="youtube" class="youtube_box">';
						html += items.img_title;
						html += '	</div>';
						if(items.video_type == "VR동영상"){
							if(getDevice() == "iOS"){
								html += '<div class="iosLayer" style="height : 100%;">';
								html += '	<div>';
								html += '		<p>해당 동영상은 VR 동영상으로<br/>';
								html += '		아이폰 Youtube APP을 통해서만<br/>';
								html += '		원활한 재생이 가능합니다.</p>';
								var img_link = items.img_link;
								img_link = img_link.replace("https://youtu.be/","");
								html += '		<a href="javascript:goYoutubeApp(\''+img_link+'\');">Youtube APP 으로 시청</a>';
								html += '	</div>';
								html += '	<button type="button" onclick="closeIosLayer();">닫기</button>';
								html += '</div>';
							}
						}
						html += '</div>';
					}
				}
			});
		}
		$('.top_leftCont').prepend(html);
	};

	function video() {
		  createVideo = true;
		  initVideos();
	};

	function onYouTubeIframeAPIReady(){
		if (createVideo){
			for (var i = 0; i < ytPlayerList.length; i++) {
				var player = ytPlayerList[i];
				var pl = new YT.Player(player.DivId, {
					width: '100%',
					height: '100%',
					videoId: player.VideoId,
					playerVars: {
						rel:0,
						playsinline:1 }});
				players[player.Id] = pl;
			}
		}
	}

	function initVideos() {
		if (createVideo){
			for (var i = 0; i < ytPlayerList.length; i++) {
				var player = ytPlayerList[i];
				var pl = new YT.Player(player.DivId, {
					width: '100%',
					height: '100%',
					videoId: player.VideoId,
					playerVars: {
						rel:0,
						playsinline:1 }});
				players[player.Id] = pl;
			}
		}
/* 		setTimeout( function() {
			var layerheight = $('.youtube_area').height();
			$('.iosLayer').height(layerheight+"px");
		}, 1000); */
	}

	//큐레이션 가져오기
	function getMainCuration() {
		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'MAIN_CURATION_VIEW',
				kind : MainChoice
			},
			success: function(data) {
				setMainCuration(data);
			},
			complete: function() {
				getPromotion();
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
	}

	//큐레이션 셋팅
	function setMainCuration(data) {

		var strHtml = '';

		if( data.body.result != undefined ) {

			$.each(data.body.result, function (index, items) {
				if(index < 4){
					strHtml += '<li>';
					var linkurl = '';
					if( items.cotId == null || items.cotId == undefined ) {
						strHtml += '<a href="javascript:" onclick=\'goCuration(1,"'+items.url+'")\' title="'+items.title+' 로 이동">';
					} else {
						if(items.contentType == '12') {
							linkurl = "/detail/ms_detail.do?cotid="+items.cotId;
						} else if(items.contentType == '25') {
							linkurl = "/detail/cs_detail.do?cotid="+items.cotId;
						} else if(items.contentType == '15') {
							linkurl = "/detail/fes_detail.do?cotid="+items.cotId;
						} else {
							if(items.contentType == undefined || items.contentType == null || items.contentType == ''){
								linkurl = "/detail/rem_detail.do?cotid="+items.cotId+'&con_type=10000';
							} else{
								linkurl = "/detail/rem_detail.do?cotid="+items.cotId+'&con_type='+items.contentType;
							}
						}
						strHtml += '<a href="javascript:" onclick=\'goCuration(2,"'+linkurl+'");\' title="'+items.title+' 로 이동">';
					}

					var title = '';
					var color = '';

					if( items.haederUse == '1' ) {
						title = items.displayHeaderTitle;
						color = "color:#"+items.haederColor;

						strHtml += '<em style="'+color+'">'+title+'</em>';
					}
					strHtml += items.title+'</a>';
					strHtml += '</li>';
				}
			});
			$('.list_board').html(strHtml);
		}
	}

	function goCuration( rkind, rurl ) {
		//메인 큐레이션 영역 클릭저장
		goMainLogSave( '9ea69225-9aa7-11e8-8165-020027310001' );

	  	setTimeout(function () {
			if( rkind == 1 ) {
				if( rurl.indexOf(mainurl) > -1  ) {
					location.href = rurl;
				} else {
					openWindow(rurl);
				}
			} else {
				location.href = mainurl+rurl;
			}
	  	}, 200) ;
	}

	//프로모션 영역 데이타 가져오기
	function getPromotion() {

		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'NOTICE_PROMOTION_VIEW',
				kind : MainChoice
			},
			success: function(data) {
				setPromotion(data);
			},
			complete: function() {
				// 부가서비스 배너
				getOdsBanner();
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
	}

	//프로모션 데이타 셋팅
	function setPromotion(data) {

		var strHtml = '';
		var strHtmlm = '';
		var cgpid = '';
		var cgpidend = 0;

 		if( data.body.result != undefined ) {

			$.each(data.body.result, function (index, items) {

 				if( cgpid != items.cgpId ) {

 					cgpidend = 1;

					if( cgpid != '' && cgpidend == 1 ) {
						strHtml += '	</ul>';
						strHtml += '</li>';
					}
 					cgpid = items.cgpId;

					strHtml += '<li class="swiper-slide">';
					strHtml += '	<ul>';
				}
 				cgpidend = 0;

 				var bgColor = '';
 				if(items.bgColor != null) bgColor = 'style="background-color: '+items.bgColor+';"';

 				if(items.linkUrl.indexOf(mainurl) != -1)
					strHtml += '		<li><a href="javascript:" onclick="goMarketing(\''+items.cotId+'\',\''+items.contentType+'\',\''+items.linkUrl+'\',\''+quotReplace(items.title)+'\');"><img class="swiper-lazy" data-src="'+mainimgurl+items.imgPath+'" alt="'+items.title+'" '+bgColor+'></a></li>';
				else
					strHtml += '		<li><a href="javascript:" title="새창열림" onclick="goMarketing(\''+items.cotId+'\',\''+items.contentType+'\',\''+items.linkUrl+'\',\''+quotReplace(items.title)+'\');"><img class="swiper-lazy" data-src="'+mainimgurl+items.imgPath+'" alt="'+items.title+'" '+bgColor+'></a></li>';
			});

			strHtml += '	</ul>';
			strHtml += '</li>';

			$('.banner_pcTop div ul').html(strHtml);

			marketingSlider();

			//모바일
			cgpid = '';
			cnt = 0;
			strHtmlm = '';

			$.each(data.body.result, function (index, items) {

 				if( cgpid != items.cgpId ) {

 					cgpidend = 1;
 					cnt = 0;

					if( cgpid != '' && cgpidend == 1 ) {
						strHtmlm += '	</ul>';
						strHtmlm += '</li>';
					}
 					cgpid = items.cgpId;

 					strHtmlm += '<li class="swiper-slide">';
 					strHtmlm += '	<ul class="clfix">';
				}
 				cgpidend = 0;

 				var bgColor = '';
 				if(items.bgColor != null) bgColor = 'style="background-color: '+items.bgColor+';"';

 				if( cnt < 4 ) {
 					strHtmlm += '		<li><a href="javascript:" onclick="goMarketing(\''+items.cotId+'\',\''+items.contentType+'\',\''+items.linkUrl+'\',\''+quotReplace(items.title)+'\');"><img src="'+mainimgurl+items.imgPath+'" alt="'+items.title+'" '+bgColor+'></a></li>';
 					cnt++;
 				}
			});

			strHtmlm += '	</ul>';
			strHtmlm += '</li>';

			$('#bannerMobile1').html(strHtmlm);

			marketingSliderM();
		}
	}

	function getOdsBanner() {
		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'ODS_BANNER_VIEW',
				kind : MainChoice
			},
			success: function(data) {
				setOdsBanner(data);
			},
			complete: function() {
				// 타부서 서비스
				getMainOtherTemp('Other');
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
	}

	function setOdsBanner(data) {

		var strHtml = '';

		if(data.body.result == null) {
			$('#odsBanner').hide();
			return;
		}

		$.each(data.body.result, function (index, items) {
			if(index == 0){
				$('#odsBanner h2').html(items.title);
			}

			if(items.lkOrder == 0) {
				strHtml += '<li class="swiper-slide">';
			}

			strHtml += '<div class="wrap">';
			strHtml += '	<a href="'+items.lkUrl+'"';
			if(items.lkType == 1) strHtml += ' target="_blank" title="새창열림"';
			strHtml += '>';
			strHtml += '		<span class="img"><img class="swiper-lazy" data-src="'+mainimgurl+items.imgId+'" alt="'+items.lkTitle+'"></span>';
			strHtml += '		<div class="text">';
			strHtml += '			<strong>'+items.lkTitle+'</strong>';
			strHtml += '			<span>go</span>';
			strHtml += '		</div>';
			strHtml += '	</a>';
			strHtml += '</div>';

			if(items.lkOrder == 1) {
				strHtml += '</li>';
			}
		});

		$('#odsBanner ul').html(strHtml);
	}



	//타부서 데이타 가져오기
	function getMainOtherTemp(kind) {

		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'MAIN_OTHER_TEMP_VIEW',
				otdid : MainOtdid	//'0a01eb7b-96de-11e8-8165-020027310001'
			},
			success: function(data) {
				setMainOtherTemp(data);
			},
			complete: function() {
				homeEnd();
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
	}

	function setMainOtherTemp(data) {
		var other = '';
		var temp = '';

		$.each(data.body.result, function (index, items) {
			if( other != items.compId ) {

				var otdId = items.otdId;
				other = items.compId;
				var areakind = items.mainArea;
				var odmid = items.odmId;
				var compId = items.compId;

				if( items.templateId == '1') {
					temp = temp01(data, compId, 'home');
				} else if( items.templateId == '2') {
					temp = temp02(data, compId, 'home');
				} else if( items.templateId == '3') {
					temp = temp03(data, compId, 'home');
				} else if( items.templateId == '4') {
					temp = temp04(data, compId, 'home');
				} else if( items.templateId == '5') {
					temp = temp05(data, compId, 'home');
				} else if( items.templateId == '6') {
					temp = temp06(data, compId, 'home');
				} else if( items.templateId == '7') {
					temp = temp07(data, compId, 'home');
				} else if( items.templateId == '8') {
					temp = temp08(data, compId, 'home');
				} else if( items.templateId == '9') {
					temp = temp09(data, compId, odmid, 'home');
				} else if( items.templateId == '13') {
					temp = temp13(data, compId, 'home');
				} else if( items.templateId == '14') {
					temp = temp14(data, compId, 'home');
				} else if( items.templateId == '23') {
					temp = temp23(data, compId, 'home');
				}

				if( areakind == 'A') {
					$('#otherleft').append(temp);
				} else if( areakind == 'B') {
					$('#othermid').append(temp);
				} else if( areakind == 'C') {
					$('#otherright').append(temp);
				}
			}
		});

		new Swiper('.imgSlide.comp14 .swiper-container', {
			slidesPerView: 'auto',
			centeredSlides: true,//0318 추가
			loop: true,
			spaceBetween: 10,
			autoHeight: true,
			pagination: {
				el: '.swiper-pagination',
    			clickable: true,
			},
			lazy : {
				loadPrevNext : true
			},
		});

		$('#otherleft div').each(function(index2, items2) {
			if( index2 == 0 ) {
				$(this).removeClass('mt20');
			}
		});

		$('#othermid div').each(function(index2, items2) {
			if( index2 == 0 ) {
				$(this).removeClass('mt20');
			}
		});
		$('#otherright div').each(function(index2, items2) {
			if( index2 == 0 ) {
				$(this).removeClass('mt20');
			}
		});
		setTimeout(function () {
			video();
		}, 500) ;
	}

	function goMarketing(rcotid, rcontenttype, rlinkUrl, rtitle) {

		//메인 홍보마케팅 영역 클릭저장
		goMainLogSave( '9a59d6f7-9aa7-11e8-8165-020027310001' );

	  	setTimeout(function () {
			goBannerLogSave( '전체메인',rlinkUrl,rtitle);
	  	}, 200) ;
	  	setTimeout(function () {
			if( rlinkUrl != 'undefined' &&  rlinkUrl != '' ) {

				if( rlinkUrl.indexOf(mainurl) > -1  ) {

					 if( rlinkUrl.indexOf('tmap/main') > -1  ){
						 if( mobileYn == 'Y' ) {
							if( appYn == 'Y') {
								location.href = "opentab://"+rlinkUrl;
							} else {
								location.href = rlinkUrl;
							}
						} else {
							location.href = rlinkUrl;
						}
					} else if( rlinkUrl.indexOf('windowopen') > -1  ) {
						if( mobileYn == 'Y' ) {
							if( appYn == 'Y') {
								location.href = "opentab://"+rlinkUrl;
							} else {
								window.open(rlinkUrl);
							}
						} else {
							window.open(rlinkUrl,"","width=540px,height=940px,status=yes,scrollbars=yes");
						}
					} else {
						location.href = rlinkUrl;
					}
				} else {
					if( appYn == 'Y') {
						location.href = "opentab://"+rlinkUrl;
					} else {
						window.open(rlinkUrl);
					}
				}

			} else {
				if( rcontenttype == '12' || rcontenttype == '14' || rcontenttype == '28' || rcontenttype == '38' || rcontenttype == '39' || rcontenttype == '32' || rcontenttype == '2000') {
					location.href = mainurl+'/detail/ms_detail.do?cotid='+rcotid;
				} else if( rcontenttype == '15' ) {
					location.href = mainurl+'/detail/fes_detail.do?cotid='+rcotid;
				} else if( rcontenttype == '25' ) {
					location.href = mainurl+'/detail/cs_detail.do?cotid='+rcotid;
				} else {
					if(rcontenttype == undefined || rcontenttype == null || rcontenttype == ''){
						location.href = mainurl+'/detail/rem_detail.do?cotid='+rcotid+'&con_type=10000';
					} else{
						location.href = mainurl+'/detail/rem_detail.do?cotid='+rcotid+'&con_type='+rcontenttype;
					}
				}
			}
	  	}, 200) ;
	}

	function otherMain( rotdid ) {
		goOtherMain(rotdid);
	}

	//큐레이션 가져오기
	function getCurationContents() {
		$.ajax({
			url: mainurl+'/api/v1/curation/siteMain',
			type: 'GET',
			dataType: 'json',
			headers : {
				'Content-Type': 'application/json;'
			},
			xhrFields: {
				withCredentials: true
			},
			data : {
				device : mobileYn == 'Y' ? 'MOBILE' : 'PC'
			},
			success: function (data) {
				$.getScript('../resources/js/sigunguCode.js');
				setCurationContents(data);
			},
			error: function(xhr) {
				$('.main_curation_area').css('display','none');
			}
		});
	}

	function setCurationContents(data){

		let html = '';
		let imgUri = '';
		$.each(data.data, function (index, items) {
			
			imgUri = mainimgurl + items.imgId + '&mode=progress';

			html += '<div class="swiper-slide" onclick="__traceCurationConsume(this)" data-content-order="' + (index + 1) + '" data-curation-type="' + items.typeCode + '" data-section="SITE_MAIN" data-cot-id="' + items.cotId + '" data-content-type="' + items.content.contentType + '">';
			html += '<a href="javascript:goCurationContent(\''+items.cotId+'\',\''+items.viewContent+'\',\''+items.typeCode+'\');">';
			if(items.content.safety != -1)
				html += getSafetyInfo(items.content.safety);
			if(getBrowser() == 'Internet Explorer')
				html += '<div class="wrap"><span class="swiper-lazy" data-background="'+imgUri+'"></span></div>';
			else
				html += '<div class="wrap"><span class="swiper-lazy" data-background="'+imgUri+'"><div class="swiper-lazy-preloader"></div></span></div>';
			if(items.viewContent)
				html += '<strong>'+items.viewContent+'</strong>';
			else
				html += '<strong>'+items.content.title+'</strong>';
			html += '</a>';
			html += '</div>';
			html += '';
			html += '';
		});

		$('.main_mocont .swiper-container .page_num span').text(data.data.length);
		$('#curationlist2').html(html);
		$('.main_contents .swiper-container .page_num span').text(data.data.length);
		$('#curationlist').html(html);


		$(document).on("click","#areabox li label",function(){
			let areacode = Number($(this).siblings('input').attr('id').replace('area_chk',''));
			goSigunguListView(areacode,sigunguObj,true);
		});

		$(document).on("click","#curationAreaPop .s_menu #0",function(){
			$('.s_menu #0 label').addClass('all');
			$('input:checkbox[name=areaChk]').removeAttr("checked");
		});

		$(document).on("click","#curationAreaPop .s_menu ul li label",function(event){
			let sigungucode = Number($(this).parent().attr('id'));
			if(sigungucode != 0){
				$('#0 label').removeClass('all');
				$('#area_chk_00').prop('checked',false);
			}
		});

		getSigungu()




		curationSwiper = new Swiper(".main_contents .main_curation_area .swiper-container", {
			slidesPerView: 'auto',
			loop: true,
			centeredSlides : true,
			navigation: {
				nextEl: ".swiper-button-next",
				prevEl: ".swiper-button-prev"
			},
			pagination: {
				el: ".swiper-pagination",
				type: "progressbar",
			},
			breakpoints: {
				spaceBetween: 15,
			},
			on : {
				init : function(){
					let index = this.activeIndex;
					$('#curationlist').children().eq(index+2).children('a').addClass('dim');
					$('#curationlist').children().eq(index-2).children('a').addClass('dim');
				} ,
				slideChange: function () {
					let index = this.activeIndex;
					$('.main_contents .swiper-container .page_num strong').text(this.realIndex+1);
					$('#curationlist .swiper-slide a').removeClass('dim');
					$('#curationlist').children().eq(index+2).children('a').addClass('dim');
					$('#curationlist').children().eq(index-2).children('a').addClass('dim');
				}
			}, lazy : {
				loadPrevNext : true ,
				loadPrevNextAmount : 3,
				loadOnTransitionStart : true
			},
		});

		$(document).on('focus','.main_contents .main_curation_area .swiper-container .swiper-slide',function(){
			curationSwiper.slideTo($(this).index());
		});

		let loadPrevNextAmount = 3;
		if (matchMedia("all and  (min-width:768px) and (max-width:1023px)").matches) {
			loadPrevNextAmount = 5;
		}

		const selectorMobileCurationSwiper = ".main_mocont .main_curation_area .swiper-container"
		var curationSwiper2 = new Swiper(selectorMobileCurationSwiper, {
			slidesPerView: 'auto',
			loop: true,
			centeredSlides: true,
			spaceBetween: 20,
			navigation: {
				nextEl: ".swiper-button-next",
				prevEl: ".swiper-button-prev"
			},
			pagination: {
				el: ".swiper-pagination",
				type: "progressbar",
			},
			on: {
				slideChange: function () {
					$('.main_mocont .swiper-container .page_num strong').text(this.realIndex + 1);
					__traceMainCurationSlide(selectorMobileCurationSwiper, this.realIndex)
				}
			}, lazy: {
				loadPrevNext: true,
				loadPrevNextAmount : loadPrevNextAmount
			},
		});
		if (mobileYn === 'Y') {
			__traceMainCurationSlide(selectorMobileCurationSwiper, 0)
		}
	}

	function getSafetyInfo(cnt){
		cnt = 100 - cnt;
		if(cnt >= 50)
			return '<em class="good">양호</em>';
		else if (cnt >= 30)
			return '<em class="average">보통</em>';
		else if (cnt >= 10)
			return '<em class="care">주의</em>';
		else if (cnt >= 0)
			return '<em class="danger">경계</em>';
	}

	//시군구리스트 가져오기
	function getSigungu() {

		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'RECOM_SIGUNGU_CODE'
			},
			success: function(data) {
				sigunguObj = data;
			},
			complete: function() {
				$("input:radio[id='area_chk1']").prop("checked", true);
				goSigunguListView(1,sigunguObj,false);
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
	}

	//시군구코드 list 보여주기
	function goSigunguListView(mareacode, data) {

		switch (Number(mareacode)){
			case 2 : case 3 : case 4 : case 5 :
			case 6 : case 7 : case 8 : case 39 :

				$('#curationAreaPop .s_menu ul').html('');
				$('#curationAreaPop .s_menu').css('display','none');
				layerPopup.layerUpdate('curationAreaPop');
				return;
		}

		$('#curationAreaPop .s_menu').css('display','');
		var strHtml = '';

		strHtml += '<li id="0">';
		strHtml += '<input type="checkbox" id="area_chk_00" name="areaChk00" checked>';
		strHtml += '<label for="area_chk_00" class="all"><span>전체</span></label>';
		strHtml += '</li>';

		$.each(data.body.result, function (index, items) {
			if( items.areaCode == mareacode && items.sigunguCode != 99) {
				strHtml += '<li id="'+items.sigunguCode+'">';
				strHtml += '<input type="checkbox" id="area_chk_'+index+'" name="areaChk" >';
				strHtml += '<label for="area_chk_'+index+'"><span>'+items.sigunguName+'</span></label>';
				strHtml += '</li>';
			}
		});

		$('#curationAreaPop .s_menu ul').html(strHtml);
		// $('#curationAreaPop .s_menu ul').slideUp(500);
		if(!$('#curationAreaPop .s_menu .btn_smenu').hasClass('on')) {
			$('#curationAreaPop .s_menu ul').css('display', 'none');
			layerPopup.layerUpdate('curationAreaPop');
		}
	}



	function homeEnd() {

		var activeItem = $(".accordion_box .pc li:first");

		$(".accordion_box .pc li").hover(function(){
			$(".accordion_box .pc li").removeClass("hover");
			$(this).addClass("hover");
			$(activeItem).animate({width:"80px"},{duration:300, queue:false});
			$(this).animate({width:"700px"},{duration:300, queue:false});
			activeItem = this;
		});

		// var swiper = new Swiper('.accordion_box .swiper-container', {
		// 	slidesPerView: 'auto',
		// 	spaceBetween: 10,
		// 	freeMode: true,
		// 	freeModeMomentumBounce:false,
		// 	scrollbar: {
		// 		el: '.swiper-scrollbar',
		// 		draggable : true,
		// 		snapOnRelease: false,
		// 		dragsize:10,
		// 	},
		// });

		var swiper1 = new Swiper('.moVisu .swiper-container', {
			slidesPerView: 'auto',
			scrollbar: {
				el: '.swiper-scrollbar',
				hide: true,
			},
			navigation: {
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',
			},
			effect: 'fade',
			preloadImages: false,
			lazyLoading: true,
			lazy: {
				loadPrevNext: true,
			}
		});

		 // 1210 추가
		var presentIdx = 0;
		$('.moVisu .swiper-container a').each(function(i){
			var prev = $('.moVisu .swiper-button-prev');
			var next = $('.moVisu .swiper-button-next');

			if(mobileYn == 'N'){
				$(this).focus(function(){
					if(presentIdx < i){
						next.trigger('click');
						presentIdx++;
					} else if(presentIdx > i){
						prev.trigger('click');
						presentIdx--;
					}
				});
			}
		});

		if($('#odsBanner li').length > 1) {
			var swiper2 = new Swiper('#odsBanner .swiper-container', {
				spaceBetween: 0,
				pagination: {
					el: '.swiper-pagination',
					clickable: true,
				},
				navigation: {
					nextEl: '.swiper-button-next',
					prevEl: '.swiper-button-prev',
				}, lazy: {
					loadPrevNext: true,
				}
			});
		} else {
			$('#odsBanner .swiper-button-prev').hide();
			$('#odsBanner .swiper-button-next').hide();
		}

		var swiper3 = new Swiper('.imgSlide.pc .swiper-container', {
			slidesPerView: 'auto',
			centeredSlides: true,//0318 추가
			loop: true,
			spaceBetween: 10,
			autoHeight: true,
			pagination: {
				el: '.swiper-pagination',
				clickable: true,
			}, lazy: {
				loadPrevNext: true,
			}
		});

		var swiper4 = new Swiper('.imgSlide.mo .swiper-container', {
			slidesPerView: 'auto',
			spaceBetween: 10,
			centeredSlides: true,//0318 추가
			loop: true,
			autoHeight: true,
			pagination: {
				el: '.swiper-pagination',
				type: 'fraction',
			}, lazy: {
				loadPrevNext: true,
			}
		});

		seasonCss();
		video();
	}

	function seasonCss(){
		try{
			switch (recentMonth) {
				case 3: case 4: case 5:
					$('.moVisu').addClass('spring');
					$('.moVisu').find('.swiper-scrollbar-drag').css("background","#a3f013");
					break;
				case 6: case 7: case 8:
					$('.moVisu').addClass('summer');
					$('.moVisu').find('.swiper-scrollbar-drag').css("background","#3aabfc");
					break;
				case 9: case 10: case 11:
					$('.moVisu').addClass('autumn');
					$('.moVisu').find('.swiper-scrollbar-drag').css("background","#fc530d");
					break;
				case 12: case 1: case 2:
					$('.moVisu').addClass('winter');
					$('.moVisu').find('.swiper-scrollbar-drag').css("background","#e7e6e5");
					break;
			}
		} catch(e){
			console.log(e);
			setTimeout(function(){
				seasonCss();
			}, 500);
		}

	}

	function goCurationContent(cotId,contenttitle,type){
		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'CURATION_LOG_SAVE',
				device : mobileYn == 'Y' ? 'MOBILE' : 'PC',
				type : type,
				title : contenttitle,
				cotId : cotId,
				logtype : 'MAIN_CLICK'
			},
			success: function(data) {
				goDetail(cotId);
			},
			complete: function() {
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
	}

	function CurationAreaLogSave(areacode){
		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'CURATION_LOG_SAVE',
				device : mobileYn == 'Y' ? 'MOBILE' : 'PC',
				areacode : areacode,
				logtype : 'AREA_LOG'
			},
			success: function(data) {
				location.href = "/main/cr_main.do?areacode="+areacode;
			},
			complete: function() {
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
	}

	function goCurationMain(){
		let sigungucodes = '0';
		$("input:checkbox[name=areaChk]:checked").each(function(){
			var sigungucode = $(this).parent().attr('id');
			sigungucodes += ','+sigungucode;
		});
		let areacode = $("input:radio[name=areaChk]:checked").attr('id');
		areacode = areacode.replace('area_chk','')
		saveAreaClickLog(areacode, sigungucodes.split(","))
		location.href = "/main/cr_main.do?areacode="+areacode+"&sigungucode="+sigungucodes;
	}

	function sigunguOpen(){
		if($('#curationAreaPop .s_menu .btn_smenu').hasClass('on')){
			$('#curationAreaPop .s_menu ul').css('display','none');
			$('.s_menu .btn_smenu').removeClass('on');
			layerPopup.layerUpdate('curationAreaPop');
		} else{
			$('#curationAreaPop .s_menu .btn_smenu').addClass('on');
			$('#curationAreaPop .s_menu ul').css('display','');
			layerPopup.layerUpdate('curationAreaPop');
		}

	}


	$(document).on("focus",".mainshowcase", function(){
		$('.mainshowcase').removeClass('swiper-slide-active');
		 $(this).addClass('swiper-slide-active');
	});

	// Youtube
	var mainYoutubeTag = document.createElement('script');
	mainYoutubeTag.src = "https://www.youtube.com/player_api";
	var firstScriptTag = document.getElementsByTagName('script')[0];
	firstScriptTag.parentNode.insertBefore(mainYoutubeTag, firstScriptTag);

// 	var mainPlayer;
// 	var subPlayer;
// 	function onYouTubePlayerAPIReady() {
// 		mainPlayer = new YT.Player('ytplayer', {
// 			width: '100%',
// 			videoId: 'tb6Q82yBaQ0', // 유튜브 비디오 아이디
// 			playerVars: {
// 				rel: 0,
// 				playsinline: 1,
// 			}
// 		});
// 		subPlayer = new YT.Player('ytplayer1', {// 20190830 추가
// 			width: '100%',
// 			videoId: 'tb6Q82yBaQ0', // 유튜브 비디오 아이디
// 			playerVars: {
// 				rel: 0,
// 				playsinline: 1,
// 			}
// 		});
// 	}

</script>
		</li>
		<li class="areaTab swiper-slide" style="display: none;"></li>
	</ul>
</div>