<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style type="text/css">
.body-container {
	max-width: 800px;
}

.ck.ck-editor {
	max-width: 97%;
}

.ck-editor__editable {
	min-height: 250px;
}

.ck-content .image>figcaption {
	min-height: 25px;
}

.tit .courseCityName {
	border: none;
	overflow: hidden;
	display: inline-block;
	width: 100%;
	font-weight: bold;
	font-size: 20px;
	color: #000;
	text-overflow: ellipsis;
	white-space: nowrap;
	background: white;
}

.courseCityAddress {
	border: none;
	font-size: 14px;
	font-family: 맑은고딕;
	background: white;
	width: 90%;
}

.courseCityContent {
	border: none;
	overflow: hidden;
	width: 90%;
	padding-top: 5px;
	text-overflow: ellipsis;
	white-space: nowrap;
	background: white;
}

.selected {
	background: rgba(0, 0, 0, 0.05);
	font-weight: bold;
}

.selectCityThema {
	display: flex;
	float: right;
}

.courseSubject {
	height: 50px;
	width: 100%;
	font-size: 21px;
	text-align: left;
	border: 1px solid #ccc;
	box-sizing: border-box;
	padding: 5px 5px;
	font-family: 맑은고딕;
	margin-top: 10px;
}

.course .remove-course {
	cursor: pointer;
	position : absolute;
	right: 0;
	top: 20px;
	border-color: #13A6E8;
	color: #13A6E8;
}

.course .remove-course:hover{
	border-color: #13A6E8;
	background-color: #13A6E8;
	color: #fff;
}
</style>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/boot-board.css"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/dist/travelCourse/swiper.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/dist/travelCourse/common.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/dist/travelCourse/content.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/dist/travelCourse/write.css">


<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/vendor/ckeditor5/ckeditor.js"></script>

<script type="text/javascript">
	// 코스 시퀀스 번호
	var courseSeq = 0;
	
	// 상세 코스 등록
	function sendOk() {
		var f = document.cityForm;
		var str, check;
		check = false;
		if (!f.cityName2.value) {
			alert("장소(마커)를 선택하세요. ");
			check = true;
			return;
		}

		if (!f.courseContent.value.trim()) {
			alert("내용을 입력하세요. ");
			f.csdesc.focus();
			check = true;
			return;
		}

		if (!f.selectFile.value) {

			alert("사진을 추가하세요. ");
			f.cityCategoryNum.focus();
			check = false;
			return;
		}
		
		if(! $("#courseCity div").hasClass("course")) {
			$("#courseCity").empty();
		}
		
		var out;
		var cityName, cityAddress, cityContent, cityImg, cityLatitude, cityLongitude, file;
		cityName = f.cityName2.value;
		cityAddress = f.address.value;
		cityContent = f.courseContent.value;
		cityLatitude = f.latitude.value;
		cityLongitude = f.longitude.value;
		file = f.selectFile.files[0];
		courseSeq += 1;
		out =  '<div class="course">';
		out += '<ul class="list_thumType flnon">';
		out += '	<li class="bdr_nor coslist">';
		out += '   		<div class="photo">';
		out += ' 			<a href="#">';
		out += '				<em class="numbering">'+courseSeq+'</em>';	
		out += '				<img class="img-viewer" src="" alt="'+cityName + '">';
		out += ' 			</a>';
		out += ' 		</div>';
		out += '   	   	<div class="area_txt">';
		out += '     		<div class="tit">';
		out += '   				<input class="courseCityName" name = "placeNameList" type="text" value="'+cityName+'" >';
		out += '        		<input type="hidden" name="latitudeList" value="'+cityLatitude+'">';
		out += '        		<input type="hidden" name="longitudeList" value="'+cityLongitude+'"" >';
		out += '      		</div>';
		out += '   			<input class="courseCityAddress" name ="addressList" type="text" value="'+cityAddress+'" >';
		out += ' 			<p></p>';
		out += '			<input class="courseCityContent" name = "courseContentList" type="text" value="'+cityContent+'">';
		out += '			<input type="file" name="uploadFile" style="display:none;">';
		out += '    	</div>';
		out += '    	<button type="button" class="btn remove-course"><i class="bi bi-trash" fill="currentColor"></i> 코스삭제</button>';
		out += '    </li>';
		out += ' </ul>';
		out += ' </div>';

		// 	document.querySelector(".list_thumType").append(out);
		$("#courseCity").append(out);
		
		const courseEls = document.querySelectorAll(".course");
		const courseEl = courseEls[courseEls.length-1];
		
		let imgEl = courseEl.querySelector(".img-viewer");
		var reader = new FileReader();
		reader.onload = function(e) {
			imgEl.style.backgroundImage = "none";
			imgEl.src = e.target.result;
		}
		reader.readAsDataURL(file);
		
		let fileEl = courseEl.querySelector("input[name=uploadFile]");
		let dt = new DataTransfer();
		dt.items.add(file);
		fileEl.files = dt.files;
		
		document.getElementById("totalCity").textContent = courseSeq;
		f.cityName2.value = "";
		f.courseContent.value = "";
		f.selectFile.value = "";
		f.address.value = "";
		f.latitude.value = "";
		f.longitude.value = "";
		
		document.getElementById("cityName").textContent = "City";
        document.getElementById("cityaddr").textContent ="";
	}
	
	// 전체 게시물 등록
	function sendOk1() {
		var f = document.courseForm;
		f.action = "${pageContext.request.contextPath}/theme/${mode}";
		f.submit();
	}
	
	// 삭제 버튼 클릭
	$(function(){
		$("body").on("click", ".remove-course", function(){
			
			$(this).closest(".course").remove();
			
			if(! $("#courseCity div").hasClass("course")) {
				$("#courseCity").append("<p class='text-center mb-0'>등록된 코스가 없습니다.</p>");
			}
			courseSeq -= 1;
			if(courseSeq>0){
				for(let i = 0; i<$("#courseCity").find("em").length; i++){
					$("#courseCity").find("em")[i].innerHTML = i+1;
				}
			}
		});
	});
</script>


<div class="container" style="margin-top: 20px;">
	<div class="body-container" style="border:1px solid #eee; padding: 20px;">
		<div class="body-title">
			<h3>
				<i class="bi bi-book-half"></i> 테마별 코스 등록
			</h3>
		</div>

		<div class="body-main">
			<div class="alert alert-info" role="alert">
				<i class="bi bi-question-square"></i> 게시판 이용자들에게 테마별 코스를 추천해주세요..
			</div>

			<div class="wrap_contView padB10" style="margin-top: 0px;">
				<h3>지역</h3>
				<div class="area_msListPc">
					<ul class="clfix ">
						<li id="1"><a href="#">서울</a></li>
						<li id="2"><a href="#">인천</a></li>
						<li id="3"><a href="#">대전</a></li>
						<li id="4"><a href="#">대구</a></li>
						<li id="5"><a href="#">광주</a></li>
						<li id="6"><a href="#">부산</a></li>
						<li id="7"><a href="#">울산</a></li>
						<li id="8"><a href="#">세종</a></li>
						<li id="31"><a href="#">경기</a></li>
					</ul>
					<ul class="clfix">
						<li id="32"><a href="#">강원</a></li>
						<li id="33"><a href="#">충북</a></li>
						<li id="34"><a href="#">충남</a></li>
						<li id="35"><a href="#">경북</a></li>
						<li id="36"><a href="#">경남</a></li>
						<li id="37"><a href="#">전북</a></li>
						<li id="38"><a href="#">전남</a></li>
						<li id="39"><a href="#">제주</a></li>
						<li id="all"><a href="#">전체보기</a></li>
					</ul>
				</div>
			</div>

			<div class="search">
				<form onsubmit="searchPlaces(); return false;">
					<div class="search1">
						<input name="mapSearch" type="text" id="keyword" size="15"
							placeholder="어디로, 어떤 여행을 떠날 예정인가요?" class="inputKeyword">
						<button class="searchCity_btn" type="submit">
							<i class="bi bi-search btn_search"></i>
						</button>
					</div>
				</form>
			</div>

			<div class="mapSite" style="margin-top: 20px;">
				<jsp:include page="/WEB-INF/views/theme/map.jsp" />
			</div>

			<form name="cityForm" method="post" enctype="multipart/form-data">
				<div class="card mapForm1">
					<div class="card mapForm2">
						<div class="card mapForm3">
							<span> <i class="fas fa-map-marker-alt markerIcon"></i> <span
								id="cityName" class="mapCityName">City</span><br>
							</span> <span id="cityaddr" style="margin-top: 5px; font-size: 17px;"></span>
						</div>
					</div>
					<div class="container px-6 mt-2 mb-2">

						<div class="row">
							<div class="mapIntroduce modify mb-2">

								<div class="introduceTxt">
									<p id="csdescview" style="display: none;"></p>
									<textarea name="courseContent" id="courseContent"
										maxlength="2000" class="inp_textarea" title="코스 소개"
										placeholder="코스에 대한 간략한 설명을 기재할 수 있습니다."></textarea>
									<input id="cityName2" type="hidden"></input> <input
										id="latitude" type="hidden"></input> <input id="longitude"
										type="hidden"></input> <input id="address" type="hidden"></input>
									<input id=centerAddr type="hidden"></input>
								</div>
							</div>
						</div>
						<div class="row ">
							<div class="col">
								<input type="file" id="selectFile" accept="image/*"
									multiple="multiple" class="form-control">
							</div>
						</div>
					</div>


					<table class="table table-borderless">
						<tr>
							<td class="text-center">
								<button type="button" class="btn mapBtn" onclick="sendOk();">${mode=='update'?'수정완료':'등록하기'}&nbsp;<i
										class="bi bi-check2"></i>
								</button> <c:if test="${mode=='update'}">
								</c:if>
							</td>
						</tr>
					</table>


				</div>
			</form>

		</div>

		<form name="courseForm" method="post" enctype="multipart/form-data">
		<div class="mt-5">
			<div style=" border-bottom: 1px solid #999;  padding-bottom: 35px; padding-top: 35px; border-top: 3px dashed #999;">
				<i class="far fa-map" style="font-size: 40px; color: #2E2E2E;"></i>
				<span style="font-family: 맑은고딕; font-size: 35px; font-weight: bold; margin-left: 10px; color: #2E2E2E;">코스</span>
				<input class="courseSubject" type="text" name="subject" title="코스 제목" placeholder="코스 명을 입력해주세요." maxlength="300" >
		
			</div>
			<div class="tit_cont tit_widCol2">
					<div class="area_tag">
					</div>
					<!-- 0527 추가 -->
			</div>
			
			<div class="total_check">
				<div class="cos_section">
					<strong>총<span id="totalCity">0</span>건</strong>
					<div class="type2">
						<span >
							<label for="Category"></label>
							<select name="cityNum" class="" style="margin-right: 10px;">
							<option value="">지역 선택</option>
							<c:forEach var="vo" items="${cityList}">
								<option value="${vo.cityNum}" >${vo.cityName}</option>
							</c:forEach>
						</select>
						</span>
					</div>
					<div class="type1">
						<span style=" margin-right: 30px;">
							<label for="Type"></label>
							<select name="themeNum" title="코스 테마 선택">
								<option value="0">테마 선택</option>
								<c:forEach var="vo" items="${themeList}">
									<option value="${vo.themeNum}" >${vo.themeName}</option>
								</c:forEach>
							</select>
						</span>
					</div>
					<div class="type3">
						<span style=" margin-right: 30px;">
							<label for="Type"></label>
							<select name="period" title="코스 테마 선택">
								<option value="">기간 선택</option>
								<option value="당일치기">당일치기</option>
								<option value="1박2일">1박 2일</option>
								<option value="2박3일">2박 3일</option>
								<option value="3박4일">3박 4일</option>
								<option value="일주일">일주일</option>
							</select>
						</span>
					</div>
					
					
				</div>
			</div>
			<div class="w-100 "style="clear:both; position:relative; height: 30px;">
				<div class="row w-100" style=" position:absolute; left:20px;">
					<span class="form-check col-2">
					  <input class="form-check-input" name="hashtag" type="checkbox" value="산">
					    # 산
					</span>
					<span class="form-check col-2">
					  <input class="form-check-input" name="hashtag" type="checkbox" value="바다">
					    # 바다
					</span>
					<span class="form-check col-2">
					  <input class="form-check-input" name="hashtag" type="checkbox" value="도시">
					    # 도시
					</span>
					<span class="form-check col-2">
					  <input class="form-check-input" name="hashtag" type="checkbox" value="뚜벅이">
					    # 뚜벅이
					</span>
					<span class="form-check col-2">
					  <input class="form-check-input" name="hashtag" type="checkbox" value="나들이">
					    # 나들이
					</span>
					<span class="form-check col-2">
					  <input class="form-check-input" name="hashtag" type="checkbox" value="액티비티">
					    # 액티비티
					</span>
				</div>
			</div>
			
			<div id = "courseCity" >

				
			</div>
			
				<!-- 0527 추가 지도 -->
				<div class="mapIntroduce modify">
					<div class="introduceTxt">
						<p id="csdescview" style="display: none;"></p>
						<textarea name="content" id="csdesc" maxlength="2000" class="inp_textarea" title="코스 소개" style="" placeholder="코스에 대한 간략한 설명을 기재할 수 있습니다."></textarea>
					</div>
				</div>
			</div>
		
			<table class="table table-borderless" style="margin-top: 5px;">
				<tr>
					<td class="text-center">
						<button type="button" class="btn btn-dark" onclick="sendOk1();">${mode=='update'?'수정완료':'등록하기'}&nbsp;<i class="bi bi-check2"></i></button>
						<button type="reset" class="btn btn-light px-4">다시입력</button>
						<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/theme/list';">${mode=='update'?'수정취소':'등록취소'}&nbsp;<i class="bi bi-x"></i></button>
						<c:if test="${mode=='update'}">
							<input type="hidden" name="num" value="${dto.num}">
							<input type="hidden" name="page" value="${page}">
							<input type="hidden" name="group" value="${group}">
						</c:if>
					</td>
				</tr>
			</table>
		</form>	

	</div>
</div>
