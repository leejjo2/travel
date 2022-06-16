<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!-- 슬릭 -->
<link rel="stylesheet" type="text/css"
	href="/trip/dist/theme/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="/trip/dist/theme/slick/slick-theme.css" />

<!-- 리스트부분 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/dist/theme/css/swiper.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/dist/theme/css/common.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/dist/theme/css/content.css">


<style type="text/css">
.box {
	border: 1px solid #ccc;
	margin: 10px auto;
	padding: 10px;
	max-width: 800px;
}

/* 버튼 */
.btn {
	font-weight: bold;
	padding: 5px 10px;
}

/* 검색부분 */
.card {
	border: none;
}

.search {
	width: 100%;
	margin-bottom: auto;
	margin-top: 20px;
	height: 50px;
	background-color: #fff;
	padding: 10px;
	border-radius: 5px;
}

.search-input {
	color: white;
	border: 0;
	outline: 0;
	background: none;
	width: 0;
	margin-top: 5px;
	caret-color: transparent;
	line-height: 20px;
	transition: width 0.4s linear
}

.search .search-input {
	padding: 0 10px;
	width: 100%;
	caret-color: #536bf6;
	font-size: 19px;
	font-weight: 300;
	color: black;
	transition: width 0.4s linear;
}

.search-icon {
	height: 34px;
	width: 34px;
	float: right;
	display: flex;
	justify-content: center;
	align-items: center;
	color: white;
	background-color: #536bf6;
	font-size: 10px;
	bottom: 30px;
	position: relative;
	border-radius: 5px;
}

.search-icon:hover {
	color: #fff !important;
}

a:link {
	text-decoration: none
}

.card-inner {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-clip: border-box;
	border: 1px solid rgba(0, 0, 0, .125);
	border-radius: .25rem;
	border: none;
	cursor: pointer;
	transition: all 2s;
}

.card-inner:hover {
	transform: scale(1.1);
}

.mg-text span {
	font-size: 12px;
}

.mg-text {
	line-height: 14px;
}

/* 리스트 부분 */
.glyphicon {
	margin-right: 5px;
}

.thumbnail {
	padding: 0px;
	-webkit-border-radius: 0px;
	-moz-border-radius: 0px;
	border-radius: 0px;
}

.heart1 {
	position: absolute;
	width: 100px;
	height: 100px;
	left: 90%;
	top: 7%;
	transform: translate(-50%, -50%);
	background:
		url("${pageContext.request.contextPath}/resources/images/theme/heart.png")
		no-repeat;
	background-position: 0 0;
	background-size: 2900%;
	cursor: pointer;
}

.heart-line {
	background-position: -2800px 0;
	transition: background 1s steps(28);
}

.heart {
	background: :
		url("${pageContext.request.contextPath}/resources/images/theme/heart.png");
}

/* 슬릭 */
.post-slider {
	width: 100%;
	margin: 0px auto;
	position: relative;
}

.post-slider .silder-title {
	text-align: center;
	margin: 30px auto;
}

.post-slider .next, .post-slider .next1, .post-slider .next2 {
	position: absolute;
	top: 40%;
	right: 0px;
	font-size: 2em;
	cursor: pointer;
}

.post-slider .prev, .post-slider .prev1, .post-slider .prev2 {
	position: absolute;
	top: 40%;
	left: 0px;
	font-size: 2em;
	cursor: pointer;
}

.post-slider .post-wrapper, .post-slider .post-wrapper1, .post-slider .post-wrapper2
	{
	width: 90%;
	height: 100px;
	margin: 0px auto;
	overflow: hidden;
	padding: 10px 0px 10px 0px;
}

.post-slider .post-wrapper .post, .post-slider .post-wrapper1 .post,
	.post-slider .post-wrapper2 .post {
	width: 300px;
	height: 100px;
	margin: 0px 10px;
	display: inline-block;
	background: #0dcaf0;
	border-radius: 5px;
}

.post-slider .post-wrapper .post .post-info, .post-slider .post-wrapper1 .post .post-info,
	.post-slider .post-wrapper2 .post .post-info {
	font-size: 15px;
	height: 30%;
}

.post-slider .post-wrapper .post .slider-image, .post-slider .post-wrapper1 .post .slider-image,
	.post-slider .post-wrapper2 .post .slider-image {
	width: 87%;
	height: 100px;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
}
</style>


<script type="text/javascript">
	$(function() {
		var animated = false;
		$('.heart1').click(function() {
			if (!animated) {
				$(this).addClass('heart-line');
				animated = true;
			} else {
				$(this).removeClass('heart-line').addClass('heart1');
				animated = false;
			}
		});
	})
</script>



<div class="container-fluid">
	<div class="container mt-4">
		<div class="row justify-content-center">
			<div class="col-md-9 justify-content-center">
				<div class="row">
					<div class="col-10">
						<h3>
							<i class="fa-solid fa-shield-dog"></i> 테마별 코스 추천
						</h3>
					</div>
					<span class="col-2" style="text-align: center;"><button
							type="button" class="btn red" style="background: #0dcaf0;"
							onclick="location.href='${pageContext.request.contextPath}/theme/write;'">글
							등록하기</button></span>
				</div>
				<div class="card p-4 mt-3 mb-3 bg-info">
					<div class="justify-content-center px-5">
						<div class="search">
							<input type="text" class="search-input"
								placeholder="가고싶은 테마를 검색하세요 !" name="" style="border: 0px;">
							<a href="#" class="search-icon"><i class="fa fa-search"></i></a>
						</div>
					</div>
					<div class="page-wrapper" style="position: relative;">
						<div class="post-slider">
							<span class="prev"> <i class="bi bi-chevron-left"></i>
							</span> <span class="next"> <i class="bi bi-chevron-right"></i>
							</span>
							<div class="post-wrapper">
								<div class="post">
									<div class="text-left mg-text slider-image"
										style="background-image: url('${pageContext.request.contextPath}/resources/images/theme/전체여행.jpg'); background-size:cover; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover"
											style="background-image: linear-gradient(166deg, #fff 5%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">전체</span>
									</div>
								</div>
								<div class="post">
									<div class="text-left mg-text slider-image"
										style="background-image: url('${pageContext.request.contextPath}/resources/images/theme/가족여행.jpg'); background-size:cover; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover"
											style="background-image: linear-gradient(166deg, #fff 5%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">가족여행</span>
									</div>
								</div>
								<div class="post">
									<div class="text-left mg-text slider-image"
										style="background-image: url('${pageContext.request.contextPath}/resources/images/theme/도보여행.png'); background-size:cover; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover"
											style="background-image: linear-gradient(166deg, #fff 5%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">도보코스</span>
									</div>
								</div>
								<div class="post">
									<div class="text-left mg-text slider-image"
										style="background-image: url('${pageContext.request.contextPath}/resources/images/theme/힐링여행.jpg'); background-size:cover; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover"
											style="background-image: linear-gradient(166deg, #fff 5%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">힐링코스</span>
									</div>
								</div>
								<div class="post">
									<div class="text-left mg-text slider-image"
										style="background-image: url('${pageContext.request.contextPath}/resources/images/theme/맛코스.jpg'); background-size:cover; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover"
											style="background-image: linear-gradient(166deg, #fff 5%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">맛코스</span>
									</div>
								</div>
								<div class="post">
									<div class="text-left mg-text slider-image"
										style="background-image: url('${pageContext.request.contextPath}/resources/images/theme/캠핑여행.jpg'); background-size:cover; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover"
											style="background-image: linear-gradient(166deg, #fff 5%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">캠핑코스</span>
									</div>
								</div>
								<div class="post">
									<div class="text-left mg-text slider-image"
										style="background-image: url('${pageContext.request.contextPath}/resources/images/theme/혼자여행.jpg'); background-size:cover; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover"
											style="background-image: linear-gradient(166deg, #fff 5%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">혼자여행</span>
									</div>
								</div>
								<div class="post">
									<div class="text-left mg-text slider-image"
										style="background-image: url('${pageContext.request.contextPath}/resources/images/theme/반려동물.webp'); background-size:cover; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover"
											style="background-image: linear-gradient(166deg, #fff 5%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">반려동물</span>
									</div>
								</div>
								<div class="post">
									<div class="text-left mg-text slider-image"
										style="background-image: url('${pageContext.request.contextPath}/resources/images/theme/문화여행.jpg'); background-size:cover; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover"
											style="background-image: linear-gradient(166deg, #fff 5%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">예술&amp;문화</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div id="contents">

					<div class="tit_cont">
						<div class="area_tag">
							<span class="name2"><span class="ico">Easy</span>코스</span>
						</div>
						<h2 class="tag">
							<strong>#자연코스</strong>
						</h2>
						<!-- 0724 클래스 추가 strong 태그 추가 -->
						<!-- // 0724 클래스 추가 strong 태그 추가 -->
						<a href="javascript:" class="btn_represch">새로고침</a>
						<!-- 0731 태그 위치 수정 -->
					</div>

					<div class="wrap_contView clfix">

						<!-- 썸네일 리스트 -->
						<div class="box_leftType1">
							<div class="total_check">
								<strong>총<span>111</span>건
								</strong>
								<div class="btn_txt">
									<button type="button" class="on" id="1" title="선택됨">최신순</button>
									<button type="button" id="3">인기순</button>
								</div>
								<button type="button" class="btn_mPop">상세조회</button>
							</div>
							<h3 class="blind" id="blindsearchtype">최신순</h3>
							<ul class="list_thumType flnon">
								<li class="bdr_nor"><div class="photo">
										<a href="javascript:"
											onclick="goDetail(&quot;c771ec7b-ca54-4efb-84db-08a5011e681d&quot;,&quot;C01&quot;,&quot;C0114&quot;,&quot;36&quot;);"><span
											class="distance"><span><strong>코스 총거리</strong>55km</span></span><img
											src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=59a7d7d1-a31c-4850-8cdf-7e1d3fcc481a&amp;thumb"
											alt="거제도 일상 회복 청춘 투어, 지친 나를 위로하고 치유하는 여행"></a>
									</div>
									<div class="area_txt">
										<div class="tit">
											<a href="javascript:"
												onclick="goDetail(&quot;c771ec7b-ca54-4efb-84db-08a5011e681d&quot;,&quot;C01&quot;,&quot;C0114&quot;,&quot;36&quot;);">거제도
												일상 회복 청춘 투어, 지친 나를 위로하고 치유하는 여행</a>
										</div>
										<p>경남 거제시</p>
										<p class="tag">
											<span>#1박2일</span><span>#2박3일</span><span>#가족코스</span><span>#거제가볼만한곳</span><span>#당일코스</span><span>#자연코스</span><span>#추천코스</span><span>#힐링코스</span>
										</p>
										<p class="ar_tag">
											<span>동부저수지</span> <span>학동흑진주 몽돌해변</span> <span>거제
												케이블카</span> <span>소노캄 거제 마리나베이 요트투어</span> <span>어방가</span> <span>숲소리공원</span>
										</p>
									</div>
									<button type="button" title="열기" class="btn_view"
										onclick="viewClick(&quot;c771ec7b-ca54-4efb-84db-08a5011e681d&quot;)">더보기</button>
									<div class="pop_subMenu">
										<ul>
											<li class="btn_far"><a href="javascript:"
												onclick="setFavoContent(&quot;c771ec7b-ca54-4efb-84db-08a5011e681d&quot;)">즐겨찾기</a></li>
											<li class="btn_share"
												id="c771ec7b-ca54-4efb-84db-08a5011e681d"><a
												href="javascript:"
												onclick="getShareInfo(&quot;%EA%B1%B0%EC%A0%9C%EB%8F%84%20%EC%9D%BC%EC%83%81%20%ED%9A%8C%EB%B3%B5%20%EC%B2%AD%EC%B6%98%20%ED%88%AC%EC%96%B4%2C%20%EC%A7%80%EC%B9%9C%20%EB%82%98%EB%A5%BC%20%EC%9C%84%EB%A1%9C%ED%95%98%EA%B3%A0%20%EC%B9%98%EC%9C%A0%ED%95%98%EB%8A%94%20%EC%97%AC%ED%96%89&quot;,&quot;59a7d7d1-a31c-4850-8cdf-7e1d3fcc481a&quot;,&quot;c771ec7b-ca54-4efb-84db-08a5011e681d&quot;,25);">공유하기</a></li>
											<li class="btn_cart"
												id="c771ec7b-ca54-4efb-84db-08a5011e681d"><a
												href="javascript:"
												onclick="myCourseList(&quot;C&quot;,&quot;25&quot;,&quot;c771ec7b-ca54-4efb-84db-08a5011e681d&quot;,&quot;&quot;)">코스에
													담기</a></li>
										</ul>
									</div></li>
								<li class="bdr_nor"><div class="photo">
										<a href="javascript:"
											onclick="goDetail(&quot;b2a839d2-8a75-4a37-baba-e4c598e0ced6&quot;,&quot;&quot;,&quot;&quot;,&quot;38&quot;);"><span
											class="distance"><span><strong>코스 총거리</strong></span></span><img
											src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=f96b14a5-7430-45d6-804b-23162d57e9b1&amp;thumb"
											alt="영광의 유서 깊은 불교 역사와 아름다운 자연탐방"></a>
									</div>
									<div class="area_txt">
										<div class="tit">
											<a href="javascript:"
												onclick="goDetail(&quot;b2a839d2-8a75-4a37-baba-e4c598e0ced6&quot;,&quot;&quot;,&quot;&quot;,&quot;38&quot;);">영광의
												유서 깊은 불교 역사와 아름다운 자연탐방</a>
										</div>
										<p>전남 영광군</p>
										<p class="tag">
											<span>#가족코스</span><span>#드라이브코스</span><span>#역사탐방코스</span><span>#자연코스</span><span>#추천코스</span><span>#힐링코스</span>
										</p>
										<p class="ar_tag">
											<span>백수해안도로</span> <span>내산서원</span> <span>백제불교최초도래지</span>
											<span>칠산타워</span> <span>숲쟁이공원</span>
										</p>
									</div>
									<button type="button" title="열기" class="btn_view"
										onclick="viewClick(&quot;b2a839d2-8a75-4a37-baba-e4c598e0ced6&quot;)">더보기</button>
									<div class="pop_subMenu">
										<ul>
											<li class="btn_far"><a href="javascript:"
												onclick="setFavoContent(&quot;b2a839d2-8a75-4a37-baba-e4c598e0ced6&quot;)">즐겨찾기</a></li>
											<li class="btn_share"
												id="b2a839d2-8a75-4a37-baba-e4c598e0ced6"><a
												href="javascript:"
												onclick="getShareInfo(&quot;%EC%98%81%EA%B4%91%EC%9D%98%20%EC%9C%A0%EC%84%9C%20%EA%B9%8A%EC%9D%80%20%EB%B6%88%EA%B5%90%20%EC%97%AD%EC%82%AC%EC%99%80%20%EC%95%84%EB%A6%84%EB%8B%A4%EC%9A%B4%20%EC%9E%90%EC%97%B0%ED%83%90%EB%B0%A9&quot;,&quot;f96b14a5-7430-45d6-804b-23162d57e9b1&quot;,&quot;b2a839d2-8a75-4a37-baba-e4c598e0ced6&quot;,25);">공유하기</a></li>
											<li class="btn_cart"
												id="b2a839d2-8a75-4a37-baba-e4c598e0ced6"><a
												href="javascript:"
												onclick="myCourseList(&quot;C&quot;,&quot;25&quot;,&quot;b2a839d2-8a75-4a37-baba-e4c598e0ced6&quot;,&quot;&quot;)">코스에
													담기</a></li>
										</ul>
									</div></li>
								<li class="bdr_nor"><div class="photo">
										<a href="javascript:"
											onclick="goDetail(&quot;b4469109-a5c5-4030-9433-dfe01e9051d2&quot;,&quot;&quot;,&quot;&quot;,&quot;36&quot;);"><span
											class="distance"><span><strong>코스 총거리</strong>약
													13.2km</span></span><img
											src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=0e2953f1-26e5-4226-8b2a-cb468e50cc3c&amp;thumb"
											alt="뚜벅뚜벅 두발로 떠나는 통영 속살 여행"></a>
									</div>
									<div class="area_txt">
										<div class="tit">
											<a href="javascript:"
												onclick="goDetail(&quot;b4469109-a5c5-4030-9433-dfe01e9051d2&quot;,&quot;&quot;,&quot;&quot;,&quot;36&quot;);">뚜벅뚜벅
												두발로 떠나는 통영 속살 여행</a>
										</div>
										<p>경남 통영시</p>
										<p class="tag">
											<span>#1박2일</span><span>#2박3일</span><span>#가족코스</span><span>#당일코스</span><span>#도보코스</span><span>#산책코스</span><span>#자연코스</span><span>#추천코스</span><span>#통영가볼만한곳</span><span>#트레킹코스</span><span>#힐링코스</span>
										</p>
										<p class="ar_tag">
											<span>청마거리</span> <span>청마문학관</span> <span>세병관</span> <span>윤이상거리</span>
											<span>통영 충렬사</span> <span>해저터널</span> <span>강구안</span> <span>남망산조각공원</span>
											<span>통영중앙전통시장</span> <span>점심식사(분소식당, 원조시락국)</span>
										</p>
									</div>
									<button type="button" title="열기" class="btn_view"
										onclick="viewClick(&quot;b4469109-a5c5-4030-9433-dfe01e9051d2&quot;)">더보기</button>
									<div class="pop_subMenu">
										<ul>
											<li class="btn_far"><a href="javascript:"
												onclick="setFavoContent(&quot;b4469109-a5c5-4030-9433-dfe01e9051d2&quot;)">즐겨찾기</a></li>
											<li class="btn_share"
												id="b4469109-a5c5-4030-9433-dfe01e9051d2"><a
												href="javascript:"
												onclick="getShareInfo(&quot;%EB%9A%9C%EB%B2%85%EB%9A%9C%EB%B2%85%20%EB%91%90%EB%B0%9C%EB%A1%9C%20%EB%96%A0%EB%82%98%EB%8A%94%20%ED%86%B5%EC%98%81%20%EC%86%8D%EC%82%B4%20%EC%97%AC%ED%96%89&quot;,&quot;0e2953f1-26e5-4226-8b2a-cb468e50cc3c&quot;,&quot;b4469109-a5c5-4030-9433-dfe01e9051d2&quot;,25);">공유하기</a></li>
											<li class="btn_cart"
												id="b4469109-a5c5-4030-9433-dfe01e9051d2"><a
												href="javascript:"
												onclick="myCourseList(&quot;C&quot;,&quot;25&quot;,&quot;b4469109-a5c5-4030-9433-dfe01e9051d2&quot;,&quot;&quot;)">코스에
													담기</a></li>
										</ul>
									</div></li>
								<li class="bdr_nor"><div class="photo">
										<a href="javascript:"
											onclick="goDetail(&quot;0c9c7de4-1e4f-4549-b25a-b831aae9b831&quot;,&quot;&quot;,&quot;&quot;,&quot;32&quot;);"><span
											class="distance"><span><strong>코스 총거리</strong>41.9km</span></span><img
											src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=91d67007-3863-4763-a743-cc7a4b3f488e&amp;thumb"
											alt="아이들과 쉽고 즐겁게 떠나는 숲 여행"></a>
									</div>
									<div class="area_txt">
										<div class="tit">
											<a href="javascript:"
												onclick="goDetail(&quot;0c9c7de4-1e4f-4549-b25a-b831aae9b831&quot;,&quot;&quot;,&quot;&quot;,&quot;32&quot;);">아이들과
												쉽고 즐겁게 떠나는 숲 여행</a>
										</div>
										<p>강원 횡성군</p>
										<p class="tag">
											<span>#1박2일</span><span>#2박3일</span><span>#가족코스</span><span>#당일코스</span><span>#자녀와함께</span><span>#자연코스</span><span>#추천코스</span><span>#힐링코스</span>
										</p>
										<p class="ar_tag">
											<span>숲체원</span> <span>안흥 찐빵마을</span> <span>국립
												청태산자연휴양림</span>
										</p>
									</div>
									<button type="button" title="열기" class="btn_view"
										onclick="viewClick(&quot;0c9c7de4-1e4f-4549-b25a-b831aae9b831&quot;)">더보기</button>
									<div class="pop_subMenu">
										<ul>
											<li class="btn_far"><a href="javascript:"
												onclick="setFavoContent(&quot;0c9c7de4-1e4f-4549-b25a-b831aae9b831&quot;)">즐겨찾기</a></li>
											<li class="btn_share"
												id="0c9c7de4-1e4f-4549-b25a-b831aae9b831"><a
												href="javascript:"
												onclick="getShareInfo(&quot;%EC%95%84%EC%9D%B4%EB%93%A4%EA%B3%BC%20%EC%89%BD%EA%B3%A0%20%EC%A6%90%EA%B2%81%EA%B2%8C%20%EB%96%A0%EB%82%98%EB%8A%94%20%EC%88%B2%20%EC%97%AC%ED%96%89&quot;,&quot;91d67007-3863-4763-a743-cc7a4b3f488e&quot;,&quot;0c9c7de4-1e4f-4549-b25a-b831aae9b831&quot;,25);">공유하기</a></li>
											<li class="btn_cart"
												id="0c9c7de4-1e4f-4549-b25a-b831aae9b831"><a
												href="javascript:"
												onclick="myCourseList(&quot;C&quot;,&quot;25&quot;,&quot;0c9c7de4-1e4f-4549-b25a-b831aae9b831&quot;,&quot;&quot;)">코스에
													담기</a></li>
										</ul>
									</div></li>
								<li class="bdr_nor"><div class="photo">
										<a href="javascript:"
											onclick="goDetail(&quot;059ed7c1-e6be-4adf-9add-76204b2ce57b&quot;,&quot;C01&quot;,&quot;C0114&quot;,&quot;32&quot;);"><span
											class="distance"><span><strong>코스 총거리</strong>89.97km</span></span><img
											src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=e22133c5-d4db-430d-aa6c-9ff6789460f5&amp;thumb"
											alt="파로호 자전거길로 시작하는 생태여행"></a>
									</div>
									<div class="area_txt">
										<div class="tit">
											<a href="javascript:"
												onclick="goDetail(&quot;059ed7c1-e6be-4adf-9add-76204b2ce57b&quot;,&quot;C01&quot;,&quot;C0114&quot;,&quot;32&quot;);">파로호
												자전거길로 시작하는 생태여행</a>
										</div>
										<p>강원 화천군</p>
										<p class="tag">
											<span>#1박2일</span><span>#2박3일</span><span>#가족코스</span><span>#당일코스</span><span>#연인코스</span><span>#자연코스</span><span>#추천코스</span><span>#힐링코스</span>
										</p>
										<p class="ar_tag">
											<span>파로호(화천)</span> <span>붕어섬</span> <span>화천향교</span>
										</p>
									</div>
									<button type="button" title="열기" class="btn_view"
										onclick="viewClick(&quot;059ed7c1-e6be-4adf-9add-76204b2ce57b&quot;)">더보기</button>
									<div class="pop_subMenu">
										<ul>
											<li class="btn_far"><a href="javascript:"
												onclick="setFavoContent(&quot;059ed7c1-e6be-4adf-9add-76204b2ce57b&quot;)">즐겨찾기</a></li>
											<li class="btn_share"
												id="059ed7c1-e6be-4adf-9add-76204b2ce57b"><a
												href="javascript:"
												onclick="getShareInfo(&quot;%ED%8C%8C%EB%A1%9C%ED%98%B8%20%EC%9E%90%EC%A0%84%EA%B1%B0%EA%B8%B8%EB%A1%9C%20%EC%8B%9C%EC%9E%91%ED%95%98%EB%8A%94%20%EC%83%9D%ED%83%9C%EC%97%AC%ED%96%89&quot;,&quot;e22133c5-d4db-430d-aa6c-9ff6789460f5&quot;,&quot;059ed7c1-e6be-4adf-9add-76204b2ce57b&quot;,25);">공유하기</a></li>
											<li class="btn_cart"
												id="059ed7c1-e6be-4adf-9add-76204b2ce57b"><a
												href="javascript:"
												onclick="myCourseList(&quot;C&quot;,&quot;25&quot;,&quot;059ed7c1-e6be-4adf-9add-76204b2ce57b&quot;,&quot;&quot;)">코스에
													담기</a></li>
										</ul>
									</div></li>
								<li class="bdr_nor"><div class="photo">
										<a href="javascript:"
											onclick="goDetail(&quot;a4e1033a-8e1f-402c-b342-90d0f210ec76&quot;,&quot;C01&quot;,&quot;C0114&quot;,&quot;3&quot;);"><span
											class="distance"><span><strong>코스 총거리</strong>16.3km</span></span><img
											src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=cccb8b38-5c45-404e-9a44-aeeff35a5862&amp;thumb"
											alt="힐링의 명소, 황톳길을 걸어보다"></a>
									</div>
									<div class="area_txt">
										<div class="tit">
											<a href="javascript:"
												onclick="goDetail(&quot;a4e1033a-8e1f-402c-b342-90d0f210ec76&quot;,&quot;C01&quot;,&quot;C0114&quot;,&quot;3&quot;);">힐링의
												명소, 황톳길을 걸어보다</a>
										</div>
										<p>대전 서구</p>
										<p class="tag">
											<span>#1박2일</span><span>#2박3일</span><span>#가족코스</span><span>#나홀로여행</span><span>#당일코스</span><span>#데이트코스</span><span>#연인과함께</span><span>#자녀와함께</span><span>#자연코스</span><span>#추천코스</span><span>#친구와함께</span><span>#힐링코스</span>
										</p>
										<p class="ar_tag">
											<span>한밭수목원</span> <span>대전엑스포과학공원</span> <span>장동산림욕장</span>
										</p>
									</div>
									<button type="button" title="열기" class="btn_view"
										onclick="viewClick(&quot;a4e1033a-8e1f-402c-b342-90d0f210ec76&quot;)">더보기</button>
									<div class="pop_subMenu">
										<ul>
											<li class="btn_far"><a href="javascript:"
												onclick="setFavoContent(&quot;a4e1033a-8e1f-402c-b342-90d0f210ec76&quot;)">즐겨찾기</a></li>
											<li class="btn_share"
												id="a4e1033a-8e1f-402c-b342-90d0f210ec76"><a
												href="javascript:"
												onclick="getShareInfo(&quot;%ED%9E%90%EB%A7%81%EC%9D%98%20%EB%AA%85%EC%86%8C%2C%20%ED%99%A9%ED%86%B3%EA%B8%B8%EC%9D%84%20%EA%B1%B8%EC%96%B4%EB%B3%B4%EB%8B%A4&quot;,&quot;cccb8b38-5c45-404e-9a44-aeeff35a5862&quot;,&quot;a4e1033a-8e1f-402c-b342-90d0f210ec76&quot;,25);">공유하기</a></li>
											<li class="btn_cart"
												id="a4e1033a-8e1f-402c-b342-90d0f210ec76"><a
												href="javascript:"
												onclick="myCourseList(&quot;C&quot;,&quot;25&quot;,&quot;a4e1033a-8e1f-402c-b342-90d0f210ec76&quot;,&quot;&quot;)">코스에
													담기</a></li>
										</ul>
									</div></li>
								<li class="bdr_nor"><div class="photo">
										<a href="javascript:"
											onclick="goDetail(&quot;49506ec1-adfb-491d-96c7-ba44072daab3&quot;,&quot;C01&quot;,&quot;C0113&quot;,&quot;38&quot;);"><span
											class="distance"><span><strong>코스 총거리</strong>38.12km</span></span><img
											src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=0b0c43af-e69d-4b7c-a345-07c602c75f6c&amp;thumb"
											alt="여수 앞바다에 펼쳐진 크고 작은 섬들"></a>
									</div>
									<div class="area_txt">
										<div class="tit">
											<a href="javascript:"
												onclick="goDetail(&quot;49506ec1-adfb-491d-96c7-ba44072daab3&quot;,&quot;C01&quot;,&quot;C0113&quot;,&quot;38&quot;);">여수
												앞바다에 펼쳐진 크고 작은 섬들</a>
										</div>
										<p>전남 여수시</p>
										<p class="tag">
											<span>#1박2일</span><span>#2박3일</span><span>#가족코스</span><span>#당일코스</span><span>#데이트코스</span><span>#연인코스</span><span>#일출</span><span>#일출명소</span><span>#일출여행</span><span>#자녀와함께</span><span>#자연코스</span><span>#추천코스</span><span>#힐링코스</span>
										</p>
										<p class="ar_tag">
											<span>향일암</span> <span>오동도 등대</span> <span>여수 진남관</span> <span>이충무공자당기거지</span>
										</p>
									</div>
									<button type="button" title="열기" class="btn_view"
										onclick="viewClick(&quot;49506ec1-adfb-491d-96c7-ba44072daab3&quot;)">더보기</button>
									<div class="pop_subMenu">
										<ul>
											<li class="btn_far"><a href="javascript:"
												onclick="setFavoContent(&quot;49506ec1-adfb-491d-96c7-ba44072daab3&quot;)">즐겨찾기</a></li>
											<li class="btn_share"
												id="49506ec1-adfb-491d-96c7-ba44072daab3"><a
												href="javascript:"
												onclick="getShareInfo(&quot;%EC%97%AC%EC%88%98%20%EC%95%9E%EB%B0%94%EB%8B%A4%EC%97%90%20%ED%8E%BC%EC%B3%90%EC%A7%84%20%ED%81%AC%EA%B3%A0%20%EC%9E%91%EC%9D%80%20%EC%84%AC%EB%93%A4&quot;,&quot;0b0c43af-e69d-4b7c-a345-07c602c75f6c&quot;,&quot;49506ec1-adfb-491d-96c7-ba44072daab3&quot;,25);">공유하기</a></li>
											<li class="btn_cart"
												id="49506ec1-adfb-491d-96c7-ba44072daab3"><a
												href="javascript:"
												onclick="myCourseList(&quot;C&quot;,&quot;25&quot;,&quot;49506ec1-adfb-491d-96c7-ba44072daab3&quot;,&quot;&quot;)">코스에
													담기</a></li>
										</ul>
									</div></li>
								<li class="bdr_nor"><div class="photo">
										<a href="javascript:"
											onclick="goDetail(&quot;a820bb3f-2a14-4239-8887-05224eb465dc&quot;,&quot;C01&quot;,&quot;C0112&quot;,&quot;38&quot;);"><span
											class="distance"><span><strong>코스 총거리</strong>26.49km</span></span><img
											src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=ef75ab00-f585-406a-9812-2ae011f0763f&amp;thumb"
											alt="전남 구례 체험하러 가기"></a>
									</div>
									<div class="area_txt">
										<div class="tit">
											<a href="javascript:"
												onclick="goDetail(&quot;a820bb3f-2a14-4239-8887-05224eb465dc&quot;,&quot;C01&quot;,&quot;C0112&quot;,&quot;38&quot;);">전남
												구례 체험하러 가기</a>
										</div>
										<p>전남 구례군</p>
										<p class="tag">
											<span>#1박2일</span><span>#2박3일</span><span>#가족코스</span><span>#당일코스</span><span>#자연코스</span><span>#전라권</span><span>#추천코스</span><span>#힐링코스</span>
										</p>
										<p class="ar_tag">
											<span>다무락 마을</span> <span>농업기술센터 자연생태학습장</span> <span>구례향교</span>
										</p>
									</div>
									<button type="button" title="열기" class="btn_view"
										onclick="viewClick(&quot;a820bb3f-2a14-4239-8887-05224eb465dc&quot;)">더보기</button>
									<div class="pop_subMenu">
										<ul>
											<li class="btn_far"><a href="javascript:"
												onclick="setFavoContent(&quot;a820bb3f-2a14-4239-8887-05224eb465dc&quot;)">즐겨찾기</a></li>
											<li class="btn_share"
												id="a820bb3f-2a14-4239-8887-05224eb465dc"><a
												href="javascript:"
												onclick="getShareInfo(&quot;%EC%A0%84%EB%82%A8%20%EA%B5%AC%EB%A1%80%20%EC%B2%B4%ED%97%98%ED%95%98%EB%9F%AC%20%EA%B0%80%EA%B8%B0&quot;,&quot;ef75ab00-f585-406a-9812-2ae011f0763f&quot;,&quot;a820bb3f-2a14-4239-8887-05224eb465dc&quot;,25);">공유하기</a></li>
											<li class="btn_cart"
												id="a820bb3f-2a14-4239-8887-05224eb465dc"><a
												href="javascript:"
												onclick="myCourseList(&quot;C&quot;,&quot;25&quot;,&quot;a820bb3f-2a14-4239-8887-05224eb465dc&quot;,&quot;&quot;)">코스에
													담기</a></li>
										</ul>
									</div></li>
								<li class="bdr_nor"><div class="photo">
										<a href="javascript:"
											onclick="goDetail(&quot;494e63dc-5038-40af-8967-d3d1b9377a2e&quot;,&quot;C01&quot;,&quot;C0114&quot;,&quot;35&quot;);"><span
											class="distance"><span><strong>코스 총거리</strong>18km</span></span><img
											src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=ca79f113-7230-4948-8b6a-df32facc4126&amp;thumb"
											alt="세계문화유산에 빛나는 안동하회마을"></a>
									</div>
									<div class="area_txt">
										<div class="tit">
											<a href="javascript:"
												onclick="goDetail(&quot;494e63dc-5038-40af-8967-d3d1b9377a2e&quot;,&quot;C01&quot;,&quot;C0114&quot;,&quot;35&quot;);">세계문화유산에
												빛나는 안동하회마을</a>
										</div>
										<p>경북 안동시</p>
										<p class="tag">
											<span>#1박2일</span><span>#2박3일</span><span>#Feel_the_rhythm_of_korea</span><span>#가을여행</span><span>#가을여행코스</span><span>#가족코스</span><span>#경북권</span><span>#당일코스</span><span>#봄여행지</span><span>#역사탐방코스</span><span>#자연코스</span><span>#추천코스</span><span>#힐링코스</span>
										</p>
										<p class="ar_tag">
											<span>안동 하회마을 [유네스코 세계문화유산] </span> <span>안동 병산서원</span> <span>부용대</span>
											<span>하회 겸암정사</span>
										</p>
									</div>
									<button type="button" title="열기" class="btn_view"
										onclick="viewClick(&quot;494e63dc-5038-40af-8967-d3d1b9377a2e&quot;)">더보기</button>
									<div class="pop_subMenu">
										<ul>
											<li class="btn_far"><a href="javascript:"
												onclick="setFavoContent(&quot;494e63dc-5038-40af-8967-d3d1b9377a2e&quot;)">즐겨찾기</a></li>
											<li class="btn_share"
												id="494e63dc-5038-40af-8967-d3d1b9377a2e"><a
												href="javascript:"
												onclick="getShareInfo(&quot;%EC%84%B8%EA%B3%84%EB%AC%B8%ED%99%94%EC%9C%A0%EC%82%B0%EC%97%90%20%EB%B9%9B%EB%82%98%EB%8A%94%20%EC%95%88%EB%8F%99%ED%95%98%ED%9A%8C%EB%A7%88%EC%9D%84&quot;,&quot;ca79f113-7230-4948-8b6a-df32facc4126&quot;,&quot;494e63dc-5038-40af-8967-d3d1b9377a2e&quot;,25);">공유하기</a></li>
											<li class="btn_cart"
												id="494e63dc-5038-40af-8967-d3d1b9377a2e"><a
												href="javascript:"
												onclick="myCourseList(&quot;C&quot;,&quot;25&quot;,&quot;494e63dc-5038-40af-8967-d3d1b9377a2e&quot;,&quot;&quot;)">코스에
													담기</a></li>
										</ul>
									</div></li>
								<li class="bdr_nor"><div class="photo">
										<a href="javascript:"
											onclick="goDetail(&quot;ec090794-1845-4008-9441-188a67b3ca2d&quot;,&quot;C01&quot;,&quot;C0112&quot;,&quot;34&quot;);"><span
											class="distance"><span><strong>코스 총거리</strong>33.05km</span></span><img
											src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=dddd4098-e295-43d8-8204-e2eb018b5bf5&amp;thumb"
											alt="서산인들이 백제의 ‘미소’로 반겨주는 곳"></a>
									</div>
									<div class="area_txt">
										<div class="tit">
											<a href="javascript:"
												onclick="goDetail(&quot;ec090794-1845-4008-9441-188a67b3ca2d&quot;,&quot;C01&quot;,&quot;C0112&quot;,&quot;34&quot;);">서산인들이
												백제의 ‘미소’로 반겨주는 곳</a>
										</div>
										<p>충남 서산시</p>
										<p class="tag">
											<span>#1박2일</span><span>#2박3일</span><span>#Feel_the_rhythm_korea</span><span>#Feel_the_rhythm_of_korea</span><span>#가을여행</span><span>#가을여행코스</span><span>#가족코스</span><span>#간월도마을</span><span>#간월암</span><span>#나홀로여행</span><span>#당일코스</span><span>#바다풍경</span><span>#봄나들이</span><span>#서산버드랜드</span><span>#서산해미읍성회화나무</span><span>#연인과함께</span><span>#자녀와함께</span><span>#자연좋은곳</span><span>#자연코스</span><span>#추천코스</span><span>#충청권</span><span>#테마파크</span><span>#힐링코스</span>
										</p>
										<p class="ar_tag">
											<span>서산해미읍성회화나무</span> <span>간월암(서산)</span> <span>간월도마을[해양수산부
												선정 아름다운 어촌]</span>
										</p>
									</div>
									<button type="button" title="열기" class="btn_view"
										onclick="viewClick(&quot;ec090794-1845-4008-9441-188a67b3ca2d&quot;)">더보기</button>
									<div class="pop_subMenu">
										<ul>
											<li class="btn_far"><a href="javascript:"
												onclick="setFavoContent(&quot;ec090794-1845-4008-9441-188a67b3ca2d&quot;)">즐겨찾기</a></li>
											<li class="btn_share"
												id="ec090794-1845-4008-9441-188a67b3ca2d"><a
												href="javascript:"
												onclick="getShareInfo(&quot;%EC%84%9C%EC%82%B0%EC%9D%B8%EB%93%A4%EC%9D%B4%20%EB%B0%B1%EC%A0%9C%EC%9D%98%20%E2%80%98%EB%AF%B8%EC%86%8C%E2%80%99%EB%A1%9C%20%EB%B0%98%EA%B2%A8%EC%A3%BC%EB%8A%94%20%EA%B3%B3&quot;,&quot;dddd4098-e295-43d8-8204-e2eb018b5bf5&quot;,&quot;ec090794-1845-4008-9441-188a67b3ca2d&quot;,25);">공유하기</a></li>
											<li class="btn_cart"
												id="ec090794-1845-4008-9441-188a67b3ca2d"><a
												href="javascript:"
												onclick="myCourseList(&quot;C&quot;,&quot;25&quot;,&quot;ec090794-1845-4008-9441-188a67b3ca2d&quot;,&quot;&quot;)">코스에
													담기</a></li>
										</ul>
									</div></li>
							</ul>
							<!-- paging -->
							<div class="page_box">
								<a class="on" title="선택됨" href="javascript:" id="1">1<span
									class="blind">현재 위치</span></a> <a href="javascript:" id="2">2</a> <a
									href="javascript:" id="3">3</a> <a href="javascript:" id="4">4</a>
								<a href="javascript:" id="5">5</a> <a href="javascript:"
									class="btn_next ico" id="6">다음</a><a class="btn_last ico"
									href="javascript:" id="12">끝</a>
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
	                    <li id="thismonth"><a href="javascript:">#이달의추천코스</a></li>
	                    <li id="premonth"><a href="javascript:">#전월의추천코스</a></li>
	                </ul-->
								<!-- ul class="tag_list js_multi" id="monthlist">
	                    <li id="01"><button type="button" class="btn"><span>#1월</span></button></li>
	                    <li id="02"><button type="button" class="btn"><span>#2월</span></button></li>
	                    <li id="03"><button type="button" class="btn"><span>#3월</span></button></li>
	                    <li id="04"><button type="button" class="btn"><span>#4월</span></button></li>
	                    <li id="05"><button type="button" class="btn"><span>#5월</span></button></li>
	                    <li id="06"><button type="button" class="btn"><span>#6월</span></button></li>
	                    <li id="07"><button type="button" class="btn"><span>#7월</span></button></li>
	                    <li id="08"><button type="button" class="btn"><span>#8월</span></button></li>
	                    <li id="09"><button type="button" class="btn"><span>#9월</span></button></li>
	                    <li id="10"><button type="button" class="btn"><span>#10월</span></button></li>
	                    <li id="11"><button type="button" class="btn"><span>#11월</span></button></li>
	                    <li id="12"><button type="button" class="btn"><span>#12월</span></button></li>
	                    <li id="0"><button type="button" class="btn_all_active"><span>#전체</span></button></li>
	                </ul-->
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
									<li id="302b8547-c53a-11e8-932f-02001c6b0001"
										otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="3"><button
											type="button" class="btn">
											<span>#힐링코스</span>
										</button></li>
									<li id="2a9a484f-c53a-11e8-932f-02001c6b0001"
										otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="3"><button
											type="button" class="btn">
											<span>#가족코스</span>
										</button></li>
									<li id="60069204-4e55-11eb-b08c-0050569dc2b9"
										otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="3"><button
											type="button" class="btn active" title="선택됨">
											<span>#자연코스</span>
										</button></li>
									<li id="4107dbc7-3907-4883-bf24-b92909229159"
										otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="3"><button
											type="button" class="btn">
											<span>#자녀와함께</span>
										</button></li>
									<li id="146b6e3b-09e7-4312-aa50-1e748fdebdfe"
										otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="3"><button
											type="button" class="btn">
											<span>#연인코스</span>
										</button></li>
									<li id="e0668d10-894b-46f5-ac78-6013068efcf8"
										otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="3"><button
											type="button" class="btn">
											<span>#데이트코스</span>
										</button></li>
									<li id="059b388b-97f9-410e-b275-230171661645"
										otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="3"><button
											type="button" class="btn">
											<span>#친구와함께</span>
										</button></li>
									<li id="c24d515f-3202-45e5-834e-1a091901aeff"
										otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="3"><button
											type="button" class="btn">
											<span>#자연</span>
										</button></li>
									<li id="dae6ab54-5556-47b4-a821-bed43bb8ded1"
										otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="3"><button
											type="button" class="btn">
											<span>#나들이</span>
										</button></li>
									<li id="6eb4a800-9234-4401-bec7-79ee1edd288c"
										otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="3"><button
											type="button" class="btn">
											<span>#가족여행</span>
										</button></li>
									<li id="27e5453b-1982-4fae-8a76-82dd3ac846d2"
										otdid="0a01eb7b-96de-11e8-8165-020027310001" maintype="3"><button
											type="button" class="btn">
											<span>#여름여행</span>
										</button></li>
									<li id="*46a412aa-0b3b-11ea-869b-020027310001"
										otdid="46a412aa-0b3b-11ea-869b-020027310001" maintype="3"
										tagtype="brand"><button type="button" class="btn">
											<span>#여행가는 달</span>
										</button></li>
									<li id="*64e29192-8939-11e8-8165-020027310001"
										otdid="64e29192-8939-11e8-8165-020027310001" maintype="3"
										tagtype="brand"><button type="button" class="btn">
											<span>#한국관광의별</span>
										</button></li>
									<li id="*ac9026ca-3ff6-49c9-81cf-10f027b044e9"
										otdid="ac9026ca-3ff6-49c9-81cf-10f027b044e9" maintype="3"
										tagtype="brand"><button type="button" class="btn">
											<span>#생생 VR 영상</span>
										</button></li>
									<li id="*27a4afa8-57a6-11ea-b70a-020027310001"
										otdid="27a4afa8-57a6-11ea-b70a-020027310001" maintype="3"
										tagtype="brand"><button type="button" class="btn">
											<span>#휴가문화개선</span>
										</button></li>
									<li id="*114b23a6-84c4-11e8-8165-020027310001"
										otdid="114b23a6-84c4-11e8-8165-020027310001" maintype="3"
										tagtype="brand"><button type="button" class="btn">
											<span>#산업관광</span>
										</button></li>
									<li id="*daf2add9-b198-49cf-adbb-a14957da3a3c"
										otdid="daf2add9-b198-49cf-adbb-a14957da3a3c" maintype="3"
										tagtype="brand"><button type="button" class="btn">
											<span>#지역명사문화여행</span>
										</button></li>
									<li id="*81f62fd1-8939-11e8-8165-020027310001"
										otdid="81f62fd1-8939-11e8-8165-020027310001" maintype="3"
										tagtype="brand"><button type="button" class="btn">
											<span>#시티투어</span>
										</button></li>
									<li id="*54ddd9f5-fbf0-4b1c-b90b-27f5ec2168a3"
										otdid="54ddd9f5-fbf0-4b1c-b90b-27f5ec2168a3" maintype="3"
										tagtype="brand"><button type="button" class="btn">
											<span>#관광두레</span>
										</button></li>
									<li id="*4e706603-293b-11eb-b8bd-020027310001"
										otdid="4e706603-293b-11eb-b8bd-020027310001" maintype="3"
										tagtype="brand"><button type="button" class="btn">
											<span>#문화관광축제</span>
										</button></li>
									<li id="*b55ffe10-84c3-11e8-8165-020027310001"
										otdid="b55ffe10-84c3-11e8-8165-020027310001" maintype="3"
										tagtype="brand"><button type="button" class="btn">
											<span>#'열린 관광' 모두의 여행</span>
										</button></li>
									<li id="*7c118d89-d51e-11ea-b8bd-020027310001"
										otdid="7c118d89-d51e-11ea-b8bd-020027310001" maintype="3"
										tagtype="brand"><button type="button" class="btn">
											<span>#전통한옥</span>
										</button></li>
									<li id="*27f7a2ca-84c4-11e8-8165-020027310001"
										otdid="27f7a2ca-84c4-11e8-8165-020027310001" maintype="3"
										tagtype="brand"><button type="button" class="btn">
											<span>#생태녹색관광</span>
										</button></li>
									<li id="*e6900ef3-cfaf-46df-beb4-5df186afb37d"
										otdid="e6900ef3-cfaf-46df-beb4-5df186afb37d" maintype="3"
										tagtype="brand"><button type="button" class="btn">
											<span>#생활관광</span>
										</button></li>
									<li id="*287776d6-8939-11e8-8165-020027310001"
										otdid="287776d6-8939-11e8-8165-020027310001" maintype="3"
										tagtype="brand"><button type="button" class="btn">
											<span>#추천! 웰니스 관광지</span>
										</button></li>
									<li id="*7ff670df-84fa-11e8-8165-020027310001"
										otdid="7ff670df-84fa-11e8-8165-020027310001" maintype="3"
										tagtype="brand"><button type="button" class="btn">
											<span>#추천! 가볼만한곳</span>
										</button></li>
									<li id="*9e37bef2-f8e2-46c8-9b87-e060e2a4b2c8"
										otdid="9e37bef2-f8e2-46c8-9b87-e060e2a4b2c8" maintype="3"
										tagtype="brand"><button type="button" class="btn">
											<span>#DMZ 평화관광</span>
										</button></li>
									<li id="*456a84d1-84c4-11e8-8165-020027310001"
										otdid="456a84d1-84c4-11e8-8165-020027310001" maintype="3"
										tagtype="brand"><button type="button" class="btn">
											<span>#한국관광품질인증</span>
										</button></li>
									<li id="*622bcd99-84fa-11e8-8165-020027310001"
										otdid="622bcd99-84fa-11e8-8165-020027310001" maintype="3"
										tagtype="brand"><button type="button" class="btn">
											<span>#한국관광100선</span>
										</button></li>
									<li id="*638f5f2a-d1e2-4ade-a5d4-acd2b2d4b434"
										otdid="638f5f2a-d1e2-4ade-a5d4-acd2b2d4b434" maintype="3"
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
							<div class="banner_right mt20">
								<a href="/list/user_cos.do"><img
									src="../resources/images/sub/banner_fullcos.gif"
									alt="프로계획러 사용자가 직접 만든 풀코스 여행"></a>
							</div>
							<!-- 1217 수정 -->
						</div>

					</div>

				</div>







			</div>
		</div>
	</div>
</div>


<div style="height: 40px;">&nbsp;</div>




<!-- 슬릭 -->
<script type="text/javascript" src="/trip/dist/theme/slick/slick.min.js"></script>
<script type="text/javascript" src="/trip/dist/theme/slick/slick.js"></script>

<script type="text/javascript">
$('.post-wrapper').slick({
	  slidesToShow: 5,
	  slidesToScroll: 5,
	  autoplay: true,
	  autoplaySpeed: 5000,
	  nextArrow:$('.next'),
	  prevArrow:$('.prev'),
	});
</script>


