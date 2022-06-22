<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<link rel="canonical"
	href="https://korean.visitkorea.or.kr/detail/cs_detail_cos.do?cotid=61774397-240d-499d-b806-575fd95fdea6&amp;big_category=C01&amp;mid_category=C0114&amp;big_area=4">
<!-- 2019-07-26  url 추가 -->
<link rel="shortcut icon" type="image/x-icon"
	href="/resources/images/favicon02.ico">
<!-- 0904 파비콘 추가 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/dist/theme/article/resources/css/swiper.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/dist/theme/article/resources/css/trss.css?v=20210723001">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/dist/theme/article/resources/css/common.css?v=202010277dddefde-4854-4f4d-ad0a-c1bb8f4cf04a">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/dist/theme/article/resources/css/content.css?v=202010277dddefde-4854-4f4d-ad0a-c1bb8f4cf04a">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/dist/theme/article/resources/css/flickity.css">


<link rel="stylesheet" type="text/css"
	href="https://1330chat.visitkorea.or.kr/ttalk/css/ttalk-import.css">
<link id="sphereCss" rel="stylesheet" type="text/css"
	href="https://cdn.tand.kr/msg/style/sa-campaign.css">

<script type="text/javascript">
$(function(){
	$(".swiper-slide").eq(0).addClass("swiper-slide-active");
	$(".swiper-slide").eq(0).addClass("on");
	$(".swiper-slide").eq(0).addClass("on1");
	$(".swiper-slide").eq(1).addClass("swiper-slide-next");
});

</script>



<div id="contents" style="margin-top: 30px;">

	<div class="titleType1">
		<div class="area_tag">
			<span class="name2"><a href="/list/cs_list.do"><span
					class="ico">Easy</span>${dto.themeName}</a></span>
		</div>
		<div class="tit">
			<h2>
				<em class="tit_cos">${courseCount}코스</em>${dto.subject }
			</h2>
		</div>
		<div class="area_address">
			<span class="address">${dto.cityName}</span> <span id="dist">코스
				총거리 : 127km</span>
		</div>
		<div class="post_area">
			<button type="button" class="btn_good" onclick="setLike();">
				<span class="ico">좋아요</span><span class="num" id="conLike">1</span>
			</button>
			<button type="button" class="btn_sharing" onclick="openShare();">
				<span class="ico">공유하기</span><span class="num" id="conShare">0</span>
			</button>
			<span class="num_view"><em class="tit">조회수 </em><span
				class="num" id="conRead">${dto.hitCount}</span></span> <span class="rline">
				<button type="button" class="btn_bookmark"
					onclick="setFavoContentDetail();">
					<span class="ico">즐겨찾기</span>
				</button>
				<button type="button" class="btn_print" onclick="openPrint();"
					title="새창 열림">
					<span class="ico" title="새창 열림">인쇄하기</span>
				</button>
				<button type="button" class="btn_cos"
					onclick="myCourseCartDetail('C','25','');">
					<span class="ico">코스 담기</span>
				</button>
			</span>
			<div class="cos_layer" style="display: none;">
				코스에 담기 진행 후<br>코스를 편집해보세요.
				<button type="button">닫기</button>
			</div>
		</div>
	</div>
	<div class="course_detail">
		<div class="schedule_info">
			<ul class="schedule">
				<li><span class="img"><img
						src="${pageContext.request.contextPath}/dist/theme/article/resources/images/sub/icon_cos_schedule1.gif"
						alt=""></span> <em>일정</em> <strong>${dto.period}</strong></li>
				<li><span class="img"><img
						src="${pageContext.request.contextPath}/dist/theme/article/resources/images/sub/icon_cos_theme4.gif"
						alt=""></span> <em>테마</em> <strong>${dto.themeName }</strong></li>
			</ul>
			<div class="tag">
				<em>태그</em> <span> <c:forEach var="hashtag"
						items="${fn:split(dto.hashtag,',')}">
						<a href=""># ${hashtag}</a>
					</c:forEach>
				</span>
			</div>
		</div>

		<!-- 내용더보기 -->
		<div class="wrap_contView">
			<div class="area_txtView top" style="padding-bottom: 0px;">
				<div class="inr_wrap" style="overflow: visible; height: auto;">
					<div class="inr">
						<p>${dto.content }</p>
					</div>
				</div>
				<div class="cont_more" style="display: none;">
					<button type="button" class="btn_more" title="내용더보기">
						<span>더보기</span>
					</button>
				</div>
			</div>
		</div>
		<!-- //내용더보기 -->

		<!-- 지도 -->
		<div class="mapSite" style="margin-top: 20px;">
			<jsp:include page="/WEB-INF/views/theme/map2.jsp" />
		</div>
		<!-- //지도 -->

		<!-- 연관 코스 -->
		<div class="relation_cos">
			<div class="cos_wrap">
				<!-- pc -->
				<div class="pc js_slider">
					<div
						class="swiper-container swiper-container-initialized swiper-container-horizontal">
							<ul class="swiper-wrapper cosList"
								style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
								<c:forEach var="dto" items="${courseList}">
								<li class="swiper-slide"><em>1<span>코스</span></em>
									<a href="#cosTab01"> <span class="img"
										style="background: url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;amp;id=76e51cf7-8587-4244-8e09-dd1996a56d63) 50% 50%/cover no-repeat;"></span>
										<div class="tit">
											<span>${dto.placeName}</span>
										</div>
								</a></li>
								</c:forEach>
							</ul>
						<!-- Add Arrows -->
						<div class="swiper-button-next" tabindex="0" role="button"
							aria-label="Next slide" aria-disabled="false"></div>
						<div class="swiper-button-prev swiper-button-disabled"
							tabindex="0" role="button" aria-label="Previous slide"
							aria-disabled="true"></div>
						<span class="swiper-notification" aria-live="assertive"
							aria-atomic="true"></span>
					</div>
				</div>
				<!-- //pc -->
			</div>

			<!-- tab cont -->
			<div id="tabCont">
				<div class="cos_cont active" id="cosTab01">
					<div class="detail_box">
						<div class="title">
							<div class="tit_wrap">
								<em>1</em> <strong><a
									href="/detail/detail_view.do?cotid=bf26a90b-9060-45f0-b574-5c15eae57d1e">동인동
										찜갈비 골목</a></strong>
							</div>
							<span>대구광역시 중구 동덕로36길 9-12</span><span>내 위치에서 240.0km</span>
						</div>
						<div class="info_area pc">
							<div class="wrap">
								<div>
									<a
										href="/detail/detail_view.do?cotid=bf26a90b-9060-45f0-b574-5c15eae57d1e"
										style="background: url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;amp;id=76e51cf7-8587-4244-8e09-dd1996a56d63) 50% 50%/cover no-repeat;">동인동
										찜갈비 골목 0</a>
								</div>
								<div>
									<a
										href="/detail/detail_view.do?cotid=bf26a90b-9060-45f0-b574-5c15eae57d1e"
										style="background: url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;amp;id=609caeee-9f77-449c-98d2-b5123eeed8c0) 50% 50%/cover no-repeat;">동인동
										찜갈비 골목 1</a>
								</div>
								<div>
									<a
										href="/detail/detail_view.do?cotid=bf26a90b-9060-45f0-b574-5c15eae57d1e"
										style="background: url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;amp;id=6099d4f1-1222-48a6-9843-9f178ee918dc) 50% 50%/cover no-repeat;">동인동
										찜갈비 골목 2</a>
								</div>
							</div>
						</div>
						<ul class="tag">
							<li><a
								href="javascript:goTagList('12','관광지','3f36ca4b-6f45-45cb-9042-265c96a4868c');">#관광지</a></li>
							<li><a
								href="javascript:goTagList('12','남녀노소','ac603f5b-7c51-4c19-8ef6-b9c25c86b019');">#남녀노소</a></li>
							<li><a
								href="javascript:goTagList('12','돼지갈비찜','0753dcf5-fa0a-11e9-9488-02001c6b0001');">#돼지갈비찜</a></li>
							<li><a
								href="javascript:goTagList('12','맛집투어','403ec704-ec2b-4efc-bb8e-21eaec4ebde1');">#맛집투어</a></li>
							<li><a
								href="javascript:goTagList('12','먹자골목','db159526-1408-41ea-a4c5-adcf95516f0c');">#먹자골목</a></li>
							<li><a
								href="javascript:goTagList('12','숨은맛집','0a703563-962c-44ba-84a5-e9db7d22f6a4');">#숨은맛집</a></li>
							<li><a
								href="javascript:goTagList('12','왕갈비','032f8ec4-eeb9-11e8-9488-02001c6b0001');">#왕갈비</a></li>
							<li><a
								href="javascript:goTagList('12','전국맛집','0bbc5e6b-ebd3-4471-b6cb-f3dfb8980999');">#전국맛집</a></li>
							<li><a
								href="javascript:goTagList('12','체험','23bc02b8-da01-41bf-8118-af882436cd3c');">#체험</a></li>
							<li><a
								href="javascript:goTagList('12','친구와함께','059b388b-97f9-410e-b275-230171661645');">#친구와함께</a></li>
							<li><a
								href="javascript:goTagList('12','한우갈비','2d9085d2-ed67-11e8-9488-02001c6b0001');">#한우갈비</a></li>
							<li><a
								href="javascript:goTagList('12','한우소갈비','020544e1-3b27-11e9-9488-02001c6b0001');">#한우소갈비</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- //tab cont -->
		</div>
		<!-- //연관 코스 -->
	</div>

	<!-- 0521 지도 크게보기 팝업 -->
	<div class="wrap_layerpop layer_mapView">
		<div class="tit">
			<button type="button" class="btn_close2">닫기</button>
		</div>
		<div class="area_map" id="map3"></div>
	</div>
	<!-- //0521 지도 크게보기 팝업 -->

	<!-- 여행톡 -->
	<h3 class="blind">여행톡</h3>
	<div class="db_cont_detail">
		<div id="replyGo">
			<div class="replyWrap">
				<!-- login 추가시 로그인 후 form -->
				<h3 class="tit_reply">
					여행톡<span>4</span>
				</h3>
				<div class="write">
					<div class="form">
						<form name="tform" id="tform">
							<label class="blind" for="comment">로그인 후 소중한 댓글을 남겨주세요.</label> <span
								class="writeForm"><textarea name="" rows="" id="comment"
									placeholder="로그인 후 소중한 댓글을 남겨주세요." cols="" readonly="readonly"></textarea></span>
							<div class="fileRegbtn_wrap">
								<span class="fileRegbtn"> <input type="file" id="fileUp"
									name="fileUp" multiple="" onchange="fileChange(this)"
									disabled="disabled"> <label for="fileUp"
									class="btn_fileUp">파일찾기</label> <a href="javascript:"
									class="btn_apply ContentComment">로그인</a>
								</span>
							</div>
						</form>
					</div>
				</div>
				<div class="wrap_reply">
					<p class="reply_none" style="display: none;">등록된 댓글이 없습니다.</p>
				</div>
				<div class="wrap_reply">
					<div class="list_reply">
						<ul>
							<li id="e4ba3e14-2c59-4136-95bf-1d8f362d70f2"
								class="level_mission"><div class="mission">
									<span>여행구독 6월 미션 진행 중</span>
								</div>
								<div class="profile">
									<div class="photo" icid="e4ba3e14-2c59-4136-95bf-1d8f362d70f2">
										<img
											src="https://k.kakaocdn.net/dn/lqnu2/btrxHuo9aqS/Df6X3prlbQoWvSPITOmZl1/img_640x640.jpg"
											alt="프로필 사진">
									</div>
									<span class="ico"><img
										src="${pageContext.request.contextPath}/dist/theme/article/resources/images/sub/ico_kakao.png"
										alt="카카오"></span>
								</div>
								<div class="txt_reply">
									<p>대구만의 특별함을 느낄 수 있는 곳으로 가득하네요! 너무 좋아요 대구?</p>
									<div class="date">
										<em class="name">은*</em> <span>2022-06-16</span>
									</div>
								</div> <span class="replyBtn active"><button type="button"
										class="btn1">
										<span>0</span>
									</button>
									<button type="button" class="btn2">
										<span>0</span>
									</button></span><span class="btn_report"><button type="button"
										onclick="OpenReportPopup('e4ba3e14-2c59-4136-95bf-1d8f362d70f2');">신고하기</button></span>
								<div class="replyBox" style="display: none;">
									<ul>
										<li class="inputcomment">
											<div class="mLine">
												<div class="replyForm">
													<form name="form">
														<label class="blind" for="replyForm">답글을 입력하세요.</label>
														<textarea class="comment" id="replyForm" rows=""
															placeholder="로그인 후 소중한 답글을 남겨주세요." cols=""
															readonly="readonly"></textarea>
														<div class="btn">
															<span class="fileRegbtn"> <input type="file"
																class="fileUp"
																id="fileUpe4ba3e14-2c59-4136-95bf-1d8f362d70f2"
																name="fileUpe4ba3e14-2c59-4136-95bf-1d8f362d70f2"
																onchange="fileChange(this)" disabled="disabled">
																<label for="fileUpe4ba3e14-2c59-4136-95bf-1d8f362d70f2"
																class="btn_fileUp">파일찾기</label>
															</span> <a href="javascript:;" class="btn_apply ContentComment">로그인</a>
														</div>
													</form>
												</div>
											</div>
										</li>
									</ul>
								</div></li>
						</ul>
						<div class="btn_center" id="commentMore" style="">
							<a href="javascript:" class="btn_more">댓글 더보기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //여행톡 -->
</div>



