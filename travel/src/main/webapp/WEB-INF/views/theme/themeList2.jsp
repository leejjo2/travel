<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>spring</title>

<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/bootstrap5/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/bootstrap5/icon/bootstrap-icons.css"
	type="text/css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/css/core.css"
	type="text/css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v6.1.0/css/all.css">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/dist/jquery/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/dist/bootstrap5/js/bootstrap.bundle.min.js"></script>



<!-- 슬릭 -->
  <link rel="stylesheet" type="text/css" href="slick/slick.css"/>
  <link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
  
  
  

<style type="text/css">
.box {
	border: 1px solid #ccc;
	margin: 10px auto;
	padding: 10px;
	max-width: 800px;
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
		url("${pageContext.request.contextPath}/bootstrapEx/img/heart.png")
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
		url("${pageContext.request.contextPath}/bootstrapEx/img/heart.png");
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


</head>
<body>
	<div
		class="container-fluid text-white fw-bolder bg-info justify-content-center row">
		<div class="col-10 ">
			<div class="row mb-5">
				<div class="col-7">
					<h2>ourrealtrip</h2>
				</div>
				<div class="col-5 align-content-end row gx-3">
					<span class="col-4 text-center">파트너 등록하기</span> <span
						class="col-4 text-center">로그인</span> <span
						class="col-4 border rounded text-center">회원가입</span>
				</div>
			</div>
			<div class="row pb-2">
				<div class="col-2 text-center">홈</div>
				<div class="col-3 text-center">여행지추천</div>
				<div class="col-2 text-center">예약</div>
				<div class="col-3 text-center">커뮤니티</div>
				<div class="col-2 text-center">날씨</div>
			</div>
		</div>
	</div>


	<div class="container-fluid">
		<div class="container mt-4">
			<div class="row justify-content-center">
				<div class="col-md-9 justify-content-center">
					<h3>테마별 코스 추천</h3>
					<div class="card p-4 mt-3 mb-3 bg-info">
						<div class="justify-content-center px-5">
							<div class="search">
								<input type="text" class="search-input"
									placeholder="가고싶은 테마를 검색하세요 !" name=""> <a href="#"
									class="search-icon"><i class="fa fa-search"></i></a>
							</div>
						</div>
						<div class="row mt-4 g-2 px-4 justify-content-md-center">
							<div class="col-md-2 mb-2">
								<div class="card-inner d-flex flex-column align-items-center">
									<div style="width: 100%; height: 90px">
									<div class="text-left mg-text"
										style="background-image: url('${pageContext.request.contextPath}/bootstrapEx/img/1.jpg'); background-size:cover; width: 100%; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover"
											style="background-image: linear-gradient(166deg, #fff 40%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">전체</span>
									</div>
									</div>
								</div>
							</div>
							<div class="col-md-2 mb-2">
								<div class="card-inner d-flex flex-column align-items-center">
									<div style="width: 100%; height: 90px">
									<div class="text-left mg-text"
										style="background-image: url('${pageContext.request.contextPath}/bootstrapEx/img/1.jpg'); background-size:cover; width: 100%; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover"
											style="background-image: linear-gradient(166deg, #fff 40%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">전체</span>
									</div>
									</div>
								</div>
							</div>
							<div class="col-md-2 mb-2">
								<div class="card-inner d-flex flex-column align-items-center">
									<div style="width: 100%; height: 90px">
									<div class="text-left mg-text"
										style="background-image: url('${pageContext.request.contextPath}/bootstrapEx/img/1.jpg'); background-size:cover; width: 100%; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover"
											style="background-image: linear-gradient(166deg, #fff 40%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">전체</span>
									</div>
									</div>
								</div>
							</div>
							<div class="col-md-2 mb-2">
								<div class="card-inner d-flex flex-column align-items-center">
									<div style="width: 100%; height: 90px">
									<div class="text-left mg-text"
										style="background-image: url('${pageContext.request.contextPath}/bootstrapEx/img/1.jpg'); background-size:cover; width: 100%; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover"
											style="background-image: linear-gradient(166deg, #fff 40%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">전체</span>
									</div>
									</div>
								</div>
							</div>
							<div class="col-md-2 mb-2">
								<div class="card-inner d-flex flex-column align-items-center">
									<div style="width: 100%; height: 90px">
									<div class="text-left mg-text"
										style="background-image: url('${pageContext.request.contextPath}/bootstrapEx/img/1.jpg'); background-size:cover; width: 100%; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover"
											style="background-image: linear-gradient(166deg, #fff 40%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">전체</span>
									</div>
									</div>
								</div>
							</div>
							<div class="col-md-2 mb-2">
								<div class="card-inner d-flex flex-column align-items-center">
									<div style="width: 100%; height: 90px">
									<div class="text-left mg-text"
										style="background-image: url('${pageContext.request.contextPath}/bootstrapEx/img/1.jpg'); background-size:cover; width: 100%; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover"
											style="background-image: linear-gradient(166deg, #fff 40%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">전체</span>
									</div>
									</div>
								</div>
							</div>
							<div class="col-md-2 mb-2">
								<div class="card-inner d-flex flex-column align-items-center">
									<div style="width: 100%; height: 90px">
									<div class="text-left mg-text"
										style="background-image: url('${pageContext.request.contextPath}/bootstrapEx/img/1.jpg'); background-size:cover; width: 100%; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover"
											style="background-image: linear-gradient(166deg, #fff 40%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">전체</span>
									</div>
									</div>
								</div>
							</div>
							<div class="col-md-2 mb-2">
								<div class="card-inner d-flex flex-column align-items-center">
									<div style="width: 100%; height: 90px">
									<div class="text-left mg-text"
										style="background-image: url('${pageContext.request.contextPath}/bootstrapEx/img/1.jpg'); background-size:cover; width: 100%; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover"
											style="background-image: linear-gradient(166deg, #fff 40%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">전체</span>
									</div>
									</div>
								</div>
							</div>
							<div class="col-md-2 mb-2">
								<div class="card-inner d-flex flex-column align-items-center">
									<div style="width: 100%; height: 90px">
									<div class="text-left mg-text"
										style="background-image: url('${pageContext.request.contextPath}/bootstrapEx/img/1.jpg'); background-size:cover; width: 100%; height:100%; margin-right: 6px; border-radius:3px;position:relative;">
										<div class="transparentCover"
											style="background-image: linear-gradient(166deg, #fff 40%, hsla(0, 0%, 100%, 0) 68%); border-radius: 4px; height: 100%; width: 100%;"></div>
										<span class="mg-text"
											style="position: absolute; top: 7px; left: 7px; font-family: sans-serif; font-weight: bold; font-size: 15px;">전체</span>
									</div>
									</div>
								</div>
							</div>
							
							

						</div>

					</div>


					<div id="carouselExampleIndicators" class="carousel slide mb-5"
						data-bs-ride="carousel">
						<div class="carousel-indicators">
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="0" class="active" aria-current="true"
								aria-label="Slide 1"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="1" aria-label="Slide 2"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="2" aria-label="Slide 3"></button>
						</div>
						<div class="carousel-inner" style="height: 200px;">
							<div class="carousel-item active">
								<img src="img/뽀짝.jpg" class="d-block w-100 img-fluid" alt="...">
							</div>
							<div class="carousel-item">
								<img src="img/뽀짝.jpg" class="d-block w-100 img-fluid" alt="...">
							</div>
							<div class="carousel-item">
								<img src="img/뽀짝.jpg" class="d-block w-100 img-fluid" alt="...">
							</div>
						</div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>



					<div class="container w-100">
						<div class="well well-sm">
							<div class="btn-group">
								<a href="#" id="" class="btn btn-default btn-sm"><span
									class=""> </span>등록일 순</a> <a href="#" id=""
									class="btn btn-default btn-sm"><span class=""> </span>조회수 순</a>
								<a href="#" id="" class="btn btn-default btn-sm"><span
									class=""> </span>좋아요 순</a>
							</div>
						</div>
						<div id="products" class="row g-3">

							<div class="col-md-3 col-lg-3 p-2"
								style="height: 300px; text-overflow: ellipsis;">
								<div class="thumbnail"
									style="border: 1px solid #ddd; width: 100%; margin-right: 5px; position: relative;">
									<div class="heart1"></div>
									<img class="w-100 mb-2" src="img/뽀짝.jpg"
										style="border: 1px solid #ddd; height: 150px" alt="" />
									<div class="caption p-2">
										<p class=" mb-1">가족여행 * 부산</p>
										<h5 class=" "
											style="overflow: hidden; text-overflow: ellipsis; width: 100%; height: 48px;">가족과
											함께 떠나는 부산 여행 코스 !</h5>
										<div class="">
											<div class="">
												<i class="fa-solid fa-eye"></i> 조회수 56
											</div>
											<div class="">
												<i class="fa-solid fa-heart"></i> 좋아요 20
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-lg-3 p-2"
								style="height: 300px; text-overflow: ellipsis;">
								<div class="thumbnail"
									style="border: 1px solid #ddd; width: 100%; margin-right: 5px; position: relative;">
									<div class="heart1"></div>
									<img class="w-100 mb-2" src="img/뽀짝.jpg"
										style="border: 1px solid #ddd; height: 150px" alt="" />
									<div class="caption p-2">
										<p class=" mb-1">가족여행 * 부산</p>
										<h5 class=" "
											style="overflow: hidden; text-overflow: ellipsis; width: 100%; height: 48px;">가족과
											함께 떠나는 부산 여행 코스 !</h5>
										<div class="">
											<div class="">
												<i class="fa-solid fa-eye"></i> 조회수 56
											</div>
											<div class="">
												<i class="fa-solid fa-heart"></i> 좋아요 20
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-lg-3 p-2"
								style="height: 300px; text-overflow: ellipsis;">
								<div class="thumbnail"
									style="border: 1px solid #ddd; width: 100%; margin-right: 5px; position: relative;">
									<div class="heart1"></div>
									<img class="w-100 mb-2" src="img/뽀짝.jpg"
										style="border: 1px solid #ddd; height: 150px" alt="" />
									<div class="caption p-2">
										<p class=" mb-1">가족여행 * 부산</p>
										<h5 class=" "
											style="overflow: hidden; text-overflow: ellipsis; width: 100%; height: 48px;">가족과
											함께 떠나는 부산 여행 코스 !</h5>
										<div class="">
											<div class="">
												<i class="fa-solid fa-eye"></i> 조회수 56
											</div>
											<div class="">
												<i class="fa-solid fa-heart"></i> 좋아요 20
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-lg-3 p-2"
								style="height: 300px; text-overflow: ellipsis;">
								<div class="thumbnail"
									style="border: 1px solid #ddd; width: 100%; margin-right: 5px; position: relative;">
									<div class="heart1"></div>
									<img class="w-100 mb-2" src="img/뽀짝.jpg"
										style="border: 1px solid #ddd; height: 150px" alt="" />
									<div class="caption p-2">
										<p class=" mb-1">가족여행 * 부산</p>
										<h5 class=" "
											style="overflow: hidden; text-overflow: ellipsis; width: 100%; height: 48px;">가족과
											함께 떠나는 부산 여행 코스 !</h5>
										<div class="">
											<div class="">
												<i class="fa-solid fa-eye"></i> 조회수 56
											</div>
											<div class="">
												<i class="fa-solid fa-heart"></i> 좋아요 20
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-lg-3 p-2"
								style="height: 300px; text-overflow: ellipsis;">
								<div class="thumbnail"
									style="border: 1px solid #ddd; width: 100%; margin-right: 5px; position: relative;">
									<div class="heart1"></div>
									<img class="w-100 mb-2" src="img/뽀짝.jpg"
										style="border: 1px solid #ddd; height: 150px" alt="" />
									<div class="caption p-2">
										<p class=" mb-1">가족여행 * 부산</p>
										<h5 class=" "
											style="overflow: hidden; text-overflow: ellipsis; width: 100%; height: 48px;">가족과
											함께 떠나는 부산 여행 코스 !</h5>
										<div class="">
											<div class="">
												<i class="fa-solid fa-eye"></i> 조회수 56
											</div>
											<div class="">
												<i class="fa-solid fa-heart"></i> 좋아요 20
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-lg-3 p-2"
								style="height: 300px; text-overflow: ellipsis;">
								<div class="thumbnail"
									style="border: 1px solid #ddd; width: 100%; margin-right: 5px; position: relative;">
									<div class="heart1"></div>
									<img class="w-100 mb-2" src="img/뽀짝.jpg"
										style="border: 1px solid #ddd; height: 150px" alt="" />
									<div class="caption p-2">
										<p class=" mb-1">가족여행 * 부산</p>
										<h5 class=" "
											style="overflow: hidden; text-overflow: ellipsis; width: 100%; height: 48px;">가족과
											함께 떠나는 부산 여행 코스 !</h5>
										<div class="">
											<div class="">
												<i class="fa-solid fa-eye"></i> 조회수 56
											</div>
											<div class="">
												<i class="fa-solid fa-heart"></i> 좋아요 20
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-lg-3 p-2"
								style="height: 300px; text-overflow: ellipsis;">
								<div class="thumbnail"
									style="border: 1px solid #ddd; width: 100%; margin-right: 5px; position: relative;">
									<div class="heart1"></div>
									<img class="w-100 mb-2" src="img/뽀짝.jpg"
										style="border: 1px solid #ddd; height: 150px" alt="" />
									<div class="caption p-2">
										<p class=" mb-1">가족여행 * 부산</p>
										<h5 class=" "
											style="overflow: hidden; text-overflow: ellipsis; width: 100%; height: 48px;">가족과
											함께 떠나는 부산 여행 코스 !</h5>
										<div class="">
											<div class="">
												<i class="fa-solid fa-eye"></i> 조회수 56
											</div>
											<div class="">
												<i class="fa-solid fa-heart"></i> 좋아요 20
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-lg-3 p-2"
								style="height: 300px; text-overflow: ellipsis;">
								<div class="thumbnail"
									style="border: 1px solid #ddd; width: 100%; margin-right: 5px; position: relative;">
									<div class="heart1"></div>
									<img class="w-100 mb-2" src="img/뽀짝.jpg"
										style="border: 1px solid #ddd; height: 150px" alt="" />
									<div class="caption p-2">
										<p class=" mb-1">가족여행 * 부산</p>
										<h5 class=" "
											style="overflow: hidden; text-overflow: ellipsis; width: 100%; height: 48px;">가족과
											함께 떠나는 부산 여행 코스 !</h5>
										<div class="">
											<div class="">
												<i class="fa-solid fa-eye"></i> 조회수 56
											</div>
											<div class="">
												<i class="fa-solid fa-heart"></i> 좋아요 20
											</div>
										</div>
									</div>
								</div>
							</div>




						</div>
					</div>


				</div>
			</div>
		</div>
	</div>


	<div style="height: 40px;">&nbsp;</div>
	
	<!-- Section: Social media -->
	<section
		class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
		<!-- Left -->
		<div class="me-5 d-none d-lg-block"></div>
		<!-- Left -->

		<!-- Right -->
		<div>
			<a href="" class="me-4 text-reset"> <i class="fab fa-facebook-f"></i>
			</a> <a href="" class="me-4 text-reset"> <i class="fab fa-twitter"></i>
			</a> <a href="" class="me-4 text-reset"> <i class="fab fa-google"></i>
			</a> <a href="" class="me-4 text-reset"> <i class="fab fa-instagram"></i>
			</a> <a href="" class="me-4 text-reset"> <i class="fab fa-linkedin"></i>
			</a> <a href="" class="me-4 text-reset"> <i class="fab fa-github"></i>
			</a>
		</div>
		<!-- Right -->
	</section>
	<!-- Section: Social media -->

	<!-- Section: Links  -->
	<section class="">
		<div class="container text-center text-md-start mt-5">
			<!-- Grid row -->
			<div class="row mt-3">
				<!-- Grid column -->
				<div class="col-md-3 col-lg-5 col-xl-3 mx-auto mb-4">
					<!-- Content -->
					<h6 class="text-uppercase fw-bold mb-4">
						<i class="fas fa-gem me-3"></i>고객지원실 운영안내
					</h6>
					<p>
						연중무휴 09:00-18:00 (점심시간 12:00-13:00)<br> 주말/공휴일 포함, 한국시간 기준<br>
						※ 구매 환불/변경은 평일 09:00-17:00 접수 가능<br> 유선상담 1670-8208
					</p>
				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4"
					style="margin-right: 10px;">
					<!-- Links -->
					<h6 class="text-uppercase fw-bold mb-4">소개</h6>
					<p>
						<a href="#!" class="text-reset">회사소개</a>
					</p>
					<p>
						<a href="#!" class="text-reset">채용</a>
					</p>
					<p>
						<a href="#!" class="text-reset">공고</a>
					</p>
				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
					<!-- Links -->
					<h6 class="text-uppercase fw-bold mb-4">파트너</h6>
					<p>
						<a href="#!" class="text-reset">파트너 등록하기</a>
					</p>
					<p>
						<a href="#!" class="text-reset">Affiliate 프로그램</a>
					</p>
					<p>
						<a href="#!" class="text-reset">리얼 파트너</a>
					</p>
					<p>
						<a href="#!" class="text-reset">파트너 블로그</a>
					</p>
				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
					<!-- Links -->
					<h6 class="text-uppercase fw-bold mb-4">고객센터</h6>
					<p>
						<a href="#!" class="text-reset">자주 묻는 질문</a>
					</p>
					<p>
						<a href="#!" class="text-reset">최저가 보장제</a>
					</p>
				</div>
				<!-- Grid column -->
			</div>
			<!-- Grid row -->
		</div>
	</section>
	<!-- Section: Links  -->

	<!-- Copyright -->
	<div class="text-center p-4"
		style="background-color: rgba(0, 0, 0, 0.02);">
		© 2022 Copyright: <a class="text-reset fw-bold"
			href="https://mdbootstrap.com/">MDBootstrap.com</a>
	</div>
	<!-- Copyright -->
	<div style="width:1200px; height : 130px; display:flex; overflow: hidden;">
	<div style="width:1200px; height : 130px; display:flex; position:relative; right:300px;">
		<a><div style="width:500px; height:130px; background-image: url('${pageContext.request.contextPath}/bootstrapEx/img/뽀짝.jpg'); background-size:cover;"></div></a>
		<a><div style="width:500px; height:130px; background-image: url('${pageContext.request.contextPath}/bootstrapEx/img/뽀짝.jpg'); background-size:cover;"></div></a>
		<a><div style="width:500px; height:130px; background-image: url('${pageContext.request.contextPath}/bootstrapEx/img/뽀짝.jpg'); background-size:cover;"></div></a>
		<a><div style="width:500px; height:130px; background-image: url('${pageContext.request.contextPath}/bootstrapEx/img/뽀짝.jpg'); background-size:cover;"></div></a>
	
	</div>
	</div>
	
	
<div class="post-slider">
        <h1 class="sider-title">Treding Posts</h1>
        <div class="post-wrapper">
          <div class="post">1</div>
          <div class="post">2</div>
          <div class="post">3</div>
          <div class="post">4</div>
          <div class="post">5</div>
        </div>
</div>
	
	
	
	
	
<!-- 슬릭 -->
  <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
  <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
  <script type="text/javascript" src="slick/slick.min.js"></script>

  <script type="text/javascript">
    $(document).ready(function(){
      $('.your-class').slick({
        setting-name: setting-value
      });
    });
  </script>


</body>
</html>