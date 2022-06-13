<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/festival/css/swiper.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/festival/css/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/festival/css/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/festival/css/content.css">


<style type="text/css">
.slides {
    transition: left 0.5s ease-out;
}

.selected {
	font-weight: 800;
}

.zone_cont .area_mid .img {
    width: 226px;
    height: 320px;
    border-radius: 10px;
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

// 지역 읽어오는 함수
function readCity(areaCode) {
	var url="${pageContext.request.contextPath}/festival/readCity";
	var query="areaCode="+areaCode;
	
	var fn=function(data) {
		printCity(data);
	};
	
	ajaxFun(url, "get", query, "json", fn);
	
	function printCity(data) {
		$("#zoneTitle").html(data.cityName);
		var imgsrc = "https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=" + data.logoImg;
		$("#boxLogo a img").attr("src", imgsrc);
		$("#boxLogo a img").attr("alt", data.cityName);
		$("#boxLogo strong").html(data.cityName);
		$("#pLogo a").html(data.cityInfo);
	}
}

// 시군구 불러오기
function readSigungu(areaCode) {
	let url="${pageContext.request.contextPath}/festival/requestSigungu";
	let query="areaCode="+areaCode;
	
	var fn=function(data) {
		printSigungu(data);
	};
	
	ajaxFun(url, "get", query, "json", fn);
	
	function printSigungu(data) {
		let totalCount=data.response.body.totalCount;
		let out = "";
		if(areaCode==="8"){ // 세종일 경우
			let code = data.response.body.items.item.code;
			let name = data.response.body.items.item.name;
			out += "<li><a title='"+name+" 축제보기' data-code='"+code+"'>"+name+"</a></li>";
		} else {
			$.each(data.response.body.items.item, function(index, item) {
				out += "<li><a title='"+item.name+" 축제보기' data-code='"+item.code+"'>"+item.name+"</a></li>";
			});
		}
		
		$(".list_sub .clfix").html(out);
		
		// 더보기 버튼 설정
		if(totalCount >= 13) {
			$(".btn_more").show();
		} else {
			$(".btn_more").hide();
		}
		
		$(".list_sub").removeClass('on');
		$(".btn_more").html('더보기');
	}
}

// 축제 가져오기(시도별)
function sidoFestival(areaCode, count) {
	let url="${pageContext.request.contextPath}/festival/requestFestival";
	let query="areaCode="+areaCode+"&count="+count;
	
	var fn=function(data) {
		printFestival(data);
	};
	
	ajaxFun(url, "get", query, "json", fn);
	
	function printFestival(data) {
		let out1 = "";
		let out2 = "";
		$.each(data.response.body.items.item, function(index, item) {
			if(index === 0){ // 첫 번째 파싱할때만
				out1 += "<a href='' class='img'>";
				out1 += 	"<img src='"+item.firstimage+"' alt='"+item.title+"'></a>";
				
				$("#arealeft .txt_info strong").html(item.title);
				$("#arealeft .txt_info p").html(item.addr1);
			} else {
				// 날짜 포맷 변경
				let pattern = /(\d{4})(\d{2})(\d{2})/;
				let startdate = item.eventstartdate.toString().replace(pattern, '$1.$2.$3');
				let enddate = item.eventenddate.toString().replace(pattern, '$1.$2.$3');
				
				out2 += "<li class='obj1 clfix'>";
				out2 +=	  "<div>";
				out2 += 	"<a href=''>"
				out2 += "<strong class='bn_txtR' style='color: #097faf'>"+startdate + " ~ " + enddate + "</strong>";
				out2 += item.title;
				out2 += "</a></div></li>";
			}
		});
		$("#areamid").html(out1);
		$("#arearight .area_right ul").html(out2);
	}
}


// 축제 가져오기(슬라이드)
function slideFestival(areaCode, count) {
	let url="${pageContext.request.contextPath}/festival/requestFestival";
	let query="areaCode="+areaCode+"&count="+count;
	
	var fn=function(data) {
		printslideFestival(data);
	};
	
	ajaxFun(url, "get", query, "json", fn);
	
	function printslideFestival(data) {
		console.log(data);
		let out = "";
		$.each(data.response.body.items.item, function(index, item) {
			let pattern = /(\d{4})(\d{2})(\d{2})/;
			let startdate = item.eventstartdate.toString().replace(pattern, '$1.$2.$3');
			let enddate = item.eventenddate.toString().replace(pattern, '$1.$2.$3');
			
			let arr = item.addr1.split(" ");
			let addr = arr[0] + " " + arr[1];
			
			out += "<div class='swiper-slide swiper-slide-duplicate' style='margin-right: 20px;'>";
			out +=    "<a href='' title='"+item.title+" 상세보기'>";
			out += 		"<span class='img swiper-lazy swiper-lazy-loaded'";
			out += 		"	style='background-image: url(&quot;"+item.firstimage+"&quot;);'></span>";
			out += 		"<span class='hover_cont'>";
			out += 			"<span class='date'>"+startdate+" ~ "+enddate+"</span>";
			out += 			"<strong>"+item.title+"</strong>";
			out += 			"<span class='area'>"+addr+"</span>";
			out += 		"</span></a></div>";
		});
		$("#fescalendar").html(out);
	}
}


// 최초 실행 시 서울에 대한 정보 읽어오기
$(function() {
	readSigungu(1);
	readCity(1);
	sidoFestival(1, 4); // 서울 축제 리스트 가져오기
	slideFestival('NULL', 10); // 슬라이드 축제 리스트 가져오기
	festivalList('R', 'ALL', 'ALL', 1); // 축제 리스트 가져오기
});


// 축제 리스트 슬라이드 기능
$(document).ready(function() {
	var slides = document.querySelector('.slides');
	var currentIdx = 0;
	var slideCount = 10;
	
	function moveSlide(num) {
		slides.style.left = -num * 256 + 'px';
		currentIdx = num;
	}
	
	$(document).on("click", ".swiper-button-prev", function() {
		if(currentIdx > 0) {
			moveSlide(currentIdx - 1);
		} else {
			moveSlide(slideCount - 3);
		}
    });
	
	$(document).on("click", ".swiper-button-next", function() {
		if(currentIdx < slideCount - 3) {
			moveSlide(currentIdx + 1);
		} else {
			moveSlide(0);
		}
    });
});

// 축제 리스트 불러오기
function festivalList(sort, month, areaCode, pageNum) {
	let url="${pageContext.request.contextPath}/festival/festivalList?";
	url += "sort="+sort+"&month="+month+"&areaCode="+areaCode+"&pageNum="+pageNum;
	
	$.getJSON(url, function(data) {
		printfestivalList(data);
	});
	
	function printfestivalList(data) {
		console.log(data.totalCnt);
		
		
		if(data.totalCnt === 0) {
			$(".page-box").html("등록된 게시물이 없습니다.");
		} else {
			$(".page-box").html(data.paging);
		}

		let out = "";
		
		for(let i=0; i<data.titles.length; i++){
			let pattern = /(\d{4})(\d{2})(\d{2})/;
			let startdate = data.eventstartdates[i].replace(pattern, '$1.$2.$3');
			let enddate = data.eventenddates[i].replace(pattern, '$1.$2.$3');
			
			let flagtype = "";
			if(data.statuses[i] === "진행전") {
				flagtype = "type_before";
			} else if (data.statuses[i] === "진행중") {
				flagtype = "type_ing";
			} else if (data.statuses[i] === "종료") {
				flagtype = "type_end";
			}
			
			out += "<li class='bdr_nor'>";
			out += 		"<div class='photo'>";
			out += 			"<a href=''>";
			out += 				"<img src='"+data.firstimages[i]+"'";
			out += 				"	alt='"+data.titles[i]+"'><em class='flag "+flagtype+"'>"+data.statuses[i]+"</em>"; // type_ing : 진행중, type_before : 진행전, type_end : 취소
			out += 			"</a>";
			out += 		"</div>";
			out += 		"<div class='area_txt'>";
			out += 			"<div class='tit'>";
			out += 				"<a onclick=''>"+data.titles[i]+"</a>";
			out += 			"</div>";
			out += 			"<p>["+startdate+"~"+enddate+"]</p>";
			out += 			"<p class='tag'>";
			out += 				"<span>"+data.addr1s[i]+"</span>";
			out += 			"</p>";
			out += 		"</div>";
			out += 		"<button type='button' title='열기' class='btn_view'>더보기</button>";
			out += 		"<div class='pop_subMenu'>";
			out += 			"<ul>";
			out += 				"<li class='btn_share' id=''>";
			out += 					"<a href='' onclick=''>공유하기</a>";
			out += 				"</li>";
			out += 			"</ul>";
			out += 		"</div>";
			out += "</li>";
			
			
		}
		$("#festivalList").html(out);
		$("#totalCnt").html(data.totalCnt);
		
	}
}



// 지역 선택 버튼
$(document).ready(function () {
	$(".type0 .swiper-wrapper button").click(function() {
		$(".type0 .swiper-wrapper .swiper-slide").removeClass('on');
		$(".type0 span").remove();
		$(this).parent().addClass('on');
		$(this).parent().append("<span class='selected_text blind'>선택됨</span>");
		
		var areaCode = $(this).parent().attr('data-areacode');
		readSigungu(areaCode); // 시군구 읽어오기
		readCity(areaCode); // 지역 내용 부르기
		sidoFestival(areaCode, 4);
		
	});
});


// 시군구 더보기 버튼 스크립트
$(document).ready(function () {
	$(".btn_more").click(function() {
		if($(this).html() === '더보기') {
			$(".list_sub").addClass('on');
			$(this).html('닫기');
		} else {
			$(".list_sub").removeClass('on');
			$(this).html('더보기');
		}
		$("#sigungulist a").removeClass('selected');
		
	});
});



// 축제 리스트 더보기 버튼 스크립트
$(document).ready(function () {
	$(document).on("click", ".btn_view", function() {
		if($(this).html() === '더보기') {
			$(".btn_view").removeClass('on');
			$(this).addClass('on');
			$(this).html('닫기');
		} else {
			$(this).removeClass('on');
			$(this).html('더보기');
		}
	});
});

// 리스트 최신순, 인기순 선택
$(document).ready(function() {
	$(document).on("click", ".btn_txt button", function() {
		$(".btn_txt button").removeAttr('class');
		$(this).addClass('on');
		
		callFestivalList();
    });
});

// 리스트 월 선택
$(document).ready(function() {
	$(document).on("click", "#monthlist button", function() {
		$("#monthlist button").removeAttr('class');
		$("#monthlist button").attr('class', 'btn');
		
		$(this).removeClass('btn');
		$(this).addClass('btn_all_active');
		
		callFestivalList();
    });
});


// 리스트 지역 선택
$(document).ready(function() {
	$(document).on("click", "#arealist button", function() {
		$("#arealist button").removeAttr('class');
		$("#arealist button").attr('class', 'btn');
		
		$(this).removeClass('btn');
		$(this).addClass('btn_all_active');
		
		callFestivalList();
    });
});


// 하단 축제 리스트 함수 호출
function callFestivalList() {
	let sort = $(".btn_txt .on").attr('id');
	let month = $("#monthlist .btn_all_active").parent().attr('id');
	let areaCode = $("#arealist .btn_all_active").parent().attr('id');
	let pageNum = 1;
	
	festivalList(sort, month, areaCode, pageNum);
}


function detailFestival() {
	let url="${pageContext.request.contextPath}/festival/requestFestival";
	let query="areaCode="+areaCode+"&count="+count;
}

</script>

<div class="container-f mb-2">
	<div class="swiper-container" id="mainTab">
		<ul class="swiper-wrapper" style="padding-left: 0;">
			<li class="otherTab swiper-slide" style="display: none;"></li>
			<li class="homeTab swiper-slide" style="display: none;"></li>
			<li class="areaTab swiper-slide" style="display: list-item;">
			<!-- contents -->
				<div id="contents" class="wideType1 main_contents">
					<div class="zone_wrap">
						<div class="list_zone">
							<div class="tit">
								<h2 id="zoneTitle">서울</h2>
							</div>
							<!-- type0 클래스 수정 -->
							<div class="swiper-container2 type0" id="zoneArr">
								<!-- dot 0개일경우 class type1, dot 1개일경우 class type1 , dot 2개일경우 class type2, dot 3개일경우 class type3-->
								<!-- // type0 클래스 수정 -->
								<div class="swiper-wrapper">
									<div id="zone1" class="swiper-slide on" data-areacode="1">
										<button type="button">서울</button>
										<span class='selected_text blind'>선택됨</span>
									</div>
									<div id="zone2" class="swiper-slide" data-areacode="6">
										<button type="button">부산</button>
									</div>
									<div id="zone3" class="swiper-slide" data-areacode="4">
										<button type="button">대구</button>
									</div>
									<div id="zone4" class="swiper-slide" data-areacode="2">
										<button type="button">인천</button>
									</div>
									<div id="zone5" class="swiper-slide" data-areacode="5">
										<button type="button">광주</button>
									</div>
									<div id="zone6" class="swiper-slide" data-areacode="3">
										<button type="button">대전</button>
									</div>
									<div id="zone7" class="swiper-slide" data-areacode="7">
										<button type="button">울산</button>
									</div>
									<div id="zone8" class="swiper-slide" data-areacode="8">
										<button type="button">세종</button>
									</div>
									<div id="zone9" class="swiper-slide" data-areacode="31">
										<button type="button">경기</button>
									</div>
									<div id="zone10" class="swiper-slide" data-areacode="32">
										<button type="button">강원</button>
									</div>
									<div id="zone11" class="swiper-slide" data-areacode="33">
										<button type="button">충북</button>
									</div>
									<div id="zone12" class="swiper-slide" data-areacode="34">
										<button type="button">충남</button>
									</div>
									<div id="zone13" class="swiper-slide" data-areacode="37">
										<button type="button">전북</button>
									</div>
									<div id="zone14" class="swiper-slide" data-areacode="38">
										<button type="button">전남</button>
									</div>
									<div id="zone15" class="swiper-slide" data-areacode="35">
										<button type="button">경북</button>
									</div>
									<div id="zone16" class="swiper-slide" data-areacode="36">
										<button type="button">경남</button>
									</div>
									<div id="zone17" class="swiper-slide" data-areacode="39">
										<button type="button">제주</button>
									</div>
								</div>
							</div>
							<div class="zone_box">
								<div class="box_logo" id="boxLogo">
									<a class="logo">
										<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=57761821-2056-4a2c-849a-7c4d00c1c623"
											alt="서울" style="width: 34px; height: 36px">
										<strong class="name">서울</strong>
									</a>
									<p id="pLogo"><a>너와 나의 서울</a></p>
								</div>
								<!-- [D]
								1. 하나의 div.zone_cont 안에 각각의 데이터가 새로 적용 되는 방식
								2. 탭메뉴 클릭시 해당되는 컨텐츠에 클래스 zoneCont1~15 가 추가되면서 display:block 이된다. -->
								<div class="zoneCont8 zone_cont on">
									<div class="area_mid" id="areamid">
									</div>
									<div class="area_left" id="arealeft">
										<span>MY AREA FEED</span>
										<div class="txt_info">
											<strong style="color: #000000;">지금, 사계展</strong>
											<p>
												레진아티스트와 함께하는<br>전시회에 초대합니다
											</p>
										</div>
										<a href="" class="btn_detail" title="">자세히 보기 </a>
									</div>
									
									<!-- 오른쪽에 3개 짜리 -->
									<div id="arearight">
										<div class="area_right" id="area3" style="">
											<ul>
											</ul>
										</div>
									</div>
									<!-- 오른쪽 3개짜리 끝 -->
									<div class="list_sub" style="padding-right: 120px;">
										<div class="inr" style="overflow: hidden; height: 25px;">
											<ul class="clfix" id="sigungulist" style="height: auto;">
											</ul>
										</div>
										<button type="button" class="btn_more" style="display: block;">더보기</button>
									</div>

								</div>
							</div>
						</div>
					</div>
					<!-- 달력 -->
					<div class="local_fair">
						<h2>
							<strong>축제</strong> 어디까지 가봤니?
						</h2>
						<div class="fair_slide">
							<div class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-free-mode">
								<div class="swiper-wrapper slides" id="fescalendar"
									style="transform: translate3d(12px, 0px, 0px);">
								</div>
								<div class="swiper-button-next" tabindex="0" role="button"
									aria-label="Next slide">다음</div>
								<div class="swiper-button-prev" tabindex="0" role="button"
									aria-label="Previous slide">이전</div>
								<span class="swiper-notification" aria-live="assertive"
									aria-atomic="true"></span>
							</div>
						</div>
					</div>
				</div> <!-- //contents --> 
			</li>
		</ul>
	</div>

	<div id="contents">
		<div class="wrap_contView clfix">

			<!-- 썸네일 리스트 -->
			<div class="box_leftType1">
				<div class="total_check">
					<strong>총<span id="totalCnt">1,181</span>건</strong>
					<div class="btn_txt">
						<button type="button" class="on" id="R">최신순</button>
						<button type="button" id="P">인기순</button>
					</div>
					<button type="button" class="btn_mPop">상세조회</button>
				</div>
				<h3 class="blind" id="blindsearchtype">최신순</h3>
				<ul class="list_thumType flnon" id="festivalList">
				</ul>
				
				<!-- paging -->
				
				<div class="page-box">
					
				</div>
				
				<!-- //paging -->
				
			</div>
			
			<div class="box_rightType1">
				<!-- 태그 리스트 -->
				<div class="area_tagList">
					<ul class="tag_list js_multi" id="monthlist">
						<li id="All">
							<button type="button" class="btn_all_active">
								<span>#전체</span>
							</button>
						</li>
						<li id="01">
							<button type="button" class="btn">
								<span>#1월</span>
							</button>
						</li>
						<li id="02">
							<button type="button" class="btn">
								<span>#2월</span>
							</button>
						</li>
						<li id="03">
							<button type="button" class="btn">
								<span>#3월</span>
							</button>
						</li>
						<li id="04">
							<button type="button" class="btn">
								<span>#4월</span>
							</button>
						</li>
						<li id="05">
							<button type="button" class="btn">
								<span>#5월</span>
							</button>
						</li>
						<li id="06">
							<button type="button" class="btn">
								<span>#6월</span>
							</button>
						</li>
						<li id="07">
							<button type="button" class="btn">
								<span>#7월</span>
							</button>
						</li>
						<li id="08">
							<button type="button" class="btn">
								<span>#8월</span>
							</button>
						</li>
						<li id="09">
							<button type="button" class="btn">
								<span>#9월</span>
							</button>
						</li>
						<li id="10">
							<button type="button" class="btn">
								<span>#10월</span>
							</button>
						</li>
						<li id="11">
							<button type="button" class="btn">
								<span>#11월</span>
							</button>
						</li>
						<li id="12">
							<button type="button" class="btn">
								<span>#12월</span>
							</button>
						</li>
					</ul>
					<ul class="tag_list area_list js_one" id="arealist">
						<li id="All">
							<button type="button" class="btn_all_active">
								<span>#전체</span>
							</button>
						</li>
						<li id="1">
							<button type="button" class="btn">
								<span>#서울</span>
							</button>
						</li>
						<li id="6">
							<button type="button" class="btn">
								<span>#부산</span>
							</button>
						</li>
						<li id="4">
							<button type="button" class="btn">
								<span>#대구</span>
							</button>
						</li>
						<li id="2">
							<button type="button" class="btn">
								<span>#인천</span>
							</button>
						</li>
						<li id="5">
							<button type="button" class="btn">
								<span>#광주</span>
							</button>
						</li>
						<li id="3">
							<button type="button" class="btn">
								<span>#대전</span>
							</button>
						</li>
						<li id="7">
							<button type="button" class="btn">
								<span>#울산</span>
							</button>
						</li>
						<li id="8">
							<button type="button" class="btn">
								<span>#세종</span>
							</button>
						</li>
						<li id="31">
							<button type="button" class="btn">
								<span>#경기</span>
							</button>
						</li>
						<li id="32">
							<button type="button" class="btn">
								<span>#강원</span>
							</button>
						</li>
						<li id="33">
							<button type="button" class="btn">
								<span>#충북</span>
							</button>
						</li>
						<li id="34">
							<button type="button" class="btn">
								<span>#충남</span>
							</button>
						</li>
						<li id="35">
							<button type="button" class="btn">
								<span>#경북</span>
							</button>
						</li>
						<li id="36">
							<button type="button" class="btn">
								<span>#경남</span>
							</button>
						</li>
						<li id="37">
							<button type="button" class="btn">
								<span>#전북</span>
							</button>
						</li>
						<li id="38">
							<button type="button" class="btn">
								<span>#전남</span>
							</button>
						</li>
						<li id="39">
							<button type="button" class="btn">
								<span>#제주</span>
							</button>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
