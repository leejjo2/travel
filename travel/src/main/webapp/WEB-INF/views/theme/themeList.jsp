<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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

.post .transparentCover:hover{
	cursor: pointer;
}
</style>


<script type="text/javascript">
function ajaxFun(url, method, query, dataType, fn) {
	$.ajax({
		type:method,
		url:url,
		data:query,
		dataType:dataType,
		success:function(data){
			fn(data);
		},
		error:function(e) {
			console.log(e.responseText);
		}
	});
}

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
});

$(function(){
	adminCourseList(0, '', 0, '', '', ${page});
	$(".page-item.active .page-link").css("background-color", "#0dcaf0");
	$(".page-item.active .page-link").css("border-color", "#0dcaf0");
});
	
// 관리자 코스 리스트 불러오기
function adminCourseList(themeNum, keyword, areaCode, hashtag, period, pageNum ) {
	let url="${pageContext.request.contextPath}/theme/listCourse?";
	url += "themeNum="+themeNum+"&keyword="+keyword+"&areaCode="+areaCode+"&page="+pageNum;
	url += "&hashtag="+hashtag+"&period="+period;
	$.getJSON(url, function(data) {
		printAdminCourselList(data);
	});
	
	function printAdminCourselList(data) {
		console.log(data.dataCount);
		console.log(data);
		
		if(data.totalCnt === 0) {
			$(".page-box").html("등록된 게시물이 없습니다.");
		} else {
			$(".page-box").html(data.paging);
		}

		var out ="";
		for(let i=0; i<data.list.length; i++){
			let list = data.list[i];
			
			out +='<li class="bdr_nor"><div class="photo">';
			out +=		'<a href="${pageContext.request.contextPath}/theme/article?courseNum='+list.courseNum+'&page='+pageNum+'">';
			out +=			'<img src="${pageContext.request.contextPath}/uploads/course/'+list.saveFileName+'" alt="${dto.subject}">';
			out +=		'</a>';
			out +=	'</div>';
			out +=	'<div class="area_txt">';
			out +=		'<div class="tit">';
			out +=			'<a href="${pageContext.request.contextPath}/theme/article?courseNum='+list.courseNum+'&page='+pageNum+'" title="'+list.subject+'"onclick="">'+list.subject+'</a>';
			out +=		'</div>';
			out +=		'<p>&lt;'+list.themeName+'&gt;'+list.cityName+' - '+list.period+'</p>';
			out +=		'<p class="tag">';
			const hashtags = list.hashtag.split(",");
			for(let j=0; j<hashtags.length; j++){
			out +=				'<span># '+hashtags[j]+'</span>';
			}
			out +=		'</p>';
			out +=		'<p class="ar_tag">';
			for(let j=0; j<list.adminCourseList.length; j++){
			out +=				'<span>'+(j+1)+'. '+list.adminCourseList[j].placeName+'</span>';
			}
			out +=		'</p>';
			out +=	'</div>';
			out +=	'<button type="button" title="열기" class="btn_view" onclick="">더보기</button>';
			out +=	'<div class="pop_subMenu">';
			out +=		'<ul>';
			out +=			'<li class="btn_share" id="">';
			out +=				'<a href="" onclick="">공유하기</a>';
			out +=			'</li>';
			out +=		'</ul>';
			out +=	'</div>';
			out +='</li>';
			
		}
		$("#adminCourseList").html(out);
		$("#totalCnt").html(data.dataCount);
		
		
	}
}
// 키워드 테마 검색
$(document).ready(function() {
	$(document).on("click", ".search .search-icon", function() {
		
		let keyword = $(".search .search-input").val();
		$("#hidden-search-input").val(keyword);
		
		let pageNum = $("#hiddenPaging").val(1);
		
		callAdminCourseList();
    });
});

// 리스트 테마 선택
$(document).ready(function() {
	$(document).on("click", ".slider-image .transparentCover", function() {
		$(".slider-image .transparentCover").removeClass('on');
		
		$(this).addClass('on');
 		$(".courseTheme").text($(this).parent().find($(".post .mg-text")).text());
 		
 		let pageNum = $("#hiddenPaging").val(1);
 		
		callAdminCourseList();
    });
});
	
// 리스트 지역 선택
$(document).ready(function() {
	$(document).on("click", "#arealist button", function() {
		$("#arealist button").removeAttr('class');
		$("#arealist button").attr('class', 'btn');
		
		$(this).removeClass('btn');
		$(this).addClass('btn_all_active');
		
		let pageNum = $("#hiddenPaging").val(1);
		
		callAdminCourseList();
    });
});
// 리스트 해쉬태그 선택
$(document).ready(function() {
	$(document).on("click", "#hashtagPickList button", function() {
		$("#hashtagPickList button").removeAttr('class');
		$("#hashtagPickList button").attr('class', 'btn');
		
		$(this).removeClass('btn');
		$(this).addClass('btn_all_active');
		
		let pageNum = $("#hiddenPaging").val(1);
		
		callAdminCourseList();
    });
});
// 리스트 기간 선택
$(document).ready(function() {
	$(document).on("click", "#periodPicklist button", function() {
		$("#periodPicklist button").removeAttr('class');
		$("#periodPicklist button").attr('class', 'btn');
		
		$(this).removeClass('btn');
		$(this).addClass('btn_all_active');
		
		let pageNum = $("#hiddenPaging").val(1);
		
		callAdminCourseList();
    });
});

function pagingMethod(i){
	$("#hiddenPaging").val(i);
	callAdminCourseList();
}


// 관리자 코스 리스트 함수 호출
function callAdminCourseList() {
// 	let sort = $(".btn_txt .on").attr('id');
// 	let month = $("#monthlist .btn_all_active").parent().attr('id');
	let themeNum = $(".slider-image .transparentCover.on").attr('id');
	let keyword = $("#hidden-search-input").val();
	let areaCode = $("#arealist .btn_all_active").parent().attr('id');
	let hashtag = $("#hashtagPickList .btn_all_active").parent().attr('id');
	let period = $("#periodPicklist .btn_all_active").parent().attr('id');
	let pageNum = $("#hiddenPaging").val();
	
// 	adminCourseList(sort, month, areaCode, pageNum);
	adminCourseList(themeNum,keyword,areaCode, hashtag, period, pageNum);
}
</script>


<div class="container-fluid">
	<div class="container mt-4">
		<div class="row justify-content-center">
			<div class="col-md-9 justify-content-center">
				<div class="row">
					<div class="col-10">
						<span style="font-size: 30px;">
							<i class="fa-solid fa-shield-dog"></i> 테마별 코스 추천
						</span>
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
							<input id="hidden-search-input" type="hidden" value="">
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
										<div class="transparentCover on" id="0"
											style="background-image: linear-gradient(166deg, #fff 5%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">전체코스</span>
									</div>
								</div>
								<div class="post" >
									<div class="text-left mg-text slider-image"
										style="background-image: url('${pageContext.request.contextPath}/resources/images/theme/가족여행.jpg'); background-size:cover; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover" id="1"
											style="background-image: linear-gradient(166deg, #fff 5%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">가족코스</span>
									</div>
								</div>
								<div class="post" >
									<div class="text-left mg-text slider-image"
										style="background-image: url('${pageContext.request.contextPath}/resources/images/theme/혼자여행.jpg'); background-size:cover; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover" id="2"
											style="background-image: linear-gradient(166deg, #fff 5%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">혼자여행</span>
									</div>
								</div>
								<div class="post" >
									<div class="text-left mg-text slider-image"
										style="background-image: url('${pageContext.request.contextPath}/resources/images/theme/도보여행.png'); background-size:cover; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover" id="3"
											style="background-image: linear-gradient(166deg, #fff 5%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">도보코스</span>
									</div>
								</div>
								<div class="post" >
									<div class="text-left mg-text slider-image"
										style="background-image: url('${pageContext.request.contextPath}/resources/images/theme/힐링여행.jpg'); background-size:cover; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover" id="4"
											style="background-image: linear-gradient(166deg, #fff 5%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">힐링코스</span>
									</div>
								</div>
								<div class="post" >
									<div class="text-left mg-text slider-image"
										style="background-image: url('${pageContext.request.contextPath}/resources/images/theme/맛코스.jpg'); background-size:cover; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover" id="5"
											style="background-image: linear-gradient(166deg, #fff 5%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">맛코스</span>
									</div>
								</div>
								<div class="post" >
									<div class="text-left mg-text slider-image"
										style="background-image: url('${pageContext.request.contextPath}/resources/images/theme/캠핑여행.jpg'); background-size:cover; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover" id="6"
											style="background-image: linear-gradient(166deg, #fff 5%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">캠핑코스</span>
									</div>
								</div>
								<div class="post" >
									<div class="text-left mg-text slider-image"
										style="background-image: url('${pageContext.request.contextPath}/resources/images/theme/반려동물.webp'); background-size:cover; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover" id="7"
											style="background-image: linear-gradient(166deg, #fff 5%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">반려동물</span>
									</div>
								</div>
								<div class="post" >
									<div class="text-left mg-text slider-image"
										style="background-image: url('${pageContext.request.contextPath}/resources/images/theme/문화여행.jpg'); background-size:cover; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover" id="8"
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
							<span class="name2"><span class="ico">Easy</span ><strong class="courseTheme">전체코스</strong></span>
						</div>
						<a href="javascript:" class="btn_represch">새로고침</a>
					</div>

					<div class="wrap_contView clfix">

						<!-- 썸네일 리스트 -->
						<div class="box_leftType1">
							<div class="total_check">
								<strong>총<span id="totalCnt"></span>건
								</strong>
								<div class="btn_txt">
									<button type="button" class="on" id="1" title="선택됨">최신순</button>
									<button type="button" id="3">인기순</button>
								</div>
								<button type="button" class="btn_mPop">상세조회</button>
							</div>
							<h3 class="blind" id="blindsearchtype">최신순</h3>
							<ul class="list_thumType flnon" id="adminCourseList">
							</ul>
							<div class="page-box">
								${dataCount == 0 ? "등록된 게시물이 없습니다." : paging}
							</div>
								<input type="hidden" id="hiddenPaging" value="1">

						</div>
						<!-- //썸네일 리스트 -->

						<div class="box_rightType1">
							<div class="tit_mPop">
								<h2>태그선택</h2>
								<button type="button" class="btn_close">닫기</button>
							</div>
							<!-- 태그 리스트 -->
							<div class="area_tagList">
								<ul class="tag_list area_list js_one" id="arealist">
									<li id="0">
										<button type="button" class="btn_all_active">
											<span># 전체</span>
										</button>
									</li>
									<li id="1">
										<button type="button" class="btn">
											<span># 서울</span>
										</button>
									</li>
									<li id="6">
										<button type="button" class="btn">
											<span># 부산</span>
										</button>
									</li>
									<li id="4">
										<button type="button" class="btn">
											<span># 대구</span>
										</button>
									</li>
									<li id="2">
										<button type="button" class="btn">
											<span># 인천</span>
										</button>
									</li>
									<li id="5">
										<button type="button" class="btn">
											<span># 광주</span>
										</button>
									</li>
									<li id="3">
										<button type="button" class="btn">
											<span># 대전</span>
										</button>
									</li>
									<li id="7">
										<button type="button" class="btn">
											<span># 울산</span>
										</button>
									</li>
									<li id="8">
										<button type="button" class="btn">
											<span># 세종</span>
										</button>
									</li>
									<li id="31">
										<button type="button" class="btn">
											<span># 경기</span>
										</button>
									</li>
									<li id="32">
										<button type="button" class="btn">
											<span># 강원</span>
										</button>
									</li>
									<li id="33">
										<button type="button" class="btn">
											<span># 충북</span>
										</button>
									</li>
									<li id="34">
										<button type="button" class="btn">
											<span># 충남</span>
										</button>
									</li>
									<li id="35">
										<button type="button" class="btn">
											<span># 경북</span>
										</button>
									</li>
									<li id="36">
										<button type="button" class="btn">
											<span># 경남</span>
										</button>
									</li>
									<li id="37">
										<button type="button" class="btn">
											<span># 전북</span>
										</button>
									</li>
									<li id="38">
										<button type="button" class="btn">
											<span># 전남</span>
										</button>
									</li>
									<li id="39">
										<button type="button" class="btn">
											<span># 제주</span>
										</button>
									</li>
								</ul>
								<ul class="tag_list area_view_list js_multi" id="sigungulist">
								</ul>
								<ul class="tag_list area_list js_one" id="hashtagPickList">
									<li id="">
										<button type="button" class="btn_all_active">
											<span># 전체</span>
										</button>
									</li>
									<li id="산">
										<button type="button" class="btn">
											<span># 산</span>
										</button>
									</li>
									<li id="바다">
										<button type="button" class="btn">
											<span># 바다</span>
										</button>
									</li>
									<li id="도시">
										<button type="button" class="btn">
											<span># 도시</span>
										</button>
									</li>
									<li id="뚜벅이">
										<button type="button" class="btn">
											<span># 뚜벅이</span>
										</button>
									</li>
									<li id="나들이">
										<button type="button" class="btn">
											<span># 나들이</span>
										</button>
									</li>
									<li id="액티비티">
										<button type="button" class="btn">
											<span># 액티비티</span>
										</button>
									</li>
								</ul>
								<ul class="tag_list area_view_list js_multi" id="sigungulist">
								</ul>
								<ul class="tag_list area_list js_one" id="periodPicklist">
									<li id="">
										<button type="button" class="btn_all_active">
											<span>#전체</span>
										</button>
									</li>
									<li id="당일치기">
										<button type="button" class="btn">
											<span>#당일치기</span>
										</button>
									</li>
									<li id="1박2일">
										<button type="button" class="btn">
											<span>#1박2일</span>
										</button>
									</li>
									<li id="2박3일">
										<button type="button" class="btn">
											<span>#2박3일</span>
										</button>
									</li>
									<li id="3박4일">
										<button type="button" class="btn">
											<span>#3박4일</span>
										</button>
									</li>
									<li id="일주일">
										<button type="button" class="btn">
											<span>#일주일</span>
										</button>
									</li>
								</ul>
							</div>
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


