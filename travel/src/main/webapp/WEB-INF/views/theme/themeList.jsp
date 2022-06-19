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
								<strong>총<span>${dataCount}</span>건
								</strong>
								<div class="btn_txt">
									<button type="button" class="on" id="1" title="선택됨">최신순</button>
									<button type="button" id="3">인기순</button>
								</div>
								<button type="button" class="btn_mPop">상세조회</button>
							</div>
							<h3 class="blind" id="blindsearchtype">최신순</h3>
							<ul class="list_thumType flnon">
								<c:forEach var="dto" items="${list}" varStatus="status">
									<li class="bdr_nor"><div class="photo">
											<a href="javascript:"
												onclick="goDetail(&quot;c771ec7b-ca54-4efb-84db-08a5011e681d&quot;,&quot;C01&quot;,&quot;C0114&quot;,&quot;36&quot;);"><span
												class="distance"><span><strong>코스 총거리</strong>55km</span></span>
												<c:forEach var="detail" items="${dto.adminCourseList}" varStatus="status">
													<c:if test="${status.first }">
														<img src="${pageContext.request.contextPath}/uploads/course/${detail.saveFileName}" alt="${dto.subject}">
													</c:if>
												</c:forEach>
											</a>
										</div>
										<div class="area_txt">
											<div class="tit">
												<a href="javascript:"
													onclick="goDetail(&quot;c771ec7b-ca54-4efb-84db-08a5011e681d&quot;,&quot;C01&quot;,&quot;C0114&quot;,&quot;36&quot;);">${dto.subject}</a>
											</div>
											<p>${dto.cityName}</p>
											<p class="tag">
												<span>#1박2일</span><span>#2박3일</span><span>#가족코스</span><span>#거제가볼만한곳</span><span>#당일코스</span><span>#자연코스</span><span>#추천코스</span><span>#힐링코스</span>
											</p>
											<p class="ar_tag">
												<c:forEach var="detail" items="${dto.adminCourseList}" varStatus="status">
													<span>${detail.placeName}</span> 
												</c:forEach>
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
										</div>
										</li>
									</c:forEach>
							</ul>
							<div class="page-box">
								${dataCount == 0 ? "등록된 게시물이 없습니다." : paging}
							</div>

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


