<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet"
   href="${pageContext.request.contextPath}/dist/travelCourse/travelCourse1.css"
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

.slides {
	transition:left 0.5s ease-out;
	width: 
}

</style>



<div class="container-fluid" style="padding: 0; margin: 0 auto;">

   <div class="container-fluid"
      style="height: 300px; width: 100%; background: #0dcaf0;">
      <div class="input1">
         <div class="search-bar Small shadow align-middle"
            style="max-width: 470px;">
            <div class="searchImg">
               <img alt="icon"
                  src="https://dffoxz5he03rp.cloudfront.net/icons/ic_search_sm_white.svg"
                  class="searchIcon">
            </div>
            <input class="search-bar__input text-white search" type="text"
               style="height: 25px;" placeholder="도시나 상품을 검색해보세요">
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
                  		<li>	                    
		                  	 <a href="#" class="tagImg" 
		                        style="background-image: url(${pageContext.request.contextPath}/resources/img/travelCourse/1.jpg); ">
		                        <div class="title2_1"></div>
		                        <h3>
		                           <span>가족</span>
		                        </h3>
		                     </a> 
	                     </li>
	                     <li>
		                     <a href="#" class="tagImg" 
		                        style="background-image: url(${pageContext.request.contextPath}/resources/img/travelCourse/2.JPG); ">
		                        <div class="title2_1"></div>
		                        <h3>
		                           <span>혼자여행</span>
		                        </h3>
		                     </a> 
		                  </li>
		                  <li>
		                     <a href="#" class="tagImg" 
		                        style="background-image: url(${pageContext.request.contextPath}/resources/img/travelCourse/3.jpg); ">
		                        <div class="title2_1"></div>
		                        <h3>
		                           <span>도보코스</span>
		                        </h3>
		                     </a> 
		                  </li>
		                  <li>
		                     <a href="#" class="tagImg"   
		                        style="background-image: url(${pageContext.request.contextPath}/resources/img/travelCourse/4.jpg); ">
		                        <div class="title2_1"></div>
		                        <h3>
		                           <span>힐링코스</span>
		                        </h3>
		                     </a>
		                  </li>
		                  <li>
		                   	 <a href="#" class="tagImg"
		                         style="background-image: url(${pageContext.request.contextPath}/resources/img/travelCourse/5.jpg); ">
		                        <div class="title2_1"></div>
		                        <h3>
		                           <span>맛코스</span>
		                        </h3>
		                     </a>
		                   </li>
		                   <li>
		                      <a href="#" class="tagImg"
		                        style="background-image: url(${pageContext.request.contextPath}/resources/img/travelCourse/6.jpg); ">
		                        <div class="title2_1"></div>
		                        <h3>
		                           <span>캠핑코스</span>
		                        </h3>
		                     </a>
		                   </li>
		                   <li>
		                      <a href="#" class="tagImg"
		                        style="background-image: url(${pageContext.request.contextPath}/resources/img/travelCourse/6.jpg); ">
		                        <div class="title2_1"></div>
		                        <h3>
		                           <span>캠핑코스2</span>
		                        </h3>
		                     </a>
		                   </li>
		                   <li>
		                      <a href="#" class="tagImg"
		                        style="background-image: url(${pageContext.request.contextPath}/resources/img/travelCourse/6.jpg); ">
		                        <div class="title2_1"></div>
		                        <h3>
		                           <span>캠핑코스3</span>
		                        </h3>
		                     </a>
		                   </li>	
		                   <li>
		                      <a href="#" class="tagImg"
		                        style="background-image: url(${pageContext.request.contextPath}/resources/img/travelCourse/6.jpg); ">
		                        <div class="title2_1"></div>
		                        <h3>
		                           <span>캠핑코스4</span>
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

<div class="container mb-2 pt-3 title3">
   <div class="box mt-5">
      <div class="row text-dark g-3 text-center m-9 title3_2">
         <div style="margin-bottom: 20px;">
            <button
               class="btn shadow-sm d-flex justify-content-start rounded-3 title4_1 btn_make"
               style="float: left;">내 코스 만들기</button>

            <select class="form-select d-flex justify-content-end title3_3"   aria-label="Default select example">
               <option selected>10개씩 보기</option>
               <option value="1">4개씩 보기</option>
               <option value="2">20개씩 보기</option>
            </select> <select class="form-select d-flex justify-content-end title3_4"
               aria-label="Default select example">
               <option selected>스크랩순</option>
               <option value="1">좋아요순</option>
               <option value="2">최신순</option>
               <option value="3">조회순</option>
            </select>
         </div>
         <div class="col">
            <div class="card w-100 title4" >
               <img src="${pageContext.request.contextPath}/resources/img/travelCourse/2_1.jpg" class="card-img-top" alt="..."> <span
                  class="imtext2">청와대</span>
               <div class="btn-group" style="background: none;" role="group"
                  aria-label="Basic outlined example">
                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1">
                     <i class="far fa-heart" style="color: red;"></i>&nbsp;좋아요
                  </button>
                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1">
                     <i class="far fa-bookmark" style="color: blue;"></i>&nbsp;스크랩
                  </button>
               </div>
               <span class="imtext3">지역 : 서울 종로구</span> <span class="imtext4">총거리
                  : 3.8km</span>
               <div class="card-body">
                  <div class="p-3 area_course">
                     <ul>
                        <li><span>청와대 앞길</span></li>
                        <li><span>명성황후 조난지</span></li>
                        <li><span>팔레 드 서울</span></li>
                        <li><span>국립민속박물관</span></li>
                        <li><span>한국전통주연구소</span></li>
                        <li><span>남도분식</span></li>
                        <li><span>황학정</span></li>
                     </ul>
                  </div>
               </div>
            </div>

            <div class="row" style="margin-top: 10px;">
               <div class="col">
                  <div class="card w-100 title4">
               <img src="${pageContext.request.contextPath}/resources/img/travelCourse/2_1.jpg" class="card-img-top" alt="..."> <span
                        class="imtext2">청와대</span>
                     <div class="btn-group" style="background: none;" role="group"
                        aria-label="Basic outlined example">
                        <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1">
                           <i class="far fa-heart" style="color: red;"></i>&nbsp;좋아요
                        </button>
                        <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1">
                           <i class="far fa-bookmark" style="color: blue;"></i>&nbsp;스크랩
                        </button>
                     </div>
                     <span class="imtext3">지역 : 서울 종로구</span> <span class="imtext4">총거리
                        : 3.8km</span>
                     <div class="card-body">
                        <div class="p-3 area_course">
                           <ul>
                              <li><span>청와대 앞길</span></li>
                              <li><span>명성황후 조난지</span></li>
                              <li><span>팔레 드 서울</span></li>
                              <li><span>국립민속박물관</span></li>
                              <li><span>한국전통주연구소</span></li>
                              <li><span>남도분식</span></li>
                              <li><span>황학정</span></li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>

         <div class="col">
            <div class="card w-100 title4">
               <img src="${pageContext.request.contextPath}/resources/img/travelCourse/2_2.jpg" class="card-img-top" alt="..."> <span
                  class="imtext2">청와대</span>
               <div class="btn-group" style="background: none;" role="group"
                  aria-label="Basic outlined example">
                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1">
                     <i class="far fa-heart" style="color: red;"></i>&nbsp;좋아요
                  </button>
                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1">
                     <i class="far fa-bookmark" style="color: blue;"></i>&nbsp;스크랩
                  </button>
               </div>
               <span class="imtext3">지역 : 서울 종로구</span> <span class="imtext4">총거리
                  : 3.8km</span>
               <div class="card-body">
                  <div class="p-3 area_course">
                     <ul>
                        <li><span>유기방가옥-해미읍성 동한</span></li>
                        <li><span>개심사(서산)</span></li>
                        <li><span>서산해미읍성축제</span></li>
                        <li><span>간월암(서산)</span></li>
                        <li><span>안면도</span></li>
                     </ul>
                  </div>
               </div>
            </div>

            <div class="row" style="margin-top: 10px;">
               <div class="col">
                  <div class="card w-100 title4">
               <img src="${pageContext.request.contextPath}/resources/img/travelCourse/2_2.jpg" class="card-img-top" alt="..."> <span
                        class="imtext2">청와대</span>
                     <div class="btn-group" style="background: none;" role="group"
                        aria-label="Basic outlined example">
                        <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1">
                           <i class="far fa-heart" style="color: red;"></i>&nbsp;좋아요
                        </button>
                        <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1">
                           <i class="far fa-bookmark" style="color: blue;"></i>&nbsp;스크랩
                        </button>
                     </div>
                     <span class="imtext3">지역 : 서울 종로구</span> <span class="imtext4">총거리
                        : 3.8km</span>
                     <div class="card-body">
                        <div class="p-3 area_course">
                           <ul>
                              <li><span>청와대 앞길</span></li>
                              <li><span>명성황후 조난지</span></li>
                              <li><span>팔레 드 서울</span></li>
                              <li><span>국립민속박물관</span></li>
                              <li><span>한국전통주연구소</span></li>
                              <li><span>남도분식</span></li>
                              <li><span>황학정</span></li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>

         </div>

         <div class="col">
            <div class="card w-100 title4">
               <img src="${pageContext.request.contextPath}/resources/img/travelCourse/2_3.jpg" class="card-img-top" alt="..."> <span
                  class="imtext2">청와대</span>
               <div class="btn-group" style="background: none;" role="group"
                  aria-label="Basic outlined example">
                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1">
                     <i class="far fa-heart" style="color: red;"></i>&nbsp;좋아요
                  </button>
                  <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1">
                     <i class="far fa-bookmark" style="color: blue;"></i>&nbsp;스크랩
                  </button>
               </div>
               <span class="imtext3">지역 : 서울 종로구</span> <span class="imtext4">총거리
                  : 3.8km</span>
               <div class="card-body">
                  <div class="p-3 area_course">
                     <ul>
                        <li><span>세종호수공원 일원</span></li>
                        <li><span>농업회사법인주식회사태신목장예산지점</span></li>
                        <li><span>서산 유기방가옥</span></li>
                        <li><span>신두리사구센터</span></li>
                        <li><span>천리포수목원</span></li>
                        <li><span>2022 태안 세계튤립꽃박람회</span></li>
                     </ul>
                  </div>
               </div>
            </div>

            <div class="row" style="margin-top: 10px;">
               <div class="col">
                  <div class="card w-100 title4">
               <img src="${pageContext.request.contextPath}/resources/img/travelCourse/2_3.jpg" class="card-img-top" alt="..."> <span
                        class="imtext2">청와대</span>
                     <div class="btn-group" style="background: none;" role="group"
                        aria-label="Basic outlined example">
                        <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1">
                           <i class="far fa-heart" style="color: red;"></i>&nbsp;좋아요
                        </button>
                        <button type="button" class="btn  btn-outline-light shadow-sm btn1 title4_1">
                           <i class="far fa-bookmark" style="color: blue;"></i>&nbsp;스크랩
                        </button>
                     </div>
                     <span class="imtext3">지역 : 서울 종로구</span> <span class="imtext4">총거리
                        : 3.8km</span>
                     <div class="card-body">
                        <div class="p-3 area_course">
                           <ul>
                              <li><span>청와대 앞길</span></li>
                              <li><span>명성황후 조난지</span></li>
                              <li><span>팔레 드 서울</span></li>
                              <li><span>국립민속박물관</span></li>
                              <li><span>한국전통주연구소</span></li>
                              <li><span>남도분식</span></li>
                              <li><span>황학정</span></li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>

      </div>
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
