<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!-- 슬릭 -->
<link rel="stylesheet" type="text/css"
	href="/trip/dist/theme/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="/trip/dist/theme/slick/slick-theme.css" />



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
	top: 50%;
	right: 0px;
	font-size: 2em;
	cursor: pointer;
}

.post-slider .prev, .post-slider .prev1, .post-slider .prev2 {
	position: absolute;
	top: 50%;
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
					<div class="col-10"><h3><i class="fa-solid fa-shield-dog"></i> 테마별 코스 추천</h3></div>
					<span class="col-2" style="text-align: center;"><button type="button" class="btn red" style="background: #0dcaf0;" onclick="location.href='${pageContext.request.contextPath}/theme/write;'">글 등록하기</button></span>
				</div>
				<div class="card p-4 mt-3 mb-3 bg-info">
					<div class="justify-content-center px-5">
						<div class="search">
							<input type="text" class="search-input"
								placeholder="가고싶은 테마를 검색하세요 !" name="" style="border : 0px;"> <a href="#"
								class="search-icon"><i class="fa fa-search"></i></a>
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
							<img
								src="${pageContext.request.contextPath}/resources/images/theme/뽀짝.jpg"
								class="d-block w-100 img-fluid" alt="...">
						</div>
						<div class="carousel-item">
							<img
								src="${pageContext.request.contextPath}/resources/images/theme/뽀짝.jpg"
								class="d-block w-100 img-fluid" alt="...">
						</div>
						<div class="carousel-item">
							<img
								src="${pageContext.request.contextPath}/resources/images/theme/뽀짝.jpg"
								class="d-block w-100 img-fluid" alt="...">
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
								<img class="w-100 mb-2"
									src="${pageContext.request.contextPath}/resources/images/theme/뽀짝.jpg"
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
								<img class="w-100 mb-2"
									src="${pageContext.request.contextPath}/resources/images/theme/뽀짝.jpg"
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
								<img class="w-100 mb-2"
									src="${pageContext.request.contextPath}/resources/images/theme/뽀짝.jpg"
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
								<img class="w-100 mb-2"
									src="${pageContext.request.contextPath}/resources/images/theme/뽀짝.jpg"
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
								<img class="w-100 mb-2"
									src="${pageContext.request.contextPath}/resources/images/theme/뽀짝.jpg"
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
								<img class="w-100 mb-2"
									src="${pageContext.request.contextPath}/resources/images/theme/뽀짝.jpg"
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
								<img class="w-100 mb-2"
									src="${pageContext.request.contextPath}/resources/images/theme/뽀짝.jpg"
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
								<img class="w-100 mb-2"
									src="${pageContext.request.contextPath}/resources/images/theme/뽀짝.jpg"
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
								<img class="w-100 mb-2"
									src="${pageContext.request.contextPath}/resources/images/theme/뽀짝.jpg"
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


