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
<style type="text/css">
.imgSize{ width: 100%; height: 250px;object-fit: initial;}
.btnIcons {border: none;}

.btn-group {
   vertical-align: middle;
    background: white;
    height: 40px;
    float: left;
    margin-right: 5px;
}
.iconSize{font-size: 25px; padding-top: 3px;}
.btnBack{position:absolute; top: 10px; left: 300px; z-index: 9999;}
.imtext5 {
	position: absolute;
	top: 54px; left : 15px;	z-index: 1;
	font-size: 20px;	color: white;	font-weight: bold;
	text-shadow: 1px 1px 1px #000;
}
.yesBoardLike {font-weight: bolder; background: blue;}

</style>

<script type="text/javascript">
	$(function() {
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
			for (let i = 0; i < num; i++) {
				$(".swiper-slide").eq(i).addClass("on");
				if (i == (num - 1)) {
					$(".swiper-slide").eq(i).addClass("on1");
				}
			}
			$(".cos_cont").removeClass("active");
			$(".cos_cont").eq(num - 1).addClass("active");
		});
	});
	
	function ajaxFun(url, method, query, dataType, fn) {
		$.ajax({
			type:method,
			url:url,
			data:query,
			dataType:dataType,
			success:function(data) {
				fn(data);
			},
			beforeSend:function(jqXHR) {
				jqXHR.setRequestHeader("AJAX", true);
			},
			error:function(jqXHR) {
				if(jqXHR.status === 403) {
					login();
					return false;
				} else if(jqXHR.status === 400) {
					alert("요청 처리가 실패 했습니다.");
					return false;
				}
		    	
				console.log(jqXHR.responseText);
			}
		});
	}

	function insertLike(userLiked, courseNum, $i) {
		let url = "${pageContext.request.contextPath}/theme/insertBoardLike";
		let query = "courseNum="+courseNum+"&userLiked="+userLiked;
		console.log(query);
		console.log("userLiked"+userLiked);
		console.log("state1 !! : ");

		const fn = function(data) {
			let state = data.state;

			if(state === "true") {
				if( userLiked ){
					$i.removeClass("fas fa-heart iconSize").addClass("far fa-heart iconSize");
					if(${dto.userBoardLiked}){
						$(".boardLike .likeCountNum").text(${dto.likeCount}-1);
					} else{
						$(".boardLike .likeCountNum").text(${dto.likeCount});
					}
				} else {
					$i.removeClass("far fa-heart iconSize").addClass("fas fa-heart iconSize");
					if(${dto.userBoardLiked}){
						$(".boardLike .likeCountNum").text(${dto.likeCount});
					} else{
						$(".boardLike .likeCountNum").text(${dto.likeCount}+1);
					}
				}
			}
		};
		ajaxFun(url, "post", query, "json", fn);
	}

	function insertScrap(userScraped, courseNum, $i) {
		let url = "${pageContext.request.contextPath}/theme/insertBoardScrap";
		let query = "courseNum="+courseNum+"&userScraped="+userScraped;
		console.log(query);
		console.log("userScraped"+userScraped);
		console.log("state1 !! : ");

		const fn = function(data) {
			let state = data.state;

			if(state === "true") {
				if( userScraped ){
					$i.removeClass("fas fa-bookmark iconSize").addClass("far fa-bookmark iconSize");
					if(${dto.userBoardScraped}){
						$(".boardScrap .scrapCountNum").text(${dto.scrapCount}-1);
					} else{
						$(".boardScrap .scrapCountNum").text(${dto.scrapCount});
					}
				} else {
					$i.removeClass("far fa-bookmark iconSize").addClass("fas fa-bookmark iconSize");
					if(${dto.userBoardScraped}){
						$(".boardScrap .scrapCountNum").text(${dto.scrapCount});
					} else{
						$(".boardScrap .scrapCountNum").text(${dto.scrapCount}+1);
					}
				}
			}
		};
		ajaxFun(url, "post", query, "json", fn);
	}

	function boardLiked(courseNum) {
		let url = "${pageContext.request.contextPath}/theme/userBoardLiked";
		let query = "courseNum="+courseNum;
		
		const fn = function(data) {
			let state = data.state;
			if(state === "true") {
				console.log("눌럿다.");
			} else {
				console.log("안눌렀다.");
			}
		};
		ajaxFun(url, "post", query, "json", fn);
	}

	function boardScraped(courseNum) {
		let url = "${pageContext.request.contextPath}/theme/userBoardScraped";
		let query = "courseNum="+courseNum;
		
		const fn = function(data) {
			let state = data.state;
			if(state === "true") {
				console.log("눌럿다.");
			} else {
				console.log("안눌렀다.");
			}
		};
		ajaxFun(url, "post", query, "json", fn);
	}

	// 좋아요 여부
	$(function() {
		$(".boardLike").click(function() {
			const $i = $(this).find("i");
			let userLiked = $i.hasClass("fas fa-heart iconSize");
			
			let courseNum =$(this).find(".courseNum").text();
			console.log("CourseNum : "+ courseNum)
			
			insertLike(userLiked, courseNum, $i); // 좋아요/좋아요 취소
			boardLiked(courseNum); // 좋아요 여부 가져오기
			
		});
	});

	//스크랩 여부
	$(function() {
		$(".boardScrap").click(function() {
			const $i = $(this).find("i");
			let userLiked = $i.hasClass("fas fa-bookmark iconSize");
			
			let courseNum =$(this).find(".courseNum").text();
			console.log("CourseNum : "+ courseNum)
			
			insertScrap(userLiked, courseNum, $i); // 스크랩/스크랩 취소
			boardScraped(courseNum); // 스크랩 여부 가져오기


		});
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
			<span class="address">${dto.cityName}</span>
		</div>
		<div class="post_area">
			<button type="button"
				class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardLike"
				style="color:#000; height:35px;">
				<i
					class="${dto.userBoardLiked ? 'fas fa-heart iconSize':'far fa-heart iconSize'}"
					style="color: red;"></i> &nbsp; <span class="likeCountNum"> ${dto.likeCount} </span><span class="courseNum"
					style="visibility: hidden;"> ${dto.courseNum}</span>
			</button>
			<button type="button"
				class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardScrap"
				style="color:#000; height:35px;">
				<i
					class="${dto.userBoardScraped ? 'fas fa-bookmark iconSize':'far fa-bookmark iconSize'}"
					style="color: #209ced;"></i> &nbsp; <span class="scrapCountNum"> ${dto.scrapCount}</span><span class="courseNum"
					style="visibility: hidden;"> ${dto.courseNum}</span>
			</button>

			<span class="rline num_view"><em class="tit">조회수 </em><span
				class="num" id="conRead">${dto.hitCount}</span></span> 
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
							<c:forEach var="list" items="${courseList}">
								<li class="swiper-slide"><em>${list.course_seq}<span>코스</span></em>
									<a id="${list.course_seq}"> <span class="img"
										style="background: url('${pageContext.request.contextPath}/uploads/course/${list.saveFileName}') 50% 50%/cover no-repeat;"></span>
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
			</div>

			<!-- tab cont -->
			<div id="tabCont">
				<c:forEach var="list" items="${courseList}">
					<div class="cos_cont" id="cosTab01">
						<div class="detail_box">
							<div class="title">
								<div class="tit_wrap">
									<em>${list.course_seq}</em> <strong><a
										href="/detail/detail_view.do?cotid=bf26a90b-9060-45f0-b574-5c15eae57d1e">
											${list.placeName} </a></strong>
								</div>
								<span>${list.address}</span>
							</div>
							<div class="info_area pc">
								<div class="wrap">
									<div>
										<a
											href="/detail/detail_view.do?cotid=bf26a90b-9060-45f0-b574-5c15eae57d1e"
											style="background: url('${pageContext.request.contextPath}/uploads/course/${list.saveFileName}') 50% 50%/cover no-repeat;">
										</a>
									</div>
									<div style="width: 400px; padding: 20px;">
										<span style="display: block; height: 30px; line-height: 30px;">코스소개</span>
										<strong><span
											style="display: block; height: 130px; border-top: solid 1px #eee; border-bottom: solid 1px #eee; padding: 10px; line-height: 110px;">${list.courseContent}</span></strong>
										<span style="display: block; height: 50px; line-height: 50px;">
											<c:forEach var="hashtag" items="${fn:split(dto.hashtag,',')}">
											# ${hashtag}
										</c:forEach>
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
		<div class="area_map" id="map3"></div>
	</div>
	<!-- //0521 지도 크게보기 팝업 -->

	<!-- 여행톡 -->
	<!-- 	<h3 class="blind">여행톡</h3> -->
	<!-- 	<div class="db_cont_detail"> -->
	<!-- 		<div id="replyGo"> -->
	<!-- 			<div class="replyWrap"> -->
	<!-- 				login 추가시 로그인 후 form -->
	<!-- 				<h3 class="tit_reply"> -->
	<!-- 					여행톡<span>4</span> -->
	<!-- 				</h3> -->
	<!-- 				<div class="write"> -->
	<!-- 					<div class="form"> -->
	<!-- 						<form name="tform" id="tform"> -->
	<!-- 							<label class="blind" for="comment">로그인 후 소중한 댓글을 남겨주세요.</label> <span -->
	<!-- 								class="writeForm"><textarea name="" rows="" id="comment" -->
	<!-- 									placeholder="로그인 후 소중한 댓글을 남겨주세요." cols="" readonly="readonly"></textarea></span> -->
	<!-- 							<div class="fileRegbtn_wrap"> -->
	<!-- 								<span class="fileRegbtn"> <input type="file" id="fileUp" -->
	<!-- 									name="fileUp" multiple="" onchange="fileChange(this)" -->
	<!-- 									disabled="disabled"> <label for="fileUp" -->
	<!-- 									class="btn_fileUp">파일찾기</label> <a href="javascript:" -->
	<!-- 									class="btn_apply ContentComment">로그인</a> -->
	<!-- 								</span> -->
	<!-- 							</div> -->
	<!-- 						</form> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 				<div class="wrap_reply"> -->
	<!-- 					<p class="reply_none" style="display: none;">등록된 댓글이 없습니다.</p> -->
	<!-- 				</div> -->
	<!-- 				<div class="wrap_reply"> -->
	<!-- 					<div class="list_reply"> -->
	<!-- 						<ul> -->
	<!-- 							<li id="e4ba3e14-2c59-4136-95bf-1d8f362d70f2" -->
	<!-- 								class="level_mission"><div class="mission"> -->
	<!-- 									<span>여행구독 6월 미션 진행 중</span> -->
	<!-- 								</div> -->
	<!-- 								<div class="profile"> -->
	<!-- 									<div class="photo" icid="e4ba3e14-2c59-4136-95bf-1d8f362d70f2"> -->
	<!-- 										<img -->
	<!-- 											src="https://k.kakaocdn.net/dn/lqnu2/btrxHuo9aqS/Df6X3prlbQoWvSPITOmZl1/img_640x640.jpg" -->
	<!-- 											alt="프로필 사진"> -->
	<!-- 									</div> -->
	<!-- 									<span class="ico"><img -->
	<%-- 										src="${pageContext.request.contextPath}/dist/theme/article/resources/images/sub/ico_kakao.png" --%>
	<!-- 										alt="카카오"></span> -->
	<!-- 								</div> -->
	<!-- 								<div class="txt_reply"> -->
	<!-- 									<p>대구만의 특별함을 느낄 수 있는 곳으로 가득하네요! 너무 좋아요 대구?</p> -->
	<!-- 									<div class="date"> -->
	<!-- 										<em class="name">은*</em> <span>2022-06-16</span> -->
	<!-- 									</div> -->
	<!-- 								</div> <span class="replyBtn active"><button type="button" -->
	<!-- 										class="btn1"> -->
	<!-- 										<span>0</span> -->
	<!-- 									</button> -->
	<!-- 									<button type="button" class="btn2"> -->
	<!-- 										<span>0</span> -->
	<!-- 									</button></span><span class="btn_report"><button type="button" -->
	<!-- 										onclick="OpenReportPopup('e4ba3e14-2c59-4136-95bf-1d8f362d70f2');">신고하기</button></span> -->
	<!-- 								<div class="replyBox" style="display: none;"> -->
	<!-- 									<ul> -->
	<!-- 										<li class="inputcomment"> -->
	<!-- 											<div class="mLine"> -->
	<!-- 												<div class="replyForm"> -->
	<!-- 													<form name="form"> -->
	<!-- 														<label class="blind" for="replyForm">답글을 입력하세요.</label> -->
	<!-- 														<textarea class="comment" id="replyForm" rows="" -->
	<!-- 															placeholder="로그인 후 소중한 답글을 남겨주세요." cols="" -->
	<!-- 															readonly="readonly"></textarea> -->
	<!-- 														<div class="btn"> -->
	<!-- 															<span class="fileRegbtn"> <input type="file" -->
	<!-- 																class="fileUp" -->
	<!-- 																id="fileUpe4ba3e14-2c59-4136-95bf-1d8f362d70f2" -->
	<!-- 																name="fileUpe4ba3e14-2c59-4136-95bf-1d8f362d70f2" -->
	<!-- 																onchange="fileChange(this)" disabled="disabled"> -->
	<!-- 																<label for="fileUpe4ba3e14-2c59-4136-95bf-1d8f362d70f2" -->
	<!-- 																class="btn_fileUp">파일찾기</label> -->
	<!-- 															</span> <a href="javascript:;" class="btn_apply ContentComment">로그인</a> -->
	<!-- 														</div> -->
	<!-- 													</form> -->
	<!-- 												</div> -->
	<!-- 											</div> -->
	<!-- 										</li> -->
	<!-- 									</ul> -->
	<!-- 								</div></li> -->
	<!-- 						</ul> -->
	<!-- 						<div class="btn_center" id="commentMore" style=""> -->
	<!-- 							<a href="javascript:" class="btn_more">댓글 더보기</a> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</div> -->
	<!-- //여행톡 -->
</div>



