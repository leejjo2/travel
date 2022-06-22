<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet"
   href="${pageContext.request.contextPath}/dist/travelCourse/travelCourse.css"
   type="text/css">
<style type="text/css">   
.area_course>ul li>span {
   display: block;
   margin-left: -5px;
   padding-left: 20px;
   background: url('${pageContext.request.contextPath}/resources/img/travelCourse/ico_leftobj.png') 0 50% no-repeat;
   color: #000;
   font-size: 16px;
}

.area_course>ul li {
   background: url('${pageContext.request.contextPath}/resources/img/travelCourse/line_leftobj.png') 0 0 repeat-y;
   line-height: 20px;
   padding: 10px 0;
   display: list-item;
   text-align: -webkit-match-parent;
}

.slides li:not(:last-child){
	float: left;
	margin-right: 30px;
}

.slides {transition:left 0.5s ease-out;	width: }

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


$(function() {
	function travelCourseList() {
	let themeNum = $(".title1_5 ul .on").attr("id");
	console.log("테마번호" + themeNum);
	
	let query = "themeNum="+themeNum;
    let url = "${pageContext.request.contextPath}/travelCourse/list?" + query;
    console.log("쿼리"+query);
    location.href = url;
	}
	
	$(".title1_5 ul li").click(function() {
		$(".title1_5 ul li").removeAttr("class");
		$(this).attr("class", "on");
		travelCourseList();
	
	});
});

function searchList() {
	if (window.event.keyCode == 13) {
    	// 엔터키가 눌렸을 때
		const f = document.searchForm;
		f.submit();
    }
}

function insertLike(userLiked, courseNum, $i) {
	let url = "${pageContext.request.contextPath}/travelCourse/insertBoardLike";
	let query = "courseNum="+courseNum+"&userLiked="+userLiked;
	console.log(query);
	console.log("userLiked"+userLiked);
	console.log("state1 !! : ");

	const fn = function(data) {
		let state = data.state;

		if(state === "true") {
			if( userLiked ){
				$i.removeClass("fas fa-heart iconSize").addClass("far fa-heart iconSize");

			} else {
				$i.removeClass("far fa-heart iconSize").addClass("fas fa-heart iconSize");
			}
		}
	};
	ajaxFun(url, "post", query, "json", fn);
}

function insertScrap(userScraped, courseNum, $i) {
	let url = "${pageContext.request.contextPath}/travelCourse/insertBoardScrap";
	let query = "courseNum="+courseNum+"&userScraped="+userScraped;
	console.log(query);
	console.log("userScraped"+userScraped);
	console.log("state1 !! : ");

	const fn = function(data) {
		let state = data.state;

		if(state === "true") {
			if( userScraped ){
				$i.removeClass("fas fa-bookmark iconSize").addClass("far fa-bookmark iconSize");

			} else {
				$i.removeClass("far fa-bookmark iconSize").addClass("fas fa-bookmark iconSize");
			}
		}
	};
	ajaxFun(url, "post", query, "json", fn);
}

function boardLiked(courseNum) {
	let url = "${pageContext.request.contextPath}/travelCourse/userBoardLiked";
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
	let url = "${pageContext.request.contextPath}/travelCourse/userBoardScraped";
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
		let userLiked = $i.hasClass("fas fa-bookmark iconSize");
		
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

<div class="container-fluid" style="padding: 0; margin: 0 auto;">

   <div class="container-fluid"
      style="height: 300px; width: 100%; background: #0dcaf0;">
      <div class="input1">
         <div class="search-bar Small shadow align-middle"
            style="max-width: 470px;">
           <form class="row" name="searchForm" style="width: 100%" action="${pageContext.request.contextPath}/travelCourse/list" method="post">
	            <div class="searchImg">
	               <img alt="icon"
	                  src="https://dffoxz5he03rp.cloudfront.net/icons/ic_search_sm_white.svg"
	                  class="searchIcon">
	            </div>
	            <input name = "keyword" class="search-bar__input text-white search" type="text"
	               style="height: 25px;" onkeypress="searchList()" placeholder="도시나 기간을 검색해보세요">
            </form>
         </div>
      </div>
   </div>
   
   
   <div class="container mb-2 pt-3" style="max-width: 1000px;">
      <div class="title1 top-5  translate-middle-y">
         
         
         <div class="title1_2">
            <div class="title1_3">
               <div class="title1_4">
                  <div class="title1_5">
                  	<ul class="slides">
                  		<li  id = "0" ${themeNum=="0"?"class='on'":""}>
		                      <a href="#" class="tagImg"
		                        style="background-image: url(${pageContext.request.contextPath}/resources/img/travelCourse/6.jpg); ">
		                        <div class="title2_1"></div>
		                        <h3>
		                           <span>전체</span>
		                        </h3>
		                      </a>
	                 	</li>
                  		<li id = "1" ${themeNum=="1"?"class='on'":""}>
			                  	 <a href="#" class="tagImg" 
			                        style="background-image: url(${pageContext.request.contextPath}/resources/img/travelCourse/1.jpg); ">
			                        <div class="title2_1"></div>
			                        <h3>
			                           <span>가족코스</span>
			                        </h3>
			                     </a>
	                     </li>
	                     <li id = "2" ${themeNum=="2"?"class='on'":""}>
		                     <a href="#" class="tagImg" 
		                        style="background-image: url(${pageContext.request.contextPath}/resources/img/travelCourse/2.JPG); ">
		                        <div class="title2_1"></div>
		                        <h3>
		                           <span>혼자여행</span>
		                        </h3>
		                     </a>
		                  </li>
		                  <li id = "3" ${themeNum=="3"?"class='on'":""}>
		                     <a href="#" class="tagImg" 
		                        style="background-image: url(${pageContext.request.contextPath}/resources/img/travelCourse/3.jpg); ">
		                        <div class="title2_1"></div>
		                        <h3>
		                           <span>도보코스</span>
		                        </h3>
		                     </a>
		                  </li>
		                  <li id = "4" ${themeNum=="4"?"class='on'":""}>
		                     <a href="#" class="tagImg"   
		                        style="background-image: url(${pageContext.request.contextPath}/resources/img/travelCourse/4.jpg); ">
		                        <div class="title2_1"></div>
		                        <h3>
		                           <span>힐링코스</span>
		                        </h3>
		                     </a>
		                  </li>
		                  <li id = "5" ${themeNum=="5"?"class='on'":""}>
		                   	 <a href="#" class="tagImg"
		                         style="background-image: url(${pageContext.request.contextPath}/resources/img/travelCourse/5.jpg); ">
		                        <div class="title2_1"></div>
		                        <h3>
		                           <span>맛코스</span>
		                        </h3>
		                     </a>
		                   </li>
		                   <li id = "6" ${themeNum=="6"?"class='on'":""}>
		                     <a href="#" class="tagImg"
		                        style="background-image: url(${pageContext.request.contextPath}/resources/img/travelCourse/6.jpg); ">
		                        <div class="title2_1"></div>
		                        <h3>
		                           <span>캠핑코스</span>
		                        </h3>
		                     </a>
		                   </li>
		                   <li id = "7" ${themeNum=="7"?"class='on'":""}>
		                      <a href="#" class="tagImg"
		                        style="background-image: url(${pageContext.request.contextPath}/resources/img/travelCourse/6.jpg); ">
		                        <div class="title2_1"></div>
		                        <h3>
		                           <span>반려둥물과 함께</span>
		                        </h3>
		                     </a>
		                   </li>
		                   <li id = "8" ${themeNum=="8"?"class='on'":""}>
		                      <a href="#" class="tagImg"
		                        style="background-image: url(${pageContext.request.contextPath}/resources/img/travelCourse/6.jpg); ">
		                        <div class="title2_1"></div>
		                        <h3>
		                           <span>문화코스</span>
		                        </h3>
		                     </a>
		                   </li>	
		                   	                   
		                   
                  	</ul>
                  	
                  	 <p class="controls">
                  	
                  		<span class="prev btnText">
				                  <img alt="next" src="${pageContext.request.contextPath}/resources/img/travelCourse/prev.svg" class="title2_img">
                  		</span>
                  		<span class="next btnText">
				                  <img alt="next" src="${pageContext.request.contextPath}/resources/img/travelCourse/next.svg" class="title2_img">
                  		</span>
                  	</p>

                  </div>
                 
               </div> 
             
            </div>
         </div>
         
      </div>
      
   </div>
   
</div>

<div class="container-sm mb-2 pt-3 title3">
   <div class="box mt-5">
      <div class="row text-dark g-3 text-center m-9 title3_2">
         <div style="margin-bottom: 20px;">
            <button
               class="btn shadow-sm d-flex justify-content-start rounded-3 title4_1 btn_make"
               style="float: left;" onclick="location.href='${pageContext.request.contextPath}/travelCourse/write';">내 코스 만들기</button>

            <select class="form-select d-flex justify-content-end title3_3"   aria-label="Default select example">
               <option selected>10개씩 보기</option>
               <option value="1">4개씩 보기</option>
               <option value="2">20개씩 보기</option>
            </select> <select class="form-select d-flex justify-content-end title3_4"
               aria-label="Default select example">
               <option selected>최신순</option>
               <option value="1">좋아요순</option>
               <option value="2">스크랩순</option>
               <option value="3">조회순</option>
            </select>
         </div>
         
         <div class="col">
        	<c:forEach var="dto" items="${list}" varStatus="status" begin="0" end="0">
	            <div class="card w-100 title4" >
	            	<div style="background: black;">
		               <img src="${pageContext.request.contextPath}/uploads/course/${dto.saveFileName}" alt="${dto.subject}" class="card-img-top imgSize" style="opacity: 0.9;"> 
		               <span class="imtext2">${dto.subject}</span>
		               <div class="btnBack" >
			               	<div class="btn-group" style="background: none;" role="group"
			                  aria-label="Basic outlined example">
			                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardLike">
	                           	 <i class="${dto.userBoardLiked ? 'fas fa-heart iconSize':'far fa-heart iconSize'}" style="color: red;"></i>
			               		 <span class="courseNum" style="visibility: hidden;"> ${dto.courseNum}</span>
			                  </button>
			                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardScrap">
	                           	 <i class="${dto.userBoardScraped ? 'fas fa-bookmark iconSize':'far fa-bookmark iconSize'}"  style="color: #424242;"></i>
	                           	 <span class="courseNum" style="visibility: hidden;"> ${dto.courseNum}</span>
			                  </button>
			               </div>
						</div>
		              <span class="imtext5"># ${dto.themeName}</span> <span class="imtext3">지역 : ${dto.cityName}</span> <span class="imtext4">기간
		                  : ${dto.period}</span>
		             </div>
	               <div class="card-body">
	                  <div class="p-3 area_course">
	                     <ul>
	                     	<c:forEach var="citydto" items="${dto.travelCourseList}" varStatus="status">
								<li><span>${citydto.placeName}</span></li>
		                    </c:forEach>
	                     </ul>
	                  </div>
	               </div>
	            </div>
	         </c:forEach>


            <div class="row" style="margin-top: 10px;">
               <div class="col">
					<c:forEach var="dto" items="${list}" varStatus="status" begin="3" end="3">
			            <div class="card w-100 title4" >
			            	<div style="background: black;">
				               <img src="${pageContext.request.contextPath}/uploads/course/${dto.saveFileName}" alt="${dto.subject}" class="card-img-top imgSize" style="opacity: 0.9;"> 
				               <span class="imtext2">${dto.subject}</span>
		               			<div class="btnBack" >
					               <div class="btn-group" style="background: none;" role="group"
					                  aria-label="Basic outlined example">
					                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardLike">
			                           	<i class="${dto.userBoardLiked ? 'fas fa-heart iconSize':'far fa-heart iconSize'}" style="color: red;"></i>
			                           	 <span class="courseNum" style="visibility: hidden;"> ${dto.courseNum}</span>
					                  </button>
					                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardScrap">
			                           	 <i class="${dto.userBoardScraped ? 'fas fa-bookmark iconSize':'far fa-bookmark iconSize'}"  style="color: #424242;"></i>
	                           	 			<span class="courseNum" style="visibility: hidden;"> ${dto.courseNum}</span>
					                  </button>
					               </div>
								</div>
		              		<span class="imtext5"># ${dto.themeName}</span> <span class="imtext3">지역 : ${dto.cityName}</span> <span class="imtext4">기간
				                  : ${dto.period}</span>
				             </div>
			               <div class="card-body">
			                  <div class="p-3 area_course">
			                     <ul>
			                     	<c:forEach var="citydto" items="${dto.travelCourseList}" varStatus="status">
										<li><span>${citydto.placeName}</span></li>
				                    </c:forEach>
			                     </ul>
			                  </div>
			               </div>
			            </div>
			         </c:forEach>
               </div>
            </div>
            
            <div class="row" style="margin-top: 10px;">
                   <div class="col">
	                 <c:forEach var="dto" items="${list}" varStatus="status" begin="6" end="6">
			            <div class="card w-100 title4" >
			            	<div style="background: black;">
				               <img src="${pageContext.request.contextPath}/uploads/course/${dto.saveFileName}" alt="${dto.subject}" class="card-img-top imgSize" style="opacity: 0.9;"> 
				               <span class="imtext2">${dto.subject}</span>
		              			 <div class="btnBack" >
					               <div class="btn-group" style="background: none;" role="group"
					                  aria-label="Basic outlined example">
					                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardLike">
	                           			 <i class="${dto.userBoardLiked ? 'fas fa-heart iconSize':'far fa-heart iconSize'}" style="color: red;"></i>
			                           	 <span class="courseNum" style="visibility: hidden;"> ${dto.courseNum}</span>
					                  </button>
					                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardScrap">
			                           	 <i class="${dto.userBoardScraped ? 'fas fa-bookmark iconSize':'far fa-bookmark iconSize'}"  style="color: #424242;"></i>
	                           	 			<span class="courseNum" style="visibility: hidden;"> ${dto.courseNum}
					                  </button>
					               </div>
								</div>
		              			<span class="imtext5"># ${dto.themeName}</span> <span class="imtext3">지역 : ${dto.cityName}</span> <span class="imtext4">기간
				                  : ${dto.period}</span>
				             </div>
			               <div class="card-body">
			                  <div class="p-3 area_course">
			                     <ul>
			                     	<c:forEach var="citydto" items="${dto.travelCourseList}" varStatus="status">
										<li><span>${citydto.placeName}</span></li>
				                    </c:forEach>
			                     </ul>
			                  </div>
			               </div>
			            </div>
			         </c:forEach>
               	</div>
            </div>
            
         </div>

         <div class="col">
            <c:forEach var="dto" items="${list}" varStatus="status" begin="1" end="1">
	            <div class="card w-100 title4" >
	            	<div style="background: black;">
		               <img src="${pageContext.request.contextPath}/uploads/course/${dto.saveFileName}" alt="${dto.subject}" class="card-img-top imgSize" style="opacity: 0.9;"> 
		               <span class="imtext2">${dto.subject}</span>
		              	 <div class="btnBack" >
			               <div class="btn-group" style="background: none;" role="group"
			                  aria-label="Basic outlined example">
			                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardLike">
	                           	 <i class="${dto.userBoardLiked ? 'fas fa-heart iconSize':'far fa-heart iconSize'}" style="color: red;"></i>
	                           	 <span class="courseNum" style="visibility: hidden;"> ${dto.courseNum}</span>
			                  </button>
			                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardScrap">
	                           	 <i class="${dto.userBoardScraped ? 'fas fa-bookmark iconSize':'far fa-bookmark iconSize'}"  style="color: #424242;"></i>
	                           	 			<span class="courseNum" style="visibility: hidden;"> ${dto.courseNum}
			                  </button>
			               </div>
						</div>
		              <span class="imtext5"># ${dto.themeName}</span> <span class="imtext3">지역 : ${dto.cityName}</span> <span class="imtext4">기간
		                  : ${dto.period}</span>
		             </div>
	               <div class="card-body">
	                  <div class="p-3 area_course">
	                     <ul>
	                     	<c:forEach var="citydto" items="${dto.travelCourseList}" varStatus="status">
								<li><span>${citydto.placeName}</span></li>
		                    </c:forEach>
	                     </ul>
	                  </div>
	               </div>
	            </div>
	         </c:forEach>

            <div class="row" style="margin-top: 10px;">
               <div class="col">
					<c:forEach var="dto" items="${list}" varStatus="status" begin="4" end="4">
			            <div class="card w-100 title4" >
			            	<div style="background: black;">
				               <img src="${pageContext.request.contextPath}/uploads/course/${dto.saveFileName}" alt="${dto.subject}" class="card-img-top imgSize" style="opacity: 0.9;"> 
				               <span class="imtext2">${dto.subject}</span>
		               			<div class="btnBack" >
					               <div class="btn-group" style="background: none;" role="group"
					                  aria-label="Basic outlined example">
					                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardLike">
			                           	 <i class="${dto.userBoardLiked ? 'fas fa-heart iconSize':'far fa-heart iconSize'}" style="color: red;"></i>
			                           	 <span class="courseNum" style="visibility: hidden;"> ${dto.courseNum}</span>
					                  </button>
					                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardScrap">
			                           	 <i class="${dto.userBoardScraped ? 'fas fa-bookmark iconSize':'far fa-bookmark iconSize'}"  style="color: #424242;"></i>
	                           	 			<span class="courseNum" style="visibility: hidden;"> ${dto.courseNum}
					                  </button>
					               </div>
								</div>
		             			 <span class="imtext5"># ${dto.themeName}</span> <span class="imtext3">지역 : ${dto.cityName}</span> <span class="imtext4">기간
				                  : ${dto.period}</span>
				             </div>
			               <div class="card-body">
			                  <div class="p-3 area_course">
			                     <ul>
			                     	<c:forEach var="citydto" items="${dto.travelCourseList}" varStatus="status">
										<li><span>${citydto.placeName}</span></li>
				                    </c:forEach>
			                     </ul>
			                  </div>
			               </div>
			            </div>
			         </c:forEach>
               </div>
            </div>
            
                           <div class="row" style="margin-top: 10px;">
                   <div class="col">
	                 <c:forEach var="dto" items="${list}" varStatus="status" begin="7" end="7">
			            <div class="card w-100 title4" >
			            	<div style="background: black;">
				               <img src="${pageContext.request.contextPath}/uploads/course/${dto.saveFileName}" alt="${dto.subject}" class="card-img-top imgSize" style="opacity: 0.9;"> 
				               <span class="imtext2">${dto.subject}</span>
		               			 <div class="btnBack" >
					               <div class="btn-group" style="background: none;" role="group"
					                  aria-label="Basic outlined example">
					                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardLike">
			                           	 <i class="${dto.userBoardLiked ? 'fas fa-heart iconSize':'far fa-heart iconSize'}" style="color: red;"></i>
			                           	 <span class="courseNum" style="visibility: hidden;"> ${dto.courseNum}</span>
					                  </button>
					                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardScrap">
			                           	 <i class="${dto.userBoardScraped ? 'fas fa-bookmark iconSize':'far fa-bookmark iconSize'}"  style="color: #424242;"></i>
	                           	 			<span class="courseNum" style="visibility: hidden;"> ${dto.courseNum}
					                  </button>
					               </div>
								</div>
		            			<span class="imtext5"># ${dto.themeName}</span> <span class="imtext3">지역 : ${dto.cityName}</span> <span class="imtext4">기간
				                  : ${dto.period}</span>
				             </div>
			               <div class="card-body">
			                  <div class="p-3 area_course">
			                     <ul>
			                     	<c:forEach var="citydto" items="${dto.travelCourseList}" varStatus="status">
										<li><span>${citydto.placeName}</span></li>
				                    </c:forEach>
			                     </ul>
			                  </div>
			               </div>
			            </div>
			         </c:forEach>
               	</div>
            </div>

         </div>

         <div class="col">
           <c:forEach var="dto" items="${list}" varStatus="status" begin="2" end="2">
	            <div class="card w-100 title4" >
	            	<div style="background: black;">
		               <img src="${pageContext.request.contextPath}/uploads/course/${dto.saveFileName}" alt="${dto.subject}" class="card-img-top imgSize" style="opacity: 0.9;"> 
		               <span class="imtext2">${dto.subject}</span>
		              	 <div class="btnBack" >
			               <div class="btn-group" style="background: none;" role="group"
			                  aria-label="Basic outlined example">
			                 <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardLike">
	                           	 <i class="${dto.userBoardLiked ? 'fas fa-heart iconSize':'far fa-heart iconSize'}" style="color: red;"></i>
	                           	 <span class="courseNum" style="visibility: hidden;"> ${dto.courseNum}</span>
			                  </button>
			                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardScrap">
	                           	 <i class="${dto.userBoardScraped ? 'fas fa-bookmark iconSize':'far fa-bookmark iconSize'}"  style="color: #424242;"></i>
                       	 			<span class="courseNum" style="visibility: hidden;"> ${dto.courseNum}
			                  </button>
			               </div>
						</div>
		              <span class="imtext5"># ${dto.themeName}</span> <span class="imtext3">지역 : ${dto.cityName}</span> <span class="imtext4">기간
		                  : ${dto.period}</span>
		             </div>
	               <div class="card-body">
	                  <div class="p-3 area_course">
	                     <ul>
	                     	<c:forEach var="citydto" items="${dto.travelCourseList}" varStatus="status">
								<li><span>${citydto.placeName}</span></li>
		                    </c:forEach>
	                     </ul>
	                  </div>
	               </div>
	            </div>
	         </c:forEach>

            <div class="row" style="margin-top: 10px;">
               <div class="col">
	                 <c:forEach var="dto" items="${list}" varStatus="status" begin="5" end="5">
			            <div class="card w-100 title4" >
			            	<div style="background: black;">
				               <img src="${pageContext.request.contextPath}/uploads/course/${dto.saveFileName}" alt="${dto.subject}" class="card-img-top imgSize" style="opacity: 0.9;"> 
				               <span class="imtext2">${dto.subject}</span>
		               			 <div class="btnBack" >
					               <div class="btn-group" style="background: none;" role="group"
					                  aria-label="Basic outlined example">
					                 <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardLike">
			                           	 <i class="${dto.userBoardLiked ? 'fas fa-heart iconSize':'far fa-heart iconSize'}" style="color: red;"></i>
			                           	 <span class="courseNum" style="visibility: hidden;"> ${dto.courseNum}</span>
					                  </button>
					                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardScrap">
			                           	 <i class="${dto.userBoardScraped ? 'fas fa-bookmark iconSize':'far fa-bookmark iconSize'}"  style="color: #424242;"></i>
	                           	 			<span class="courseNum" style="visibility: hidden;"> ${dto.courseNum}
					                  </button>
					               </div>
								</div>
		             			 <span class="imtext5"># ${dto.themeName}</span> <span class="imtext3">지역 : ${dto.cityName}</span> <span class="imtext4">기간
				                  : ${dto.period}</span>
				             </div>
			               <div class="card-body">
			                  <div class="p-3 area_course">
			                     <ul>
			                     	<c:forEach var="citydto" items="${dto.travelCourseList}" varStatus="status">
										<li><span>${citydto.placeName}</span></li>
				                    </c:forEach>
			                     </ul>
			                  </div>
			               </div>
			            </div>
			         </c:forEach>
               </div>
              </div>
               
               <div class="row" style="margin-top: 10px;">
                   <div class="col">
	                 <c:forEach var="dto" items="${list}" varStatus="status" begin="8" end="8">
			            <div class="card w-100 title4" >
			            	<div style="background: black;">
				               <img src="${pageContext.request.contextPath}/uploads/course/${dto.saveFileName}" alt="${dto.subject}" class="card-img-top imgSize" style="opacity: 0.9;"> 
				               <span class="imtext2">${dto.subject}</span>
		              			 <div class="btnBack" >
					               <div class="btn-group" style="background: none;" role="group"
					                  aria-label="Basic outlined example">
					                 <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardLike">
			                           	 <i class="${dto.userBoardLiked ? 'fas fa-heart iconSize':'far fa-heart iconSize'}" style="color: red;"></i>
			                           	 <span class="courseNum" style="visibility: hidden;"> ${dto.courseNum}</span>
					                  </button>
					                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1  btnIcons boardScrap">
			                           	 <i class="${dto.userBoardScraped ? 'fas fa-bookmark iconSize':'far fa-bookmark iconSize'}"  style="color: #424242;"></i>
	                           	 			<span class="courseNum" style="visibility: hidden;"> ${dto.courseNum}
					                  </button>
					               </div>
								</div>
		              			<span class="imtext5"># ${dto.themeName}</span> <span class="imtext3">지역 : ${dto.cityName}</span> <span class="imtext4">기간
				                  : ${dto.period}</span>
				             </div>
			               <div class="card-body">
			                  <div class="p-3 area_course">
			                     <ul>
			                     	<c:forEach var="citydto" items="${dto.travelCourseList}" varStatus="status">
										<li><span>${citydto.placeName}</span></li>
				                    </c:forEach>
			                     </ul>
			                  </div>
			               </div>
			            </div>
			         </c:forEach>
               	</div>
            </div>

      </div>
   </div>
   	<div style="margin-top: 100px;"></div>
	<div class="page-box">
		${dataCount == 0 ? "등록된 코스가 없습니다." : paging}
	</div>

</div>

<script type="text/javascript">
var slides = document.querySelector('.slides'),
	slide = document.querySelectorAll('.slides li'),
	currentIdx = 0,
	slideCount = slide.length,
	preBtn = document.querySelector('.prev'),
	slideWidth = 200,
	slideMargin = 30,
	nextBtn = document.querySelector('.next'); 
	
	slides.style.width = '2100px';
	
	function moveSlide(num){
		slides.style.left = -num * 230 + 'px';
		currentIdx = num;
	}
	
	nextBtn.addEventListener('click', function() {
		if(currentIdx < slideCount - 5 ){
			moveSlide(currentIdx + 1);
			console.log(currentIdx);

		} else {
			moveSlide(0);
		}
	});
	preBtn.addEventListener('click', function() {
		if(currentIdx > 0){
			moveSlide(currentIdx - 1);
		} else {
			moveSlide(slideCount - 5);
			console.log(currentIdx);

		}
	});
	
</script>
