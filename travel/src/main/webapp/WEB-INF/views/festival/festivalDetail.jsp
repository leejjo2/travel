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
		<div class="fes_status">
			<span class="status2">진행전</span>
		</div>
		<h2 id="topTitle">[문화관광축제] 대구치맥페스티벌</h2>
		<div class="area_address" id="topAddr">
			<span>대구 달서구</span><span>2022.07.06 ~ 2022.07.10</span>
		</div>

		<!-- 캐치플레이스 -->
		<div class="dbDetail titBg" id="topCp">
			<div class="titTypeWrap">
				<h3>
					<em>시원한 얼음물에 발을 담그고 치맥을 즐길 수 있는 공간</em>
				</h3>
			</div>
		</div>
		<!-- //캐치플레이스 -->

		<div class="post_area">
			<span class="rline"> <span class="num_view"><em
					class="tit">조회수</em><span class="num" id="conRead">71.7K</span></span>
				<button type="button" class="btn_sharing" onclick="openShare();">
					<span class="ico">공유하기</span><span class="num" id="conShare">94</span>
				</button>
			</span>
		</div>
	</div>
	<!-- //상단 -->

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
				<div class="festivalBanner">
					<a href="${pageContext.request.contextPath}/festival/list">지금 핫한 축제가 궁금해?</a>
				</div>
				<!-- 공사 사진 영역 -->
				<div class="swiper-container">
					<div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false" data-bs-interval="false">
						<div class="carousel-inner">
					    	<div class="carousel-item active">
					    		<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=ba7358e6-7803-4534-be80-2bcbbcaf69ea" class="d-block w-100" alt="...">
					    	</div>
					    	<div class="carousel-item">
					      		<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=ba7358e6-7803-4534-be80-2bcbbcaf69ea" class="d-block w-100" alt="...">
					    	</div>
					    	<div class="carousel-item">
					      		<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=ba7358e6-7803-4534-be80-2bcbbcaf69ea" class="d-block w-100" alt="...">
					    	</div>
					  	</div>
					  	
					  	<!-- 사진 페이징 -->
						<div class="swiper-pagination swiper-pagination-fraction">
							<span class="swiper-pagination-current">1</span> / 
							<span class="swiper-pagination-total">2</span>
						</div>
					  	<!-- // 사진 페이징 -->
					  	
					  	<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
					    	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    	<span class="visually-hidden">Previous</span>
					  	</button>
					  	<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
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
					<div class="inr_wrap" style="overflow: hidden; height: 150px;">
						<div class="inr">
							<p>
								[축제소개] 한여름밤의 치맥!<br>하늘이 내린 최고의 조합, 치킨과 맥주! 매년 여름, 대구에서 치킨과
								맥주의 기막힌 조합을 테마로 한 대구치맥페스티벌이 열린다. 치맥페스티벌이라는 말 그대로 축제 기간 동안 맛있는
								치킨과 시원한 맥주를 마음껏 즐기며 가수들의 공연을 관람할 수 있다. 유명 치킨프렌차이즈들이 참여하기 때문에 다양한
								치킨을 한자리에서 골고루 맛볼 수 있는 절호의 기회이기도 하다. 시원한 얼음물에 발을 담그고 치맥을 즐길 수 있는
								공간도 마련되어 있다. 유명 가수들의 축하공연과 DJ들의 신나는 EDM파티가 열리며, 밤 9시 9분에는 모두 함께
								건배를 외치는 치맥 99 건배 타임이라는 재미있는 이벤트도 진행된다. <br>
								<br>[축제TIP] 치맥이란?<br>치킨과 맥주를 합한 말로, 흔히 쓰인다. 전국에서 큰 인기를
								얻고 있는 유명한 치킨프랜차이즈 브랜드의 대부분이 대구에서 시작되었다는 사실! 한국전쟁 이후 피폐해진 국민들에게
								다양한 육류를 제공하기위해 달구벌(구. 대구명칭)에서 계육산업이 시작하게 되었다.<br>
								<br>[행사내용]<br>치맥 99 건배 타임 : 행사 기간 중 일정 시간만 되면 모든 관람객이
								잔을 들고 건배하듯 동시에 ‘꼬끼오’를 외치는 시간이다.<br>치맥 아이스 카페존 : 드라이아이스로 시원한
								공간을 조성하여 시원한 맥주와 함께 라이브 공연을 즐길 수 있는 공간이다.<br>치맥 버스킹 : 야외무대
								스크린을 배경으로 진행되는 거리공연을 즐길 수 있다.
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
								<li><strong>시작일</strong><span>2022.07.06</span></li>
								<li><strong>종료일</strong><span>2022.07.10</span></li>
								<li><strong>전화번호</strong><span class="mo"><a
										href="tel:053-248-9998">053-248-9998</a></span><span class="pc">053-248-9998</span></li>
								<li><strong>홈페이지</strong><span><a
										href="http://www.chimacfestival.com" target="_blank"
										title="새창:치맥국제페스티벌 홈페이지로 이동">http://www.chimacfestival.com</a></span></li>
								<li><strong>주소</strong><span>대구광역시 달서구 공원순환로 36</span></li>
								<li><strong>행사장소</strong><span>두류공원 일원</span></li>
								<li><strong>주최</strong><span>(사)한국치맥산업협회</span></li>
								<li><strong>주관</strong><span>대구치맥페스티벌 조직위원회</span></li>
								<li><strong>이용요금</strong><span>무료</span></li>
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
			<strong class="stit"><span>함께 떠나는 </span>대구 달서구<span> 코스여행</span></strong>
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
