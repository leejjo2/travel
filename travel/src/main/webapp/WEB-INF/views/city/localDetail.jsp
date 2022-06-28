<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/festival/css/swiper.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/festival/css/trss.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/festival/css/commonDetail.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/festival/css/contentDetail.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/festival/css/flickity.css">

<script type="text/javascript">
$(function() {
	$(".btn_more").click(function() {
		if($("#detailGo .area_txtView").hasClass("on") === true) {
			$("#detailGo .area_txtView").removeClass("on");
		} else {
			$("#detailGo .area_txtView").addClass("on");
		}
	});
});
</script>

<div id="contents">
	<!-- 상단 -->
	<div class="titleType1">

		<h2 id="topTitle">${title}</h2>

		<!-- //캐치플레이스 -->

		<!-- 조회수, 공유하기 -->
		<div class="post_area">
			<span class="rline">
				<span class="num_view">
					<em class="tit">조회수</em>
					<span class="num" id="conRead">71.7K</span>
				</span>
				<button type="button" class="btn_sharing" onclick="">
					<span class="ico">공유하기</span>
					<span class="num" id="conShare">94</span>
				</button>
			</span>
		</div>
		<!-- // 조회수, 공유하기 -->
	</div>
	<!-- // 상단 -->

	<!-- 내용 -->
	<div class="db_cont_detail">
		<div class="detail_tab menuFixed">
			<ul>
				<li class="select_tab on" id="photoTab"><a
					href="#galleryGo"><span>사진보기</span></a></li>
				<li class="select_tab" id="detailTab"><a
					href="#detailGo"><span>상세정보</span></a></li>
				<li class="select_tab" id="recomTab"><a
					href="#relationGo"><span>추천여행</span></a></li>
			</ul>
		</div>

		<!-- 사진보기 -->
		<div id="galleryGo">
			<h3 class="blind">사진보기</h3>
			<div class="photo_gallery">
				<!-- 공사 사진 영역 -->
				<div class="swiper-container">
					<div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false" data-bs-interval="false">
					 	<div class="carousel-inner">
						 	<div class="carousel-item active">
						    	<img src="${firstimage}" class="d-block w-100" alt="...">
						    </div>
						    <div class="carousel-item">
						      	<img src="${firstimage2}" class="d-block w-100" alt="...">
						    </div>
					  	</div>
					  	<!-- 사진 페이징 -->
						<div class="swiper-pagination swiper-pagination-fraction">
							<span class="swiper-pagination-current">1</span> / 
							<span class="swiper-pagination-total">2</span>
						</div>
					  	<!-- // 사진 페이징 -->
					  	<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="prev">
					    	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    	<span class="visually-hidden">Previous</span>
					  	</button>
					  	<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="next">
					    	<span class="carousel-control-next-icon" aria-hidden="true"></span>
					    	<span class="visually-hidden">Next</span>
					  	</button>
					</div>
				</div>
			</div>
		</div>
		<!-- //사진보기 -->
		
		<!-- 상세정보 -->
		<div id="detailGo">
			<!-- 글 내용 -->
			<div class="wrap_contView">
				<h3>상세정보</h3>
				<div class="area_txtView top" style="padding-bottom: 54px;">
					<div class="inr_wrap" style="overflow: hidden; height: 90px;">
						<div class="inr">
							<p>
								${overview}
							</p>
						</div>
					</div>
					<div class="cont_more">
						<button type="button" class="btn_more" title="내용더보기">
							내용 <span>더보기</span>
						</button>
					</div>
				</div>
			</div>
			<!-- // 글 내용 -->
			
			<!-- 주변정보 지도 -->
			<div class="surroundingsMap" id="detailGo">
				
			</div>
			<!-- //주변정보 지도 -->

			<div class="wrap_contView">
				<!-- 세부 정보 -->
				<div class="area_txtView bottom" style="padding-bottom: 0px;">
					<div class="inr_wrap" style="overflow: visible; height: auto;">
						<div class="inr">
							<ul>
								<li><strong>주소</strong><span>${addr1}${addr2}</span></li>
								<li>
									<strong>홈페이지</strong>
									<span>${homepage}</span>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- //세부 정보 -->
			</div>
		</div>
		<!-- //상세정보 -->

		<!-- 연관코스 -->
		<div id="relationGo"></div>
		<div class="relation_cos">
			<h3> 추천여행 </h3>
			<strong class="stit"><span>함께 떠나는 </span>대구<span> 코스여행</span></strong>
			<div class="cos_wrap type1">
				<div class="title">
					<em>4코스</em>
					<strong><a href="">가족들 웃음소리 가득 찬 하루</a></strong>
					<div>
						<span>대구 달서구</span><span>코스 총거리 : 50km</span>
					</div>
				</div>
				<div class="pc">
					<div class="swiper-container">
						<ul class="swiper-wrapper">
							<%for(int i=0; i<4; i++) { %>
							<li class="swiper-slide">
								<em>1</em>
								<a href="">
									<span class="img" style="background: url(https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=36cd6f2b-274a-45c5-ba89-df6ca5c1dcf3) 50% 50%/cover no-repeat;"></span>
									<span class="tit"><span>대구수목원</span></span>
								</a>
							</li>
							<%}%>
						</ul>
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
					</div>
				</div>
				
			</div>
		</div>
		<!-- //연관코스 -->
	</div>
	
	<!-- 맨 위로 이동 -->
	<div class="btn_topWrap main">
		<div class="inner">
			<a href="#contents" class="btn_topMove2">위로이동</a>
		</div>
	</div>
</div>
