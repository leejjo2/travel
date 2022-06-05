<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
				
<script type="text/javascript" src="${pageContext.request.contextPath}/dist/jquery/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/dist/bootstrap5/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/dist/slick/slick.min.js"></script>
<style type="text/css">
.post-slider{
  width:70%;
  margin:0px auto;
  position:relative;
}
.post-slider .silder-title{
  text-align:center;
  margin:30px auto;
}
.post-slider .next, .post-slider .next1 {
  position:absolute;
  top:50%;
  right:30px;
  font-size:2em;
  cursor: pointer;
}
.post-slider .prev, .post-slider .prev1{
  position:absolute;
  top:50%;
  left:30px;
  font-size:2em;
  cursor: pointer;
}
.post-slider .post-wrapper, .post-slider .post-wrapper1{
  width:84%;
  height:350px;
  margin:0px auto;
  overflow: hidden;
  padding:10px 0px 10px 0px;
}
.post-slider .post-wrapper .post, .post-slider .post-wrapper1 .post{
  width:300px;
  height:300px;
  margin:0px 10px;
  display:inline-block;
  background:white;
  border-radius: 5px;
}
.post-slider .post-wrapper .post .post-info, .post-slider .post-wrapper1 .post .post-info{
  font-size:15px;
  height:30%;
  padding-left:10px;
}
.post-slider .post-wrapper .post .slider-image, .post-slider .post-wrapper1 .post .slider-image{
  width:100%;
  height:175px;
  border-top-left-radius:5px;
  border-top-right-radius:5px;
}
</style>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/slick/slick-theme.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/hotel/hotelList.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/bootstrap5/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/bootstrap5/icon/bootstrap-icons.css" type="text/css">

<div id="booking" class="section">
    <div class="section-center">
        <div class="container">
            <div class="row">
                <div class="col-md-7 col-md-push-5">
                    <div class="booking-cta">
                        <h1>숙소예약</h1>
                        <p>인기 있는 숙소를 예약해보세요.
                        </p>
                    </div>
                </div>

				<div class="col-md-4 col-md-pull-7">
                    <div class="booking-form">
                        <form>
                        	<div class="form-group">
                                <span class="form-label">숙소 검색</span>
                            </div>
                            <div class="form-group">
                                <span class="form-label">지역</span>
                                <input class="form-control" type="text" placeholder="지역 또는 호텔 이름을 검색해보세요">
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <span class="form-label">Check In</span>
                                        <input class="form-control" type="date" required>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <span class="form-label">Check out</span>
                                        <input class="form-control" type="date" required>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <span class="form-label">성인</span>
                                        <select class="form-control">
                                            <option>0</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                            <option>6</option>
                                            <option>7</option>
                                        </select>
                                        <span class="select-arrow"></span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <span class="form-label">어린이</span>
                                        <select class="form-control">
                                            <option>0</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                            <option>6</option>
                                            <option>7</option>
                                        </select>
                                        <span class="select-arrow"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-btn">
                                <button class="submit-btn">검색</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="page-wrapper" style="position:relative;">
      <!--page slider -->
      <div class="post-slider">
        <h2 class="silder-title">조회수 순</h2>
        <button class="prev"> <i class="bi bi-chevron-left"></i>  </button>
        <button class="next"> <i class="bi bi-chevron-right"></i>  </button>
        <div class="post-wrapper">
          <div class="post">
            <img src="img/1.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#" class="post-subject">제목 </a></h4>
              <i class="far fa-user" style="height:10%;">내용</i>
            </div>
          </div>
          <div class="post">
            <img src="img/2.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#"> 제목 </a></h4>
              <i class="far fa-user" style="height:10%;">내용</i>
            </div>
          </div>
          <div class="post">
            <img src="img/3.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">제목 </a></h4>
              <i class="far fa-user" style="height:10%;">내용</i>
            </div>
          </div>
          <div class="post">
            <img src="img/1.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">제목</a></h4>
              <i class="far fa-user" style="height:10%;">내용</i>
            </div>
          </div>
        </div>
      </div>
      <!--post slider-->
</div>
<div class="page-wrapper" style="position:relative;">
      <!--page slider -->
      <div class="post-slider">
        <h2 class="silder-title">찜 순</h2>
        <button class="prev"> <i class="bi bi-chevron-left"></i>  </button>
        <button class="next"> <i class="bi bi-chevron-right"></i>  </button>
        <div class="post-wrapper">
          <div class="post">
            <img src="img/1.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#" class="post-subject">제목 </a></h4>
              <i class="far fa-user" style="height:10%;">내용</i>
            </div>
          </div>
          <div class="post">
            <img src="img/2.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#"> 제목 </a></h4>
              <i class="far fa-user" style="height:10%;">내용</i>
            </div>
          </div>
          <div class="post">
            <img src="img/3.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">제목 </a></h4>
              <i class="far fa-user" style="height:10%;">내용</i>
            </div>
          </div>
          <div class="post">
            <img src="img/1.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">제목</a></h4>
              <i class="far fa-user" style="height:10%;">내용</i>
            </div>
          </div>
        </div>
      </div>
      <!--post slider-->
</div>



<div class="page-wrapper" style="position:relative;">
      <!--page slider -->
      <div class="post-slider">
        <h2 class="silder-title">평점 순</h2>
        <button class="prev"> <i class="bi bi-chevron-left"></i>  </button>
        <button class="next"> <i class="bi bi-chevron-right"></i>  </button>
        <div class="post-wrapper">
          <div class="post">
            <img src="img/1.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#" class="post-subject">제목 </a></h4>
              <i class="far fa-user" style="height:10%;">내용</i>
            </div>
          </div>
          <div class="post">
            <img src="img/2.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#"> 제목 </a></h4>
              <i class="far fa-user" style="height:10%;">내용</i>
            </div>
          </div>
          <div class="post">
            <img src="img/3.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">제목 </a></h4>
              <i class="far fa-user" style="height:10%;">내용</i>
            </div>
          </div>
          <div class="post">
            <img src="img/1.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">제목</a></h4>
              <i class="far fa-user" style="height:10%;">내용</i>
            </div>
          </div>
        </div>
      </div>
      <!--post slider-->
</div>

<div class="row text-center" style="width: 100%">
  <div style="width: 30%; float:none; margin:0 auto;" >
         <button class="btn btn-primary" style="width: 100%; margin-bottom: 30px;">더보기</button>
  </div>
</div>

<script type="text/javascript">
$('.post-wrapper').slick({
  slidesToShow: 3,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 2000,
  nextArrow:$('.next'),
  prevArrow:$('.prev'),
});

$('.post-wrapper1').slick({
	  slidesToShow: 3,
	  slidesToScroll: 1,
	  autoplay: true,
	  autoplaySpeed: 2000,
	  nextArrow:$('.next1'),
	  prevArrow:$('.prev1'),
	});

</script>