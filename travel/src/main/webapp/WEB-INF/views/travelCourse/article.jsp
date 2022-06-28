<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/travelCourse/articleCommon.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/travelCourse/articleContent.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/travelCourse/swiper.min.css" type="text/css">
<style type="text/css">
.relation_cos .cos_wrap ul li.on1 a:after, .relation_cos .cos_wrap ul li:hover a:after{background: rgba(13,202,240,.8);}

</style>
<script type="text/javascript">
$(function(){
	$(".swiper-slide").eq(0).addClass("swiper-slide-active");
	$(".swiper-slide").eq(0).addClass("on");
	$(".swiper-slide").eq(0).addClass("on1");
	$(".swiper-slide").eq(1).addClass("swiper-slide-next");
	$(".cos_cont").eq(0).addClass("active");
});

$(document).ready(function() {
	$(document).on("click", ".swiper-slide a", function() {
		
		let num = $(this).attr('id');
		$(".swiper-slide").removeClass('on');
		$(".swiper-slide").removeClass('on1');
		for(let i=0; i<num; i++){
			$(".swiper-slide").eq(i).addClass("on");
			if(i==(num-1)){
				$(".swiper-slide").eq(i).addClass("on1");
			}
		}
		$(".cos_cont").removeClass("active");
		$(".cos_cont").eq(num-1).addClass("active");
    });
});

</script>


<div id="contents">
	<div class="titleType1">

		<div class="tit">
			<h2><em class="tit_cos">${courseCount}코스</em>${dto.subject}</h2>
		</div>
		<div class="area_address">
			<span class="address">${dto.cityName}</span>
		</div>
		<div class="post_area">
			<button type="button" class="btn_good" onclick="likeSave();"><span class="ico">좋아요</span><span class="num" id="conLike">${dto.likeCount}</span></button>
			<button type="button" class="btn_sharing" onclick="openShare2();"><span class="ico">스크랩</span><span class="num" id="conShare">${dto.scrapCount}</span></button>
			<span class="num_view"><em class="tit">조회수</em><span class="num" id="conRead">${dto.hitCount}</span></span>
		</div>
	</div>
	
	<div class="course_detail">
		<div class="schedule_info">
			<ul class="schedule">	
				<li>	
					<span class="img">
						<img src="${pageContext.request.contextPath}/dist/theme/article/resources/images/sub/icon_cos_schedule1.gif" alt="">
					</span>	
					<em>일정</em>	<strong>${dto.period}</strong>	
				</li>	
				<li>
					<span class="img">
						<img src="${pageContext.request.contextPath}/dist/theme/article/resources/images/sub/icon_cos_theme4.gif" alt="">
					</span>	
					<em>테마</em>	<strong>${dto.themeName}</strong>	
				</li>
			</ul>
		</div>
		
		<!-- 내용더보기 -->
		<div class="wrap_contView">
			<div class="area_txtView top" style="padding-bottom: 0px;">
				<div class="inr_wrap" style="overflow: visible; height: auto;">
					<div class="inr">
						<p>${dto.content}</p>
					</div>
				</div>
				<div class="cont_more" style="display: none;"><button type="button" class="btn_more" title="내용더보기"><span>더보기</span></button></div>
			</div>
		</div>
		<!-- //내용더보기 -->
		
		<!-- 지도 -->
		<div class="mapSite" style="margin-top: 20px;">
			<jsp:include page="/WEB-INF/views/travelCourse/map2.jsp" />
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
								<c:forEach var="list" items="${courseList}">
								<li class="swiper-slide"><em>${list.courseSeq}<span>코스</span></em>
									<a id="${list.courseSeq}"> <span class="img"
										style="background: url('${pageContext.request.contextPath}/uploads/course/${dto.saveFileName}') 50% 50%/cover no-repeat;"></span>
										<div class="tit">
											<span>${list.placeName}</span>
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
				<!-- mobile -->
				<div class="mo js_slider">
					<div class="swiper-container swiper-container-initialized swiper-container-horizontal">
						<ul class="swiper-wrapper cosList" style="transition-duration: 0ms;"><li class="swiper-slide on1">	<em>1<span>코스</span></em>	<a href="#cosTab01">		<img class="img swiper-lazy" data-src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=c44a55e9-9de0-41c1-8298-a685857138b9">		<div class="tit"><span>천안 독립기념관</span></div>	</a></li><li class="swiper-slide">	<em>2<span>코스</span></em>	<a href="#cosTab02">		<img class="img swiper-lazy" data-src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=6da1a3b1-87b3-4221-aaba-d4a1cdb40a03">		<div class="tit"><span>아우내독립만세운동기념공원</span></div>	</a></li><li class="swiper-slide">	<em>3<span>코스</span></em>	<a href="#cosTab03">		<img class="img swiper-lazy" data-src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=84f96fc3-0f7b-41d4-b77c-1c02f0dadf63">		<div class="tit"><span>유관순열사기념관</span></div>	</a></li><li class="swiper-slide">	<em>4<span>코스</span></em>	<a href="#cosTab04">		<img class="img swiper-lazy" data-src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=75da626e-b6ce-4891-9498-fe271082bbbd">		<div class="tit"><span>천안 유관순 열사 유적</span></div>	</a></li><li class="swiper-slide">	<em>5<span>코스</span></em>	<a href="#cosTab05">		<img class="img swiper-lazy" data-src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=221ca3e1-4e85-4f23-8643-becaf7c34988">		<div class="tit"><span>유관순열사생가</span></div>	</a></li></ul>
					<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span><span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
				</div>
				<!-- //mobile -->
			</div>
			
			<!-- tab cont -->
			<div id="tabCont">
				<c:forEach var ="list" items="${courseList}">
					<div class="cos_cont" id="cosTab01">
						<div class="detail_box">
							<div class="title">
								<div class="tit_wrap">
									<em>${list.courseSeq}</em> <strong><a
										href="/detail/detail_view.do?cotid=bf26a90b-9060-45f0-b574-5c15eae57d1e">
										${list.placeName}
										</a></strong>
								</div>
								<span>${list.address}</span>
							</div>
							<div class="info_area pc">
								<div class="wrap">
									<div>
										<a href="/detail/detail_view.do?cotid=bf26a90b-9060-45f0-b574-5c15eae57d1e"
											style="background: url('${pageContext.request.contextPath}/uploads/course/${list.saveFileName}') 50% 50%/cover no-repeat;">
										</a>
									</div>
									<div style="width:400px; padding: 20px;">
										<span style="display:block; height:30px; line-height: 30px; font-family: 맑은고딕;">${list.detailContent}</span>
											<strong><span style="font-family: 맑은고딕; display:block; height:130px; border-top: solid 1px #eee;border-bottom: solid 1px #eee; padding: 10px; line-height: 110px;">${list.detailContent}</span></strong>
										<span style="display:block; height:50px; line-height: 50px;">
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
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
		<div class="area_map" id="map3">
		</div>
	</div>
	<!-- //0521 지도 크게보기 팝업 -->
</div>