<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,600" rel="stylesheet">

	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/dist/hotel/style.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/hotel/slick/slick.css"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/hotel/slick/slick-theme.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/bootstrap5/css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/bootstrap5/icon/bootstrap-icons.css" type="text/css">
					
	<script type="text/javascript" src="${pageContext.request.contextPath}/dist/jquery/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/dist/bootstrap5/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/dist/hotel/slick/slick.min.js"></script>
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
.post-slider .next, .post-slider .next1,  .post-slider .next2 {
  position:absolute;
  top:50%;
  right:30px;
  font-size:2em;
  cursor: pointer;
}
.post-slider .prev, .post-slider .prev1,  .post-slider .prev2{
  position:absolute;
  top:50%;
  left:30px;
  font-size:2em;
  cursor: pointer;
}
.post-slider .post-wrapper, .post-slider .post-wrapper1, .post-slider .post-wrapper2{
  width:84%;
  height:350px;
  margin:0px auto;
  overflow: hidden;
  padding:10px 0px 10px 0px;
}
.post-slider .post-wrapper .post, .post-slider .post-wrapper1 .post,  .post-slider .post-wrapper2 .post{
  width:300px;
  height:300px;
  margin:0px 10px;
  display:inline-block;
  background:white;
  border-radius: 5px;
}
.post-slider .post-wrapper .post .post-info, .post-slider .post-wrapper1 .post .post-info, .post-slider .post-wrapper2 .post .post-info {
  font-size:15px;
  height:30%;
  padding-left:10px;
}
.post-slider .post-wrapper .post .slider-image, .post-slider .post-wrapper1 .post .slider-image, .post-slider .post-wrapper2 .post .slider-image{
  width:100%;
  height:175px;
  border-top-left-radius:5px;
  border-top-right-radius:5px;
}
</style>
</head>
<body>
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
						<div style="margin-left: 20px; padding-top: 15px;"> <h3>숙소 검색 </h3> </div>
						<form>
							<div class="row no-margin">
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">숙소명</span>
										<input class="form-control" type="text" placeholder="지역 또는 숙소이름을 검색">
									</div>
								</div>
								<div class="col-md-6">
									<div class="row no-margin">
										<div class="col-md-5">
											<div class="form-group">
												<span class="form-label">Check In</span>
												<input class="form-control" type="date" required>
											</div>
										</div>
										<div class="col-md-5">
											<div class="form-group">
												<span class="form-label">Check out</span>
												<input class="form-control" type="date" required>
											</div>
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<span class="form-label">인원</span>
												<select class="form-control">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
													<option>6</option>
												</select>
												<span class="select-arrow"></span>
											</div>
										</div>
										
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-btn">
										<button class="submit-btn">검색</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<div class="page-wrapper" style="position:relative;">
      <!--page slider -->
      <div class="post-slider">
        <h3 class="silder-title">조회순</h3>
        <button class="prev"> <i class="bi bi-chevron-left"></i>  </button>
        <button class="next"> <i class="bi bi-chevron-right"></i>  </button>
        <div class="post-wrapper">
          <div class="post">
            <img src="${pageContext.request.contextPath}/resources/images/hotel/1.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#" class="post-subject">숙소명</a></h4>
              <i class="far fa-user" style="height:10%;">설명</i>
              <p>별점 ★★★★☆</p>
            </div>
          </div>
          <div class="post">
            <img src="${pageContext.request.contextPath}/resources/images/hotel/3.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#"> 숙소명</a></h4>
              <i class="far fa-user" style="height:10%;">설명</i>
              <p>별점 ★★★★☆</p>
            </div>
          </div>
          <div class="post">
            <img src="${pageContext.request.contextPath}/resources/images/hotel/2.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">숙소명</a></h4>
              <i class="far fa-user" style="height:10%;">설명</i>
              <p>별점 ★★★★☆</p>
            </div>
          </div>
          <div class="post">
            <img src="${pageContext.request.contextPath}/resources/images/hotel/1.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">숙소명</a></h4>
              <i class="far fa-user" style="height:10%;">설명</i>
              <p>별점 ★★★★☆</p>
            </div>
          </div>
        </div>
      </div>
      <!--post slider-->
    </div>
    
    <div class="container mb-2 pt-3">
		<div id="carouselImageCaptions" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselImageCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="첫번째 이미지"></button>
				<button type="button" data-bs-target="#carouselImageCaptions" data-bs-slide-to="1" aria-current="true" aria-label="두번째 이미지"></button>
				<button type="button" data-bs-target="#carouselImageCaptions" data-bs-slide-to="2" aria-current="true" aria-label="세번째 이미지"></button>
			</div>
			
			<div class="carousel-inner" style="height: 200px;">
					<div class="carousel-item active" style="height: 200px;">
						<img src="${pageContext.request.contextPath}/resources/images/hotel/1.jpg" class="d-block w-100">
						<div class="carousel-caption d-none d-md-block">
							<h5>광고문의</h5>
						</div>
					</div>
					
					<div class="carousel-item" style="height: 200px;">
						<img src="${pageContext.request.contextPath}/resources/images/hotel/2.jpg" class="d-block w-100">
						<div class="carousel-caption d-none d-md-block">
							<h5>마일리지 이벤트</h5>
						</div>
					</div>
					
					<div class="carousel-item" style="height: 200px;">
						<img src="${pageContext.request.contextPath}/resources/images/hotel/3.jpg" class="d-block w-100">
						<div class="carousel-caption d-none d-md-block">
							<h5>기타 이벤트</h5>
						</div>
					</div>
			</div>
			
			<button class="carousel-control-prev" type="button" data-bs-target="#carouselImageCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button" data-bs-target="#carouselImageCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>					
		</div>
    </div>
    
    
<div class="page-wrapper" style="position:relative;">
      <!--page slider -->
      <div class="post-slider">
        <h3 class="silder-title">찜순</h3>
        <button class="prev1"> <i class="bi bi-chevron-left"></i>  </button>
        <button class="next1"> <i class="bi bi-chevron-right"></i>  </button>
        <div class="post-wrapper1">
          <div class="post">
            <img src="${pageContext.request.contextPath}/resources/images/hotel/1.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#" class="post-subject">숙소명 </a></h4>
              <i class="far fa-user" style="height:10%;">설명</i>
              <p>별점 ★★★★☆</p>
            </div>
          </div>
          <div class="post">
            <img src="${pageContext.request.contextPath}/resources/images/hotel/2.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#"> 숙소명</a></h4>
              <i class="far fa-user" style="height:10%;">설명</i>
              <p>별점 ★★★★☆</p>
            </div>
          </div>
          <div class="post">
            <img src="${pageContext.request.contextPath}/resources/images/hotel/3.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">숙소명</a></h4>
              <i class="far fa-user" style="height:10%;">설명</i>
              <p>별점 ★★★★☆</p>
            </div>
          </div>
          <div class="post">
            <img src="${pageContext.request.contextPath}/resources/images/hotel/1.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">숙소명</a></h4>
              <i class="far fa-user" style="height:10%;">설명</i>
              <p>별점 ★★★★☆</p>
            </div>
          </div>
        </div>
      </div>
      <!--post slider-->
    </div>
    <div class="page-wrapper" style="position:relative;">
      <!--page slider -->
      <div class="post-slider">
        <h3 class="silder-title">평점순</h3>
        <button class="prev2"> <i class="bi bi-chevron-left"></i>  </button>
        <button class="next2"> <i class="bi bi-chevron-right"></i>  </button>
        <div class="post-wrapper2">
          <div class="post">
            <img src="${pageContext.request.contextPath}/resources/images/hotel/1.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#" class="post-subject">숙소명 </a></h4>
              <i class="far fa-user" style="height:10%;">설명</i>
              <p>별점 ★★★★☆</p>
            </div>
          </div>
          <div class="post">
            <img src="${pageContext.request.contextPath}/resources/images/hotel/2.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">숙소명</a></h4>
              <i class="far fa-user" style="height:10%;">설명</i>
              <p>별점 ★★★☆☆</p>
            </div>
          </div>
          <div class="post">
            <img src="${pageContext.request.contextPath}/resources/images/hotel/3.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">숙소명</a></h4>
              <i class="far fa-user" style="height:10%;">설명</i>
              <p>별점 ★★★☆☆</p>
            </div>
          </div>
          <div class="post">
            <img src="${pageContext.request.contextPath}/resources/images/hotel/1.jpg" class="slider-image">
            <div class="post-info">
              <h4><a href="#">숙소명</a></h4>
              <i class="far fa-user" style="height:10%;">설명</i>
              <p>별점 ★★★☆☆</p>
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
	
$('.post-wrapper2').slick({
	  slidesToShow: 3,
	  slidesToScroll: 1,
	  autoplay: true,
	  autoplaySpeed: 2000,
	  nextArrow:$('.next2'),
	  prevArrow:$('.prev2'),
	});

</script>
</body>
</html>