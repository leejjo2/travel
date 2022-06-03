<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>여행코스</title>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/bootstrap5/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/bootstrap5/icon/bootstrap-icons.css"
	type="text/css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/css/core.css"
	type="text/css">

<script type="text/javascript" 
	src="${pageContext.request.contextPath}/dist/jquery/js/jquery.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/dist/bootstrap5/js/bootstrap.bundle.min.js"></script>
	
	
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>


<style type="text/css">
.imtext {
	position: absolute;
	top: 10px;
	left: 15px;
	z-index: 1;
	color: #FF4318;
	font-weight: bold;
	background: white;
	border-radius: 3px;
	text-overflow: ellipsis;
	overflow: hidden;
	width: 45%;
	height: 30%;
	font-size: 15px;
}

.imtext2 {
	position: absolute;
	top: 10px; left : 15px; z-index : 1; font-size : 30px;
	color: white;
	font-weight: bold;
	left: 15px;
	z-index: 1;
	font-size: 30px;
}

.imtext3 {
	position: absolute;
	top: 175px; left : 15px;
	z-index: 1;
	font-size: 20px;
	color: white;
	font-weight: bold;
	left: 15px;
}

.imtext4 {
	position: absolute;
	top: 205px;
	left: 15px;
	z-index: 1;
	font-size: 20px;
	color: white;
	font-weight: bold;
}

.tripImg {
	width: 100%;
	border-radius: 3px;
}

.swiper-container {
	width: 100%;
	margin-left: auto;
	margin-right: auto;
	position: relative;
	overflow: hidden;
	z-index: 1;
	list-style: none;
	padding: 0;
}

.input1 {
	position: relative;
	box-sizing: border-box;
	outline: none;
    top: 130px;
}

.search-bar {
	position: relative;
	overflow: hidden;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	height: 40px;
	border: 1px solid rgba(255, 255, 255, 0.4);
	border-radius: 8px;
	background: rgba(245, 246, 255, 0.15);
	width: 40%;
	margin: 0px auto;
}

.searchImg {
	position: absolute;
	left: 18px;
	display: flex;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	flex: 0 0 48px;
}

.searchIcon {
	display: inline-block;
	border: 0px;
	width: 20px;
	height: 20px;
}

.search-bar__input {
	width: 100%;
	height: 100%;
	background: none;
	border: none;
	font-size: 18px;
	font-weight: 500;
	text-align: center;
	padding: 0px 16px 0px 48px;
	color: -internal-light-dark(black, white);
	transition: background-color 200ms cubic-bezier(0.4, 0, 0.2, 1) 0s;
}

input::placeholder {
	color: white;
	font-size: 16px;
}

.fa-search {
	font-size: 15px;
}

dl, ul, ol, menu, li {
	list-style: none;
}

li {
	display: list-item;
	text-align: -webkit-match-parent;
}

.area_course>ul li>span {
	display: block;
	margin-left: -5px;
	padding-left: 20px;
	background: url('./img/ico_leftobj.png') 0 50% no-repeat;
	color: #000;
	font-size: 16px;
}

.area_course>ul li {
	background: url('./img/line_leftobj.png') 0 0 repeat-y;
	line-height: 20px;
	padding: 10px 0;
}

.tagImg {
	background-position: 50%;
	background-size: cover;
	border-radius: 4px;
	box-shadow: 0 3px 8px 0 rgb(0 0 0/ 30%), 0 0 1px 0 rgb(0 0 0/ 30%);
	display: inline-block;
	margin-left: 10px;
	margin-right: 10px;
	position: relative;
	transition: box-shadow .2s ease;
	width: 200px !important;
	height: 128px;
}

h3 {
	color: #343a40;
	font-size: 18px;
	font-weight: 700;
	padding: 0 16px;
	position: absolute;
	text-align: left;
	top: 14px;
	width: 100%;
}

.btn-group {
	position: absolute;
	display: inline-flex;
	vertical-align: middle;
	background: white;
	top: 10px;
	left: 200px;
	height: 40px;
}

.btn1:hover {
	font-weight: bolder;

	border: solid 1px black;
	transform:scale(1.05);
}


.btnText {
    background-color: #fff;
    border: 0;
    border-radius: 50%;
    box-shadow: 0 0 0 1px rgb(0 0 0 / 5%), 0 2px 6px 0 rgb(0 0 0 / 5%), 0 4px 12px 0 rgb(0 0 0 / 5%);
    height: 40px;
    position: absolute;
    text-align: center;
    top: 50%;
    transform: translateY(-50%);
    transition: .2s;
    width: 40px;
    z-index: 10;
    right: -10px;
}

.title1 {	position: relative; width: 100%; z-index: 3; }

.title1_2 { padding: 0; width: 100%; margin-top: -15px; }
.title1_3 { height: 100%; position: relative; width: 100%; }
.title1_4 { left: auto; right: auto; width: 100%;}
.title1_5 { 
	width: 100%; height: 100%; 
	transform: translate3d(0px, 0px, 0px); 
	overflow: visible !important; 	z-index: 1; 
	display: flex; position: relative; 
}

.title2_1{
	background-image: linear-gradient(166deg, #fff 40%, hsla(0, 0%, 100%, 0) 68%); 
	border-radius: 4px; height: 100%; width: 100%;
}
.title2_btn { top: calc(50% - 6px); right: -20px;}

.title2_img{border-width: 0;  vertical-align: middle;}

.title3{position: relative; min-height: 1000px;}
.title3_2{margin-left: 20px; margin-right: 20px;}
.title3_3{width: 200px; float: right;}
.title3_4{margin-right: 10px; width: 200px; float: right;}

.title4 {width: 18rem; position: relative;}
.title4_1 {color: black; border: solid 1px black; background: white;}
.btn_make:hover {
	font-weight: bolder;
	transform:scale(1.1); 
}
</style>
</head>
<body>
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
								<a href="#" class="tagImg" style="background-image: url(./img/1.jpg); ">
									<div class="title2_1"></div>
									<h3>
										<span>가족</span>
									</h3>
								</a> 
								<a href="#" class="tagImg" style="background-image: url(./img/2.JPG); ">
									<div class="title2_1"></div>
									<h3>
										<span>혼자여행</span>
									</h3>
								</a> 
								<a href="#" class="tagImg" style="background-image: url(./img/3.jpg); ">
									<div class="title2_1"></div>
									<h3>
										<span>도보코스</span>
									</h3>
								</a> 
								<a href="#" class="tagImg"	style="background-image: url(./img/4.jpg);">
									<div class="title2_1"></div>
									<h3>
										<span>힐링코스</span>
									</h3>
								</a> <a href="#" class="tagImg"
									style="background-image: url(./img/5.jpg);">
									<div class="title2_1"></div>
									<h3>
										<span>맛코스</span>
									</h3>
								</a> <a href="#" class="tagImg"
									style="background-image: url(./img/6.jpg);">
									<div class="title2_1"></div>
									<h3>
										<span>캠핑코스</span>
									</h3>
								</a>
							</div>
						</div> 
						<button type="button" class="btnText title2_btn " tabindex="0" role="button"
							aria-label="Previous slide" aria-disabled="false">
							<img alt="next" src="./img/next.svg" class="title2_img">
						</button>
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

					<select class="form-select d-flex justify-content-end title3_3"	aria-label="Default select example">
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
						<img src="./img/2_1.jpg" class="card-img-top" alt="..."> <span
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
								<img src="./img/2_1.jpg" class="card-img-top" alt="..."> <span
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
						<img src="./img/2_2.jpg" class="card-img-top" alt="..."> <span
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
								<img src="./img/2_1.jpg" class="card-img-top" alt="..."> <span
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
						<img src="./img/2_3.jpg" class="card-img-top" alt="..."> <span
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
								<img src="./img/2_1.jpg" class="card-img-top" alt="..."> <span
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

<div data-slick='{"slidesToShow": 4, "slidesToScroll": 4}'>
		  <div><h3>1</h3></div>
		  <div><h3>2</h3></div>
		  <div><h3>3</h3></div>
		  <div><h3>4</h3></div>
		  <div><h3>5</h3></div>
		  <div><h3>6</h3></div>
		</div>

			</div>
		</div>

	</div>

	
</body>
</html>
