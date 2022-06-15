<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" media="all" href="/trip/dist/activity/css/activityDetail2.css">
<link rel="stylesheet" media="screen" href="/trip/dist/activity/css/activityDetail1.css">

<div id="Offer-react-component-364e2bf4-fdfd-4a12-8e5e-5fab3e5b4d3b">
	<div class="Offer-module__container--H4wAP">
		<div class="OfferSectionNavbar-module__container--qfv5A">
			<div class="Grid-module__container--YH1rv">
				<div class="Grid-module__row--GTpEN Grid-module__full--V7SXd OfferSectionNavbar-module__row--VzxHt">
					<div class="OfferSectionNavbar-module__nav--G9Gdy">
						<nav id="OFFER-SECTION-BAR" class="TabsWithSwiper-module__container--LkSG7 TabsWithSwiper-module__large--A1mO9 TabsWithSwiper-module__hideBorder--sLUB7">
							<div class="swiper-container swiper-container-horizontal swiper-container-free-mode" style="cursor: grab;">
								<div class="swiper-wrapper" style="width: 1084px; transform: translate3d(0px, 0px, 0px);">
									<button id="OFFER-SECTION-TICKET_TAB" type="button" class="swiper-slide TabItemWithSwiper-module__button--MvuNT TabItemWithSwiper-module__gray--_KhrC TabItemWithSwiper-module__large--m0bDm TabItemWithSwiper-module__active--Ato8D swiper-slide-active" style="margin-right: 24px;">티켓 선택</button>
									<button id="OFFER-SECTION-INTRODUCTION_TAB" type="button" class="swiper-slide TabItemWithSwiper-module__button--MvuNT TabItemWithSwiper-module__gray--_KhrC TabItemWithSwiper-module__large--m0bDm swiper-slide-next" style="margin-right: 24px;">상품 소개</button>
									<button id="OFFER-SECTION-GUIDANCE_TAB" type="button" class="swiper-slide TabItemWithSwiper-module__button--MvuNT TabItemWithSwiper-module__gray--_KhrC TabItemWithSwiper-module__large--m0bDm" style="margin-right: 24px;">이용 안내</button>
									<button id="OFFER-SECTION-REFUND_TAB" type="button" class="swiper-slide TabItemWithSwiper-module__button--MvuNT TabItemWithSwiper-module__gray--_KhrC TabItemWithSwiper-module__large--m0bDm" style="margin-right: 24px;">환불 안내</button>
									<button id="OFFER-SECTION-REVIEW_TAB" type="button" class="swiper-slide TabItemWithSwiper-module__button--MvuNT TabItemWithSwiper-module__gray--_KhrC TabItemWithSwiper-module__large--m0bDm" style="margin-right: 24px;">후기</button>
								</div>
								<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
							</div>
							<button type="button" class="TabsWithSwiper-module__navButton--zCi1F TabsWithSwiper-module__prev--ayDgn TabsWithSwiper-module__prev--ayDgn--OFFER-SECTION-BAR">
								<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjMkI5NkVEIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMiIgZD0iTTE0IDZsLTYgNi4wMDNMMTMuOTkzIDE4Ii8+Cjwvc3ZnPgo=" alt="prev">
							</button>
							<button type="button" class="TabsWithSwiper-module__navButton--zCi1F TabsWithSwiper-module__next--mNMIi TabsWithSwiper-module__next--mNMIi--OFFER-SECTION-BAR">
								<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjMkI5NkVEIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMiIgZD0iTTEwIDZsNiA2LjAwM0wxMC4wMDcgMTgiLz4KPC9zdmc+Cg==" alt="next">
							</button>
						</nav>
					</div>
					<div class="OfferSectionNavbar-module__share--y3JER">
						<div class="OfferSectionNavbar-module__gradient--MCLVz"></div>
						<div class="OfferSectionNavbar-module__shareBtn--vYB6I">
							<button type="button" class="ShareButton-module__shareBtn--gRzpd">
								<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjNDk1MDU2IiBzdHJva2Utd2lkdGg9IjEuMjUiPgogICAgICAgIDxjaXJjbGUgY3g9IjYuMjIyIiBjeT0iMTIiIHI9IjIuMjIyIi8+CiAgICAgICAgPGNpcmNsZSBjeD0iMTcuNDQ0IiBjeT0iNi4yMjIiIHI9IjIuMjIyIi8+CiAgICAgICAgPHBhdGggc3Ryb2tlLWxpbmVjYXA9InNxdWFyZSIgZD0iTTE0LjUgNy41bC01LjYxMSAyLjgzMyIvPgogICAgICAgIDxjaXJjbGUgY3g9IjE3LjQ0NCIgY3k9IjE3Ljc3OCIgcj0iMi4yMjIiIHRyYW5zZm9ybT0ibWF0cml4KDEgMCAwIC0xIDAgMzUuNTU2KSIvPgogICAgICAgIDxwYXRoIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIGQ9Ik0xNC41IDE2LjVsLTUuNjExLTIuODMzIi8+CiAgICA8L2c+Cjwvc3ZnPgo=" alt="share">
							</button>
							<div class="Popover  bottom-right  "></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="Grid-module__container--YH1rv">
			<div class="Grid-module__row--GTpEN Offer-module__layout--cUhau">
				<article class="Offer-module__body--dkTUK">
					<div class="OfferHeader-module__container--E_5lp">
						<h1 class="OfferHeaderTitle-module__container--ZcKff">[경기 용인]
							캐리비안베이 종일권 얼리버드 (오후권~)</h1>
						<div class="OfferHeader-module__row--FFRdl OfferHeader-module__fix--DvUSn">
							<div class="OfferHeaderReview-module__container--q3rRE">
								<button type="button" class="OfferHeaderReview-module__anchor--XKcvG" style="padding: 0px;">
									<div class="starRating starRating--m starRating--blue starRating--">
										<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
											<path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></svg>
										<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
											<path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></svg>
										<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
											<path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></svg>
										<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
											<path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></svg>
										<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
											<path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></svg>
									</div>
									<span class="OfferHeaderReview-module__score--PFNsE">4.7</span><span class="OfferHeaderReview-module__count--VmY1D">(153)</span><img src="https://dffoxz5he03rp.cloudfront.net/icons/ic_arrowright_12x12_gray_500.svg" alt="">
								</button>
							</div>
						</div>
					</div>
					<div id="OFFER-NAVBAR-START"></div>
					
					<ul class="OfferMeta-module__container--QVvCg">
						<li class="OfferMetaItem-module__container--gE4Kd"><img src="https://dffoxz5he03rp.cloudfront.net/icons/ic_meta_eticket_md_gray_700.svg" alt="eticket" class="OfferMetaItem-module__icon--_ZoWa"><span class="OfferMetaItem-module__label--Lu7vt">e-ticket</span></li>
						<li class="OfferMetaItem-module__container--gE4Kd"><img src="https://dffoxz5he03rp.cloudfront.net/icons/ic_meta_calendar_md_gray_700.svg" alt="calendar" class="OfferMetaItem-module__icon--_ZoWa"><span class="OfferMetaItem-module__label--Lu7vt">유효기간(~2022.06.24)
								내 사용</span></li>
						<li class="OfferMetaItem-module__container--gE4Kd"><img src="https://dffoxz5he03rp.cloudfront.net/icons/ic_meta_language_md_gray_700.svg" alt="language" class="OfferMetaItem-module__icon--_ZoWa"><span class="OfferMetaItem-module__label--Lu7vt">한국어</span></li>
					</ul>
					<div class="OfferIntro-module__container--r9d_2"></div>
					
					<section class="OfferSectionBox-module__container--KxKXZ OfferSectionBox-module__noBorder--gF70t OfferSectionBox-module__noPadding--PihcY" id="OFFER-SECTION-TICKET">
						<div class="OfferSectionBox-module__body--gjNil OfferOptionSection-module__container--SIYUu">
							<h2 class="OfferSectionBox-module__title--LNfKq">티켓 선택</h2>
							<div>
								<div class="OfferOptionSelector-module__container--h5Rh6" id="OFFER-SECTION-TICKET">
									<div>
										<div class="">
											<div class="OfferOption-module__optionWrapper--vVnih">
												<div class="OfferOption-module__options--lYKqh">
													<div class="OfferOptionItem-module__container--tHHlw">
														<div class="OfferOptionItemHeader-module__container--AmZyy">
															<h3 class="OfferOptionItemHeader-module__title--F2SRq">[대소공통]
																종일권</h3>
															<div class="OfferOptionItemHeader-module__description--bZ4SZ">
																<ul class="OfferOptionDescription-module__container--rJlVA">
																	<li>[유효기간 : 2022.05.21 ~ 2022.06.24]</li>
																</ul>
															</div>
														</div>
														<div class="OfferOptionItem-module__body--k_jYO">
															<div class="OfferOptionItemPrice-module__container--HhGOj">
																<div class="OfferOptionItemPrice-module__row--iNxWQ">
																	<span class="OfferOptionItemPrice-module__unit--zfEwf">1명</span><span class="OfferOptionItemPrice-module__price--Ftg0b">24,900</span><span class="OfferOptionItemPrice-module__symbol--V_jYc">원</span>
																</div>
															</div>
															<div class="OfferOptionItemCounter-module__container--pASTo">
																<div class="OfferOptionItemCounter-module__description--JBf8G">
																	<ul class="OfferOptionDescription-module__container--rJlVA">
																		<li>[유효기간 : 2022.05.21 ~ 2022.06.24]</li>
																	</ul>
																</div>
																<div class="Stepper-module__container--K8v4J">
																	<button type="button" class="Stepper-module__button--V6HWA layout-module__padding-zero--LHo_O layout-module__border-zero--hfvoW Stepper-module__disabled--krEGe" disabled="">
																		<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjQ0VENERBIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMiIgZD0iTTIuNjY3IDhoMTAuNjY2Ii8+Cjwvc3ZnPgo=" alt="1만큼 감소">
																	</button>
																	<div class="Stepper-module__value--RL1SZ">0</div>
																	<button type="button" class="Stepper-module__button--V6HWA layout-module__padding-zero--LHo_O layout-module__border-zero--hfvoW">
																		<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjNTFBQkYzIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMiI+CiAgICAgICAgPHBhdGggZD0iTTIuNjY3IDhoMTAuNjY2TTggMi42Njd2MTAuNjY2Ii8+CiAgICA8L2c+Cjwvc3ZnPgo=" alt="1만큼 증가">
																	</button>
																</div>
															</div>
														</div>
													</div>
													
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
					<section class="OfferSectionBox-module__container--KxKXZ OfferSectionBox-module__noBorder--gF70t" id="OFFER-SECTION-INTRODUCTION">
						<div class="OfferSectionBox-module__body--gjNil">
							<div>
								<div class="OfferFlexibleBox-module__container--RwDe3">
									<div class="OfferFlexibleBox-module__body--DlmZc" style="max-height: 1000px;">
										<img src="https://d2ur7st6jjikze.cloudfront.net/offer_descriptive_images/49299/230068_medium_1653058703.jpg?1653058703" class="OfferDetailSection-module__image--a46mb"><img src="https://d2ur7st6jjikze.cloudfront.net/offer_descriptive_images/49299/230069_medium_1653058709.jpg?1653058709" class="OfferDetailSection-module__image--a46mb"><img src="https://d2ur7st6jjikze.cloudfront.net/offer_descriptive_images/49299/230070_medium_1653058717.jpg?1653058717" class="OfferDetailSection-module__image--a46mb"><img src="https://d2ur7st6jjikze.cloudfront.net/offer_descriptive_images/49299/230071_medium_1653058725.jpg?1653058725" class="OfferDetailSection-module__image--a46mb">
									</div>
									<div class="OfferFlexibleBox-module__more--c7Nku OfferFlexibleBox-module__absolute--lHMBW">
										<div class="OfferFlexibleBox-module__gradation--nXQmm"></div>
										<div class="OfferFlexibleBox-module__button--naA9I">
											<button type="button" class="Button-module__button--nQweC Button-module__outline--wLxv3 Button-module__large--vtisu">
												<span class="OfferMoreButton-module__label--LJ4OQ">상품
													설명 더 보기</span><img src="https://dffoxz5he03rp.cloudfront.net/icons/ic_arrowdown_md_gray_700.svg" alt="더보기" class="OfferMoreButton-module__icon--Wu5xW">
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
					
					
					<section class="OfferSectionBox-module__container--KxKXZ" id="OFFER-SECTION-GUIDANCE">
						<div class="OfferSectionBox-module__body--gjNil">
							<h2 class="OfferSectionBox-module__title--LNfKq">이용 안내</h2>
							<div>
								<div class="OfferContents-module__container--Gu7X5">
									<h3 class="OfferContents-module__title--fDFvs">이용 시간</h3>
									<p class="OfferContents-module__contents--ZvdqS">
										- 방문 전 캐리비안베이 홈페이지를 참고해주세요. <br class="">(홈페이지 :
										https://www.everland.com/web/caribbean/main.html)
									</p>
								</div>
								
								<div class="OfferContents-module__container--Gu7X5">
									<h3 class="OfferContents-module__title--fDFvs">사용 방법</h3>
									<div class="OfferFlexibleBox-module__container--RwDe3">
										<div class="OfferFlexibleBox-module__body--DlmZc">
											<p class="OfferContents-module__contents--ZvdqS">
												① 기재해주신 핸드폰 번호로 문자(MMS)혹은 카카오톡 알림톡을 발송해드립니다. <br class="">-
												통신사별로 수신 시간에 다소 차이가 있을 수 있습니다. <br class="">② 매표소 또는
												입구에서 수신한 바코드 또는 티켓을 제시하여 입장해주세요.
											</p>
										</div>
										<div class="OfferFlexibleBox-module__more--c7Nku"></div>
									</div>
								</div>
								<div class="OfferContents-module__container--Gu7X5">
									<h3 class="OfferContents-module__title--fDFvs">추가정보</h3>
									<div class="OfferFlexibleBox-module__container--RwDe3">
										<div class="OfferFlexibleBox-module__body--DlmZc" style="max-height: 240px;">
											<p class="OfferContents-module__contents--ZvdqS">
												- 대/소 공통 이용 가능하며 36개월부터 요금 적용됩니다. <br class="">- 자켓, 락커
												,코인물, 대여물 등은 별도 요금이 부과됩니다. <br class="">- 개인 타월 및
												수영복/세면용품은 개별 준비 바랍니다. <br class="">- 워터파크 특성상 안전을 위하여
												제한물품(음식물,돗자리 등) 검사를 할 수 있으니 입장 전 보관소에 맡겨 주시기 바랍니다. <br class="">- 정문주차장은 유료, 외곽주차장은 무료로 운영됩니다. <br class="">-
												QR코드의 사진을 판매사이트에 그대로 올리는 경우 제3자의 무단 도용에 <br class="">
												따른 피해가 발생할 수 있습니다. <br class="">- 방문 전 캐리비안베이 홈페이지 또는
												앱을 참고하세요. <br class="">▷캐리비안 베이:
												https://www.everland.com/web/caribbean/main.html <br class=""> <br class="">[시설정보] <br class="">-
												주소 : 경기도 용인시 처인구 포곡읍 에버랜드로 199 캐리비안베이 <br class="">-
												문의: 031-320-5000 <br class=""> <br class="">[판매정보]
												<br class="">- 플레이스엠 고객센터 : 1544-3913 <br class="">(주중/주말
												09:00 ~ 18:00, 점심시간 12:00 ~ 13:00
											</p>
										</div>
										<div class="OfferFlexibleBox-module__more--c7Nku">
											<div class="OfferFlexibleBox-module__text--Jb1pD">
												<a class="Link-module__link--DdyR6 Link-module__medium--ZTtp0 Button-module__button--nQweC Button-module__link--lCAv7 Button-module__medium--bLzcD" href="" style="left: -6px;"><span class="OfferFlexibleBox-module__textLabel--P4h_Y">더
														보기</span><img src="https://dffoxz5he03rp.cloudfront.net/icons/ic_arrowdown_12x12_blue_500.svg" alt="" class="OfferFlexibleBox-module__textIcon--3xWIt"></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
					<section class="OfferSectionBox-module__container--KxKXZ" id="OFFER-SECTION-REFUND">
						<div class="OfferSectionBox-module__body--gjNil">
							<h2 class="OfferSectionBox-module__title--LNfKq">취소 및 환불 규정</h2>
							<div>
								<div class="OfferContents-module__container--Gu7X5">
									<div class="OfferFlexibleBox-module__container--RwDe3">
										<div class="OfferFlexibleBox-module__body--DlmZc">
											<p class="OfferContents-module__contents--ZvdqS">
												- 유효기간 내 취소/환불 가능 <br class="">- 미사용 티켓 100% 환불가능 <br class="">- 사용한 티켓 환불 불가 <br class="">- 부분 환불 불가 <br class="">(ex. 2장 구매 후 1장만 환불 불가 / 전체 취소 후 재구매)
											</p>
										</div>
										<div class="OfferFlexibleBox-module__more--c7Nku"></div>
									</div>
								</div>
							</div>
						</div>
					</section>
					<section class="OfferSectionBox-module__container--KxKXZ">
						<div class="OfferSectionBox-module__body--gjNil">
							<div>
								<div class="OfferPartnerSection-module__container--sA1VA">
									<a class="OfferPartnerSection-module__partner--d8__U" href="/guides/5602" target="_blank"><img class="OfferPartnerSection-module__photo--KlgZz" src="https://d2ur7st6jjikze.cloudfront.net/profile_images/234733/234733_original_1483406251.png?1483406251" alt="플레이스엠">
									<p class="OfferPartnerSection-module__name--XA3hK">플레이스엠</p></a>
								</div>
								<div class="OfferContents-module__container--Gu7X5 OfferContents-module__noMargin--NyUVG">
									<div class="OfferFlexibleBox-module__container--RwDe3">
										<div class="OfferFlexibleBox-module__body--DlmZc">
											<p class="OfferContents-module__contents--ZvdqS">플레이스엠은
												여가의 새로운 가치를 창조하는 여가생활 서비스 기업입니다. 이제까지 단순하게 반복되어 오던 여행과 여가생활에
												색다른 체험을 담아내고 특별한 서비스를 제공함으로써 새로운 여가문화를 만들어가고, 고객의 여가생활에 새로운
												가치를 담아내겠습니다.</p>
										</div>
										<div class="OfferFlexibleBox-module__more--c7Nku"></div>
									</div>
								</div>
							</div>
						</div>
					</section>
					
					<section class="OfferSectionBox-module__container--KxKXZ">
						<div class="OfferSectionBox-module__body--gjNil">
							<div>
								<div class="offer-review">
									<div class="offer-review__header">
										<h4 class="offer-review__header__title">
											후기<span>153</span>
										</h4>
									</div>
									<div class="clear"></div>
									<div class="offer-review__list">
										<div>
											<div class="offer-review__list--content">
												<div class="starRating starRating--m starRating--blue starRating--">
													<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
														<path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></svg>
													<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
														<path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></svg>
													<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
														<path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></svg>
													<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
														<path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></svg>
													<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
														<path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></svg>
												</div>
												<div class="offer-review__list--writer">임**</div>
												<div class="offer-review__list--purpose">2022-02-13</div>
												<div class="offer-review__list--wrapper">
													<div class="offer-review__list--message">
														<div class="with-more " style="max-height: 250px;">
															코로나 시국에 지쳤었는데 <br>작은 행복을 느꼈네요
														</div>
													</div>
												</div>
											</div>
											<hr>
											<div class="offer-review__list--content">
												<div tabindex="0" role="button" class="offer-review__list--image" alt="review-photos" style="background-image: url(&quot;https://d2ur7st6jjikze.cloudfront.net/reviews/49299/956402_large_1641603188.jpg?1641603188&quot;);">
													<div class="offer-review__list--image-cover"></div>
												</div>
												<div class="starRating starRating--m starRating--blue starRating--">
												<!-- 별점 -->
												</div>
												<div class="offer-review__list--writer">윤**</div>
												<div class="offer-review__list--purpose">2022-01-08</div>
												<div class="offer-review__list--photo-wrapper">
													<div class="offer-review__list--message">
														<div class="with-more " style="max-height: 250px;">
															완전 즐겁게 잘 놀았어용~~~<br>여름에는 물놀이 필수입니다❤️💜💙<br>
														</div>
													</div>
												</div>
											</div>
											<hr>
											<div class="offer-review__list--content">
												<div tabindex="0" role="button" class="offer-review__list--image" alt="review-photos" style="background-image: url(&quot;https://d2ur7st6jjikze.cloudfront.net/reviews/49299/922008_large_1629003957.jpg?1629003957&quot;);">
													<div class="offer-review__list--image-cover"></div>
												</div>
												<div class="starRating starRating--m starRating--blue starRating--">
													<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
														<path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></svg>
													<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
														<path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></svg>
													<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
														<path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></svg>
													<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
														<path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></svg>
													<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
														<path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></svg>
												</div>
												<div class="offer-review__list--writer">OS*</div>
												<div class="offer-review__list--purpose">2021-08-15</div>
												<div class="offer-review__list--photo-wrapper">
													<div class="offer-review__list--message">
														<div class="with-more " style="max-height: 250px;">직원들도
															친절하고 너무 재밌게 놀았다</div>
													</div>
												</div>
											</div>
											<hr>
											<div class="offer-review--gradient"></div>
										</div>
										<div class="offer-review--more" style="">
											<button type="button" class="Button-module__button--nQweC Button-module__outline--wLxv3 Button-module__large--vtisu">
												후기 더 보기<img class="offer-review--more-arrow-icon" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjNDk1MDU2IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMiIgZD0iTTEyIDZsLTQuMDAyIDRMNCA2LjAwNSIvPgo8L3N2Zz4K" alt="arrow-icon">
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
					<div id="OFFER-NAVBAR-END"></div>
				</article>
				<aside class="Offer-module__side--vT0TU" data-sticky-container="true">
					<ul class="OfferSideBar-module__container--bB31n">
						<li class="OfferSideBar-module__row--Z97Kv"><div class="OfferSideBarMain-module__container--61JP3">
								<div class="OfferSideBarMain-module__top--wqERI">
									<div class="OfferSideBarMain-module__price--HtYY8">
										<div class="OfferPrice-module__container--IsIeb">
											<div class="OfferPrice-module__bottom--pKut4">
												<span class="OfferPrice-module__coupon--kAiKf">1인 기준&nbsp;</span><strong class="OfferPrice-module__price--rSHhS">20,900원</strong>
											</div>
										</div>
										<div class="OfferSideBarMain-module__share--QkDGO">
											<button type="button" class="ShareButton-module__shareBtn--gRzpd">
												<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjNDk1MDU2IiBzdHJva2Utd2lkdGg9IjEuMjUiPgogICAgICAgIDxjaXJjbGUgY3g9IjYuMjIyIiBjeT0iMTIiIHI9IjIuMjIyIi8+CiAgICAgICAgPGNpcmNsZSBjeD0iMTcuNDQ0IiBjeT0iNi4yMjIiIHI9IjIuMjIyIi8+CiAgICAgICAgPHBhdGggc3Ryb2tlLWxpbmVjYXA9InNxdWFyZSIgZD0iTTE0LjUgNy41bC01LjYxMSAyLjgzMyIvPgogICAgICAgIDxjaXJjbGUgY3g9IjE3LjQ0NCIgY3k9IjE3Ljc3OCIgcj0iMi4yMjIiIHRyYW5zZm9ybT0ibWF0cml4KDEgMCAwIC0xIDAgMzUuNTU2KSIvPgogICAgICAgIDxwYXRoIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIGQ9Ik0xNC41IDE2LjVsLTUuNjExLTIuODMzIi8+CiAgICA8L2c+Cjwvc3ZnPgo=" alt="share">
											</button>
											<div class="Popover bottom-right"></div>
										</div>
									</div>
									<div class="OfferSideBarMain-module__row--m5nHy">
										<button type="button" class="Button-module__button--nQweC Button-module__primary--loIc3 Button-module__large--vtisu Button-module__block--iT6b7">
											<img class="OfferSideBarMainButton-module__buttonIcon--fR5me" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMCIgaGVpZ2h0PSIxOCIgdmlld0JveD0iMCAwIDEwIDE4Ij4KICAgIDxwYXRoIGZpbGw9IiNGRkYiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTMuMzMzIDEwLjM4NUgwTDYuNjY3IDB2Ny42MTVIMTBMMy4zMzMgMTh6Ii8+Cjwvc3ZnPgo=" alt="즉시사용"><span class="OfferSideBarMainButton-module__buttonLabel--XDvWc">티켓
												선택</span>
										</button>
										<p class="OfferSideBarMainButton-module__immediately--vZh8p">
											<img class="OfferSideBarMainButton-module__icon--PP93I" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMCIgaGVpZ2h0PSIxOCIgdmlld0JveD0iMCAwIDEwIDE4Ij4KICAgIDxwYXRoIGZpbGw9IiNGRkJGMDAiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTMuMzMzIDEwLjM4NUgwTDYuNjY3IDB2Ny42MTVIMTBMMy4zMzMgMTh6Ii8+Cjwvc3ZnPgo=" alt=""><span class="OfferSideBarMainButton-module__desc--obqUL">구매
												후 즉시 확정됩니다.</span><a class="OfferSideBarMainButton-module__question--hMeFv" href="/about/instantbooking" target="_blank"><img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHJlY3Qgd2lkdGg9IjE1IiBoZWlnaHQ9IjE1IiB4PSIuNSIgeT0iLjUiIHN0cm9rZT0iIzg0OEM5NCIgcng9IjcuNSIvPgogICAgICAgIDx0ZXh0IGZpbGw9IiM4NDhDOTQiIGZvbnQtZmFtaWx5PSJTRlByb1RleHQtU2VtaWJvbGQsIFNGIFBybyBUZXh0IiBmb250LXNpemU9IjExIiBmb250LXdlaWdodD0iNTAwIj4KICAgICAgICAgICAgPHRzcGFuIHg9IjUiIHk9IjEyIj4/PC90c3Bhbj4KICAgICAgICA8L3RleHQ+CiAgICA8L2c+Cjwvc3ZnPgo=" alt="즉시사용"></a>
										</p>
									</div>
									<div class="OfferSideBarMain-module__row--m5nHy">
										<button type="button" class="Button-module__button--nQweC Button-module__outline--wLxv3 Button-module__medium--bLzcD Button-module__block--iT6b7">
											<svg class="WishIcon-module__container--AE7UW" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
												<path fill="none" fill-rule="evenodd" stroke="#CED4DA" stroke-width="1.25" d="M15.876 4.625c1.205 0 2.41.46 3.33 1.379.918.92 1.378 2.124 1.378 3.33 0 1.204-.46 2.41-1.379 3.329h0l-7.1 7.1-7.101-7.1c-.92-.92-1.379-2.125-1.379-3.33s.46-2.41 1.379-3.329c.92-.92 2.124-1.379 3.33-1.379 1.204 0 2.41.46 3.329 1.379.161.162.309.332.442.51.133-.178.28-.349.442-.51.919-.92 2.124-1.379 3.329-1.379z"></path></svg>
											<span class="OfferSideBarMainWishlist-module__label--XHwJO">위시리스트에
												담기</span>
										</button>
										<p class="OfferSideBarMainWishlist-module__desc--W5of9">534명이
											이 상품을 위시리스트에 담았습니다.</p>
									</div>
								</div>
								<div class="OfferSideBarMain-module__bottom--iJVxv">
									<div class="OfferSideBarMainPartner-module__container--tWbbq">
										<a href="/guides/5602" class="OfferSideBarMainPartner-module__partner--qfyl7" target="_blank"><img class="OfferSideBarMainPartner-module__thumbnail--FECTS" src="https://d2ur7st6jjikze.cloudfront.net/profile_images/234733/234733_original_1483406251.png?1483406251" alt="플레이스엠"><span class="OfferSideBarMainPartner-module__name--caCt6">플레이스엠</span></a>
									</div>
								</div>
							</div></li>
						
						
					</ul>
				</aside>
			</div>
		</div>
		<div class="Offer-module__recommend--IlCIb">
			
			
			
			
			<div class="offer-recommend">
				<div class="Grid-module__container--YH1rv">
					<div class="Grid-module__row--GTpEN">
						<p class="offer-recommend--title">서울 추천 호텔</p>
					</div>
				</div>
				<div class="Grid-module__container--YH1rv">
					<div class="Grid-module__row--GTpEN Grid-module__full--V7SXd">
						<div class="CardSwiper-module__container--XeLHJ CardSwiper-module__common--uy14J">
							<div class="Carousel-module__container--bsSzp">
								<div class="swiper-container swiper-container-horizontal">
									<div class="swiper-wrapper" style="width: 3240px; transform: translate3d(0px, 0px, 0px);">
										<a href="/accommodations/hotels/449804" class="CardContainer-module__container--B5cqm CardShare-module__container--lu1iP CardContainer-module__fixedWidth--XQbwP CardContainer-module__hotel--dvqs2 CardContainer-module__swiper--xl_Sd swiper-slide swiper-slide-active" target="_blank" style="width: 270px;"><div class="CardThumbnail-module__container--t05no CardThumbnail-module__vertical--fg4fQ">
												<div class="LazyImageLoader-module__container--xHxKX">
													<img alt="" class="LazyImageLoader-module__image--FB3yN MRT-LazyImageLoader__indicator LazyImageLoader-module__visible--n47Jt CardThumbnail-module__image--Tc1b4" data-src="https://images.trvl-media.com/hotels/18000000/17450000/17447900/17447885/ce758492.jpg" src="https://images.trvl-media.com/hotels/18000000/17450000/17447900/17447885/ce758492.jpg">
													<div class="LazyImageLoader-module__placeholder--iH82U CardThumbnail-module__image--Tc1b4"></div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__body--QzQrG CardShare-module__body--SgF6m">
												<h3 class="CardTitle-module__container--l9OrK CardTitle-module__vertical--COffX">
													<div class="CardTitle-module__title--WAHI8" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">나인트리
														프리미어 호텔 명동 II</div>
												</h3>
											</div>
											<div class="HotelVerticalCard-module__review--UWis1">
												<div>
													<span class="HotelReviewScore-module__container--b89AF">8.9</span>
													<div class="HotelReview-module__review--Wkrd2">
														<p class="HotelReview-module__status--Sd03b">우수함</p>
														<p class="HotelReview-module__count--Gs9AY">
															<strong>2,844개 </strong>이용후기
														</p>
													</div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__price--Frm6k">
												<p class="HotelPrice-module__container--zM3aj">
													<strong class="HotelPrice-module__price--s1SPf">79,741<span class="HotelPrice-module__unit--ozOlu">원</span></strong><small class="HotelPrice-module__standard--tTWSu">1박 최저가</small>
												</p>
											</div>
											<div class="HotelVerticalCard-module__score--q0zPK">
												<span class="HotelReviewScore-module__container--b89AF">8.9</span>
											</div></a><a href="/accommodations/hotels/24509" class="CardContainer-module__container--B5cqm CardShare-module__container--lu1iP CardContainer-module__fixedWidth--XQbwP CardContainer-module__hotel--dvqs2 CardContainer-module__swiper--xl_Sd swiper-slide swiper-slide-next" target="_blank" style="width: 270px;"><div class="CardThumbnail-module__container--t05no CardThumbnail-module__vertical--fg4fQ">
												<div class="LazyImageLoader-module__container--xHxKX">
													<img alt="" class="LazyImageLoader-module__image--FB3yN MRT-LazyImageLoader__indicator LazyImageLoader-module__visible--n47Jt CardThumbnail-module__image--Tc1b4" data-src="https://images.trvl-media.com/hotels/17000000/16730000/16728000/16727905/16e9b6d4.jpg" src="https://images.trvl-media.com/hotels/17000000/16730000/16728000/16727905/16e9b6d4.jpg">
													<div class="LazyImageLoader-module__placeholder--iH82U CardThumbnail-module__image--Tc1b4"></div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__body--QzQrG CardShare-module__body--SgF6m">
												<h3 class="CardTitle-module__container--l9OrK CardTitle-module__vertical--COffX">
													<div class="CardTitle-module__title--WAHI8" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">도미인
														서울 강남</div>
												</h3>
											</div>
											<div class="HotelVerticalCard-module__review--UWis1">
												<div>
													<span class="HotelReviewScore-module__container--b89AF">8.8</span>
													<div class="HotelReview-module__review--Wkrd2">
														<p class="HotelReview-module__status--Sd03b">우수함</p>
														<p class="HotelReview-module__count--Gs9AY">
															<strong>2,086개 </strong>이용후기
														</p>
													</div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__price--Frm6k">
												<p class="HotelPrice-module__container--zM3aj">
													<strong class="HotelPrice-module__price--s1SPf">110,308<span class="HotelPrice-module__unit--ozOlu">원</span></strong><small class="HotelPrice-module__standard--tTWSu">1박 최저가</small>
												</p>
											</div>
											<div class="HotelVerticalCard-module__score--q0zPK">
												<span class="HotelReviewScore-module__container--b89AF">8.8</span>
											</div></a><a href="/accommodations/hotels/279645" class="CardContainer-module__container--B5cqm CardShare-module__container--lu1iP CardContainer-module__fixedWidth--XQbwP CardContainer-module__hotel--dvqs2 CardContainer-module__swiper--xl_Sd swiper-slide" target="_blank" style="width: 270px;"><div class="CardThumbnail-module__container--t05no CardThumbnail-module__vertical--fg4fQ">
												<div class="LazyImageLoader-module__container--xHxKX">
													<img alt="" class="LazyImageLoader-module__image--FB3yN MRT-LazyImageLoader__indicator LazyImageLoader-module__visible--n47Jt CardThumbnail-module__image--Tc1b4" data-src="https://images.trvl-media.com/hotels/19000000/18070000/18060400/18060379/cafb893b.jpg" src="https://images.trvl-media.com/hotels/19000000/18070000/18060400/18060379/cafb893b.jpg">
													<div class="LazyImageLoader-module__placeholder--iH82U CardThumbnail-module__image--Tc1b4"></div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__body--QzQrG CardShare-module__body--SgF6m">
												<h3 class="CardTitle-module__container--l9OrK CardTitle-module__vertical--COffX">
													<div class="CardTitle-module__title--WAHI8" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">시그니엘서울</div>
												</h3>
											</div>
											<div class="HotelVerticalCard-module__review--UWis1">
												<div>
													<span class="HotelReviewScore-module__container--b89AF">9.1</span>
													<div class="HotelReview-module__review--Wkrd2">
														<p class="HotelReview-module__status--Sd03b">최고</p>
														<p class="HotelReview-module__count--Gs9AY">
															<strong>1,363개 </strong>이용후기
														</p>
													</div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__price--Frm6k">
												<p class="HotelPrice-module__container--zM3aj">
													<strong class="HotelPrice-module__price--s1SPf">667,920<span class="HotelPrice-module__unit--ozOlu">원</span></strong><small class="HotelPrice-module__standard--tTWSu">1박 최저가</small>
												</p>
											</div>
											<div class="HotelVerticalCard-module__score--q0zPK">
												<span class="HotelReviewScore-module__container--b89AF">9.1</span>
											</div></a><a href="/accommodations/hotels/292941" class="CardContainer-module__container--B5cqm CardShare-module__container--lu1iP CardContainer-module__fixedWidth--XQbwP CardContainer-module__hotel--dvqs2 CardContainer-module__swiper--xl_Sd swiper-slide" target="_blank" style="width: 270px;"><div class="CardThumbnail-module__container--t05no CardThumbnail-module__vertical--fg4fQ">
												<div class="LazyImageLoader-module__container--xHxKX">
													<img alt="" class="LazyImageLoader-module__image--FB3yN MRT-LazyImageLoader__indicator LazyImageLoader-module__visible--n47Jt CardThumbnail-module__image--Tc1b4" data-src="https://images.trvl-media.com/hotels/1000000/20000/15100/15031/90e9261b.jpg" src="https://images.trvl-media.com/hotels/1000000/20000/15100/15031/90e9261b.jpg">
													<div class="LazyImageLoader-module__placeholder--iH82U CardThumbnail-module__image--Tc1b4"></div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__body--QzQrG CardShare-module__body--SgF6m">
												<h3 class="CardTitle-module__container--l9OrK CardTitle-module__vertical--COffX">
													<div class="CardTitle-module__title--WAHI8" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">서울신라호텔</div>
												</h3>
											</div>
											<div class="HotelVerticalCard-module__review--UWis1">
												<div>
													<span class="HotelReviewScore-module__container--b89AF">9</span>
													<div class="HotelReview-module__review--Wkrd2">
														<p class="HotelReview-module__status--Sd03b">최고</p>
														<p class="HotelReview-module__count--Gs9AY">
															<strong>1,005개 </strong>이용후기
														</p>
													</div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__price--Frm6k">
												<p class="HotelPrice-module__container--zM3aj">
													<strong class="HotelPrice-module__price--s1SPf">445,280<span class="HotelPrice-module__unit--ozOlu">원</span></strong><small class="HotelPrice-module__standard--tTWSu">1박 최저가</small>
												</p>
											</div>
											<div class="HotelVerticalCard-module__score--q0zPK">
												<span class="HotelReviewScore-module__container--b89AF">9</span>
											</div></a><a href="/accommodations/hotels/381214" class="CardContainer-module__container--B5cqm CardShare-module__container--lu1iP CardContainer-module__fixedWidth--XQbwP CardContainer-module__hotel--dvqs2 CardContainer-module__swiper--xl_Sd swiper-slide" target="_blank" style="width: 270px;"><div class="CardThumbnail-module__container--t05no CardThumbnail-module__vertical--fg4fQ">
												<div class="LazyImageLoader-module__container--xHxKX">
													<img alt="" class="LazyImageLoader-module__image--FB3yN MRT-LazyImageLoader__indicator CardThumbnail-module__image--Tc1b4" data-src="https://images.trvl-media.com/hotels/13000000/12670000/12661800/12661732/ebb0abf7.jpg">
													<div class="LazyImageLoader-module__placeholder--iH82U CardThumbnail-module__image--Tc1b4 LazyImageLoader-module__visible--n47Jt"></div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__body--QzQrG CardShare-module__body--SgF6m">
												<h3 class="CardTitle-module__container--l9OrK CardTitle-module__vertical--COffX">
													<div class="CardTitle-module__title--WAHI8" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">신라스테이
														광화문</div>
												</h3>
											</div>
											<div class="HotelVerticalCard-module__review--UWis1">
												<div>
													<span class="HotelReviewScore-module__container--b89AF">7.9</span>
													<div class="HotelReview-module__review--Wkrd2">
														<p class="HotelReview-module__status--Sd03b">좋음</p>
														<p class="HotelReview-module__count--Gs9AY">
															<strong>2,057개 </strong>이용후기
														</p>
													</div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__price--Frm6k">
												<p class="HotelPrice-module__container--zM3aj">
													<strong class="HotelPrice-module__price--s1SPf">121,440<span class="HotelPrice-module__unit--ozOlu">원</span></strong><small class="HotelPrice-module__standard--tTWSu">1박 최저가</small>
												</p>
											</div>
											<div class="HotelVerticalCard-module__score--q0zPK">
												<span class="HotelReviewScore-module__container--b89AF">7.9</span>
											</div></a><a href="/accommodations/hotels/244752" class="CardContainer-module__container--B5cqm CardShare-module__container--lu1iP CardContainer-module__fixedWidth--XQbwP CardContainer-module__hotel--dvqs2 CardContainer-module__swiper--xl_Sd swiper-slide" target="_blank" style="width: 270px;"><div class="CardThumbnail-module__container--t05no CardThumbnail-module__vertical--fg4fQ">
												<div class="LazyImageLoader-module__container--xHxKX">
													<img alt="" class="LazyImageLoader-module__image--FB3yN MRT-LazyImageLoader__indicator CardThumbnail-module__image--Tc1b4" data-src="https://images.trvl-media.com/hotels/22000000/21480000/21476800/21476755/5000a5a4.jpg">
													<div class="LazyImageLoader-module__placeholder--iH82U CardThumbnail-module__image--Tc1b4 LazyImageLoader-module__visible--n47Jt"></div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__body--QzQrG CardShare-module__body--SgF6m">
												<h3 class="CardTitle-module__container--l9OrK CardTitle-module__vertical--COffX">
													<div class="CardTitle-module__title--WAHI8" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">L7
														강남 바이 롯데</div>
												</h3>
											</div>
											<div class="HotelVerticalCard-module__review--UWis1">
												<div>
													<span class="HotelReviewScore-module__container--b89AF">8.6</span>
													<div class="HotelReview-module__review--Wkrd2">
														<p class="HotelReview-module__status--Sd03b">우수함</p>
														<p class="HotelReview-module__count--Gs9AY">
															<strong>1,855개 </strong>이용후기
														</p>
													</div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__price--Frm6k">
												<p class="HotelPrice-module__container--zM3aj">
													<strong class="HotelPrice-module__price--s1SPf">118,404<span class="HotelPrice-module__unit--ozOlu">원</span></strong><small class="HotelPrice-module__standard--tTWSu">1박 최저가</small>
												</p>
											</div>
											<div class="HotelVerticalCard-module__score--q0zPK">
												<span class="HotelReviewScore-module__container--b89AF">8.6</span>
											</div></a><a href="/accommodations/hotels/302257" class="CardContainer-module__container--B5cqm CardShare-module__container--lu1iP CardContainer-module__fixedWidth--XQbwP CardContainer-module__hotel--dvqs2 CardContainer-module__swiper--xl_Sd swiper-slide" target="_blank" style="width: 270px;"><div class="CardThumbnail-module__container--t05no CardThumbnail-module__vertical--fg4fQ">
												<div class="LazyImageLoader-module__container--xHxKX">
													<img alt="" class="LazyImageLoader-module__image--FB3yN MRT-LazyImageLoader__indicator CardThumbnail-module__image--Tc1b4" data-src="https://images.trvl-media.com/hotels/16000000/15420000/15412300/15412296/abd8fa3b.jpg">
													<div class="LazyImageLoader-module__placeholder--iH82U CardThumbnail-module__image--Tc1b4 LazyImageLoader-module__visible--n47Jt"></div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__body--QzQrG CardShare-module__body--SgF6m">
												<h3 class="CardTitle-module__container--l9OrK CardTitle-module__vertical--COffX">
													<div class="CardTitle-module__title--WAHI8" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">스테이호텔
														강남</div>
												</h3>
											</div>
											<div class="HotelVerticalCard-module__review--UWis1">
												<div>
													<span class="HotelReviewScore-module__container--b89AF">8.1</span>
													<div class="HotelReview-module__review--Wkrd2">
														<p class="HotelReview-module__status--Sd03b">매우 좋음</p>
														<p class="HotelReview-module__count--Gs9AY">
															<strong>1,758개 </strong>이용후기
														</p>
													</div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__price--Frm6k">
												<p class="HotelPrice-module__container--zM3aj">
													<strong class="HotelPrice-module__price--s1SPf">99,750<span class="HotelPrice-module__unit--ozOlu">원</span></strong><small class="HotelPrice-module__standard--tTWSu">1박 최저가</small>
												</p>
											</div>
											<div class="HotelVerticalCard-module__score--q0zPK">
												<span class="HotelReviewScore-module__container--b89AF">8.1</span>
											</div></a><a href="/accommodations/hotels/394081" class="CardContainer-module__container--B5cqm CardShare-module__container--lu1iP CardContainer-module__fixedWidth--XQbwP CardContainer-module__hotel--dvqs2 CardContainer-module__swiper--xl_Sd swiper-slide" target="_blank" style="width: 270px;"><div class="CardThumbnail-module__container--t05no CardThumbnail-module__vertical--fg4fQ">
												<div class="LazyImageLoader-module__container--xHxKX">
													<img alt="" class="LazyImageLoader-module__image--FB3yN MRT-LazyImageLoader__indicator CardThumbnail-module__image--Tc1b4" data-src="https://images.trvl-media.com/hotels/1000000/30000/21800/21727/665b8f99.jpg">
													<div class="LazyImageLoader-module__placeholder--iH82U CardThumbnail-module__image--Tc1b4 LazyImageLoader-module__visible--n47Jt"></div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__body--QzQrG CardShare-module__body--SgF6m">
												<h3 class="CardTitle-module__container--l9OrK CardTitle-module__vertical--COffX">
													<div class="CardTitle-module__title--WAHI8" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">그랜드
														하얏트 서울</div>
												</h3>
											</div>
											<div class="HotelVerticalCard-module__review--UWis1">
												<div>
													<span class="HotelReviewScore-module__container--b89AF">8</span>
													<div class="HotelReview-module__review--Wkrd2">
														<p class="HotelReview-module__status--Sd03b">매우 좋음</p>
														<p class="HotelReview-module__count--Gs9AY">
															<strong>1,919개 </strong>이용후기
														</p>
													</div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__price--Frm6k">
												<p class="HotelPrice-module__container--zM3aj">
													<strong class="HotelPrice-module__price--s1SPf">315,000<span class="HotelPrice-module__unit--ozOlu">원</span></strong><small class="HotelPrice-module__standard--tTWSu">1박 최저가</small>
												</p>
											</div>
											<div class="HotelVerticalCard-module__score--q0zPK">
												<span class="HotelReviewScore-module__container--b89AF">8</span>
											</div></a><a href="/accommodations/hotels/393601" class="CardContainer-module__container--B5cqm CardShare-module__container--lu1iP CardContainer-module__fixedWidth--XQbwP CardContainer-module__hotel--dvqs2 CardContainer-module__swiper--xl_Sd swiper-slide" target="_blank" style="width: 270px;"><div class="CardThumbnail-module__container--t05no CardThumbnail-module__vertical--fg4fQ">
												<div class="LazyImageLoader-module__container--xHxKX">
													<img alt="" class="LazyImageLoader-module__image--FB3yN MRT-LazyImageLoader__indicator CardThumbnail-module__image--Tc1b4" data-src="https://images.trvl-media.com/hotels/12000000/11090000/11089800/11089793/358a7d9a.jpg">
													<div class="LazyImageLoader-module__placeholder--iH82U CardThumbnail-module__image--Tc1b4 LazyImageLoader-module__visible--n47Jt"></div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__body--QzQrG CardShare-module__body--SgF6m">
												<h3 class="CardTitle-module__container--l9OrK CardTitle-module__vertical--COffX">
													<div class="CardTitle-module__title--WAHI8" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">신라스테이
														마포</div>
												</h3>
											</div>
											<div class="HotelVerticalCard-module__review--UWis1">
												<div>
													<span class="HotelReviewScore-module__container--b89AF">7.7</span>
													<div class="HotelReview-module__review--Wkrd2">
														<p class="HotelReview-module__status--Sd03b">좋음</p>
														<p class="HotelReview-module__count--Gs9AY">
															<strong>1,470개 </strong>이용후기
														</p>
													</div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__price--Frm6k">
												<p class="HotelPrice-module__container--zM3aj">
													<strong class="HotelPrice-module__price--s1SPf">104,134<span class="HotelPrice-module__unit--ozOlu">원</span></strong><small class="HotelPrice-module__standard--tTWSu">1박 최저가</small>
												</p>
											</div>
											<div class="HotelVerticalCard-module__score--q0zPK">
												<span class="HotelReviewScore-module__container--b89AF">7.7</span>
											</div></a><a href="/accommodations/hotels/128614" class="CardContainer-module__container--B5cqm CardShare-module__container--lu1iP CardContainer-module__fixedWidth--XQbwP CardContainer-module__hotel--dvqs2 CardContainer-module__swiper--xl_Sd swiper-slide" target="_blank" style="width: 270px;"><div class="CardThumbnail-module__container--t05no CardThumbnail-module__vertical--fg4fQ">
												<div class="LazyImageLoader-module__container--xHxKX">
													<img alt="" class="LazyImageLoader-module__image--FB3yN MRT-LazyImageLoader__indicator CardThumbnail-module__image--Tc1b4" data-src="https://images.trvl-media.com/hotels/24000000/23490000/23489500/23489421/0b2a1368.jpg">
													<div class="LazyImageLoader-module__placeholder--iH82U CardThumbnail-module__image--Tc1b4 LazyImageLoader-module__visible--n47Jt"></div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__body--QzQrG CardShare-module__body--SgF6m">
												<h3 class="CardTitle-module__container--l9OrK CardTitle-module__vertical--COffX">
													<div class="CardTitle-module__title--WAHI8" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">노보텔
														앰배서더 서울 동대문 호텔 &amp; 레지던스</div>
												</h3>
											</div>
											<div class="HotelVerticalCard-module__review--UWis1">
												<div>
													<span class="HotelReviewScore-module__container--b89AF">8.4</span>
													<div class="HotelReview-module__review--Wkrd2">
														<p class="HotelReview-module__status--Sd03b">매우 좋음</p>
														<p class="HotelReview-module__count--Gs9AY">
															<strong>988개 </strong>이용후기
														</p>
													</div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__price--Frm6k">
												<p class="HotelPrice-module__container--zM3aj">
													<strong class="HotelPrice-module__price--s1SPf">170,000<span class="HotelPrice-module__unit--ozOlu">원</span></strong><small class="HotelPrice-module__standard--tTWSu">1박 최저가</small>
												</p>
											</div>
											<div class="HotelVerticalCard-module__score--q0zPK">
												<span class="HotelReviewScore-module__container--b89AF">8.4</span>
											</div></a><a href="/accommodations/hotels/87707" class="CardContainer-module__container--B5cqm CardShare-module__container--lu1iP CardContainer-module__fixedWidth--XQbwP CardContainer-module__hotel--dvqs2 CardContainer-module__swiper--xl_Sd swiper-slide" target="_blank" style="width: 270px;"><div class="CardThumbnail-module__container--t05no CardThumbnail-module__vertical--fg4fQ">
												<div class="LazyImageLoader-module__container--xHxKX">
													<img alt="" class="LazyImageLoader-module__image--FB3yN MRT-LazyImageLoader__indicator CardThumbnail-module__image--Tc1b4" data-src="https://images.trvl-media.com/hotels/1000000/980000/975000/974958/e572aebd.jpg">
													<div class="LazyImageLoader-module__placeholder--iH82U CardThumbnail-module__image--Tc1b4 LazyImageLoader-module__visible--n47Jt"></div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__body--QzQrG CardShare-module__body--SgF6m">
												<h3 class="CardTitle-module__container--l9OrK CardTitle-module__vertical--COffX">
													<div class="CardTitle-module__title--WAHI8" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">호텔
														피제이 명동</div>
												</h3>
											</div>
											<div class="HotelVerticalCard-module__review--UWis1">
												<div>
													<span class="HotelReviewScore-module__container--b89AF">8.4</span>
													<div class="HotelReview-module__review--Wkrd2">
														<p class="HotelReview-module__status--Sd03b">매우 좋음</p>
														<p class="HotelReview-module__count--Gs9AY">
															<strong>808개 </strong>이용후기
														</p>
													</div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__price--Frm6k">
												<p class="HotelPrice-module__container--zM3aj">
													<strong class="HotelPrice-module__price--s1SPf">85,366<span class="HotelPrice-module__unit--ozOlu">원</span></strong><small class="HotelPrice-module__standard--tTWSu">1박 최저가</small>
												</p>
											</div>
											<div class="HotelVerticalCard-module__score--q0zPK">
												<span class="HotelReviewScore-module__container--b89AF">8.4</span>
											</div></a><a href="/accommodations/hotels/609641" class="CardContainer-module__container--B5cqm CardShare-module__container--lu1iP CardContainer-module__fixedWidth--XQbwP CardContainer-module__hotel--dvqs2 CardContainer-module__swiper--xl_Sd swiper-slide" target="_blank" style="width: 270px;"><div class="CardThumbnail-module__container--t05no CardThumbnail-module__vertical--fg4fQ">
												<div class="LazyImageLoader-module__container--xHxKX">
													<img alt="" class="LazyImageLoader-module__image--FB3yN MRT-LazyImageLoader__indicator CardThumbnail-module__image--Tc1b4" data-src="https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/Ul2U0T7wgVdGc0SZjbNSUkIH-c-6V0SyUL52jvpr4oVcBOKGTB7lFFY-EdHX_pGmrZQm6HdObHYsbNw36BSB2Oui0L0IAZ_ksCRgX2DbAJXDS6MTsNpxYNpVPUJe1Us.jpg">
													<div class="LazyImageLoader-module__placeholder--iH82U CardThumbnail-module__image--Tc1b4 LazyImageLoader-module__visible--n47Jt"></div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__body--QzQrG CardShare-module__body--SgF6m">
												<h3 class="CardTitle-module__container--l9OrK CardTitle-module__vertical--COffX">
													<div class="CardTitle-module__title--WAHI8" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">Lotte
														Hotel Seoul Executive Tower</div>
												</h3>
											</div>
											<div class="HotelVerticalCard-module__review--UWis1">
												<div>
													<span class="HotelReviewScore-module__container--b89AF">9.1</span>
													<div class="HotelReview-module__review--Wkrd2">
														<p class="HotelReview-module__status--Sd03b">최고</p>
														<p class="HotelReview-module__count--Gs9AY">
															<strong>243개 </strong>이용후기
														</p>
													</div>
												</div>
											</div>
											<div class="HotelVerticalCard-module__price--Frm6k">
												<p class="HotelPrice-module__container--zM3aj">
													<strong class="HotelPrice-module__price--s1SPf">413,820<span class="HotelPrice-module__unit--ozOlu">원</span></strong><small class="HotelPrice-module__standard--tTWSu">1박 최저가</small>
												</p>
											</div>
											<div class="HotelVerticalCard-module__score--q0zPK">
												<span class="HotelReviewScore-module__container--b89AF">9.1</span>
											</div></a>
									</div>
									<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
								</div>
								<button type="button" class="HotelSwiper Carousel-module__button--dopOC Carousel-module__prev--rDOsF Carousel-module__disabled--YdarJ" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true" style="left: -10px;">
									<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjNDk1MDU2IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMiIgZD0iTTE0IDZsLTYgNi4wMDNMMTMuOTkzIDE4Ii8+Cjwvc3ZnPgo=" alt="prev">
								</button>
								<button type="button" class="HotelSwiper Carousel-module__button--dopOC Carousel-module__next--Gk8nt" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false" style="right: -10px;">
									<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjNDk1MDU2IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMiIgZD0iTTEwIDZsNiA2LjAwM0wxMC4wMDcgMTgiLz4KPC9zdmc+Cg==" alt="next">
								</button>
							</div>
						</div>
					</div>
				</div>
				<div class="offer-container__recommend-hotel-ink">
					<a href="https://www.myrealtrip.com/accommodations/hotels?checkin=2022-07-24&amp;checkout=2022-07-25&amp;number_of_rooms=1&amp;number_of_adults=2&amp;number_of_children=0&amp;age_of_children=&amp;place[longitude]=126.9779692&amp;place[latitude]=37.566535&amp;place[city_name]=%EC%84%9C%EC%9A%B8&amp;place[country_name]=&amp;place[place_name]=&amp;place[country_code]=kr" class="HotelListLink" target="_blank" rel="noopener noreferrer"><button type="button" class="app-button app-button__type--outline app-button__size--l">
							<span class="HotelListLink__Label">서울 호텔 더 보기</span><img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxnIGZpbGw9IiM4NDhDOTQiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTEwIDF2MS41aDIuNDRMNy40NyA3LjQ3bDEuMDYgMS4wNiA0Ljk3LTQuOTY5VjZIMTVWMXoiLz4KICAgICAgICA8cGF0aCBkPSJNMTIuNSA4djQuNWgtOXYtOUg4VjJIM2ExIDEgMCAwIDAtMSAxdjEwYTEgMSAwIDAgMCAxIDFoMTBhMSAxIDAgMCAwIDEtMVY4aC0xLjV6Ii8+CiAgICA8L2c+Cjwvc3ZnPgo=" alt="out-link">
						</button></a>
				</div>
			</div>
		</div>
		
	</div>
</div>