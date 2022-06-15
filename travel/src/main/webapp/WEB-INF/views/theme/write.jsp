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
</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/boot-board.css" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/travelCourse/swiper.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/travelCourse/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/travelCourse/content.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/travelCourse/write.css">
	
	
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/vendor/ckeditor5/ckeditor.js"></script>

<script type="text/javascript">
var sequence = 1;

function sendOk(){
	var f = document.cityForm;
	var newLi = document.createElement("li");
	newLi.classList.add('bdr_nor', 'coslist');
	
	newLi.innerHTML = "<div class='photo'> <a href='../detail/ms_detail.do?cotid=6cb1642d-b578-462f-82c6-b1c1ef468af7&amp;big_category=A02&amp;mid_category=A0205&amp;big_area=6'><em class='numbering'>"+ sequence++ +"</em><img src='https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=d0a9427f-56a2-42c9-a31a-dc22e977d682' alt='오륙도 스카이워크'></a></div><div class='area_txt'><div class='tit'><a href='../detail/ms_detail.do?cotid=6cb1642d-b578-462f-82c6-b1c1ef468af7&amp;big_category=A02&amp;mid_category=A0205&amp;big_area=6'>"+document.getElementById('cityName2').value+"</a></div><p>"+document.getElementById('address1').value+"</p><p></p><p class='tag'><span>#2021대한민국안심여행캠페인</span><span>#경상권</span><span>#관광지</span><span>#바다풍경</span><span>#방역우수관광지</span><span>#부산가볼만한곳</span><span>#부산여행</span><span>#부산여행가볼만한곳</span><span>#부산오륙도</span><span>#숙박대전_가볼만한곳</span><span>#숙박대전_추천기사</span><span>#스카이워크</span><span>#안심경상권여행</span><span>#안심관광지</span><span>#오륙도</span><span>#오륙도스카이워크</span></p></div><button type='button' title='내용 더보기' class='btn_view'>더보기</button><div class='pop_subMenu'><ul><li class='btn_del'><a href='javascript:' id='0' onclick=''>삭제</a></li></ul></div>  <input type='hidden' name='placeNameList' value='"+document.getElementById('cityName2').value+"'><input type='hidden' name='addressList' value='"+document.getElementById('address1').value+"'>";
	document.querySelector(".list_thumType").appendChild(newLi);
	
}

function sendOk2(){
	var f = document.courseForm;
	f.action = "${pageContext.request.contextPath}/theme/${mode}";
	f.submit();
}


</script>


<div class="container">
	<div class="body-container">
		<div class="body-title">
			<h3>
				<i class="bi bi-book-half"></i> 테마별 코스 등록
			</h3>
		</div>

		<div class="body-main">
			<div class="alert alert-info" role="alert">
				<i class="bi bi-question-square"></i> 게시판 이용자들에게 테마별 코스를 추천해주세요..
			</div>
			<div class="mapSite">
				<jsp:include page="/WEB-INF/views/theme/map.jsp" />
			</div>

			<form name="cityForm" method="post" enctype="multipart/form-data">
			<div class="card mapForm1">
				<div class="card mapForm2">
					<div class="card mapForm3">
							<span>
								<i class="fas fa-map-marker-alt markerIcon" ></i>
								<span id="cityName" class="mapCityName">City</span><br>
							</span>
							<span id="cityaddr" style="margin-top: 5px; font-size: 17px;"></span>
							
							<div>
								<div>장소명 : <input id="cityName2" name="cityName2"></input></div>
								<div>위도 : <input id="latitude" name="latitude"></input></div>
								<div>경도 : <input id="longitude" name="longitude"></input></div>
								<div>주소 : <input id="address1" name="address"></input></div>
								<div>중심주소 : <input id=centerAddr></input></div>
							</div>
							
							
					</div>
				</div>
				<div class="container px-6 mt-2 mb-2">
					
					<div class="row">
						<div class="mapIntroduce modify mb-2">
						
							<div class="introduceTxt">
								<p id="csdescview" style="display: none;"></p>
								<textarea name="courseContent" id="courseContent" maxlength="2000" class="inp_textarea" title="코스 소개" placeholder="코스에 대한 간략한 설명을 기재할 수 있습니다."></textarea>
							</div>
						</div>
					</div>
					<div class="row ">
						<div class="col">
							<input type="file" name="selectFile" accept="image/*" multiple="multiple" class="form-control" >
						</div>
					</div>
				</div>

					
				<table class="table table-borderless">
					<tr>
						<td class="text-center">
							<button type="button" class="btn mapBtn"  onclick="sendOk();">${mode=='update'?'수정완료':'등록하기'}&nbsp;<i class="bi bi-check2"></i></button>
							<c:if test="${mode=='update'}">
							</c:if>
						</td>
					</tr>
				</table>
				

			</div>
		</form>

		</div>
		
		<form name="courseForm" method="post" enctype="multipart/form-data">
		<div class="mt-5" >
		<div class="total_check">
			<strong>총<span>3</span>건</strong>
			<div class="btn_txt pos-r0">
				<span class="txt_nor1">코스 총거리 : <em>406.3km</em></span>
			</div>
		</div>
		<ul class="list_thumType flnon">
<!-- 			<li class="bdr_nor coslist"> -->
<!-- 				<div class="photo"> -->
<!-- 					<a -->
<!-- 						href="../detail/ms_detail.do?cotid=6cb1642d-b578-462f-82c6-b1c1ef468af7&amp;big_category=A02&amp;mid_category=A0205&amp;big_area=6"><em -->
<!-- 						class="numbering">1</em><img -->
<!-- 						src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=d0a9427f-56a2-42c9-a31a-dc22e977d682" -->
<!-- 						alt="오륙도 스카이워크"></a> -->
<!-- 				</div> -->
<!-- 				<div class="area_txt"> -->
<!-- 					<div class="tit"> -->
<!-- 						<a -->
<!-- 							href="../detail/ms_detail.do?cotid=6cb1642d-b578-462f-82c6-b1c1ef468af7&amp;big_category=A02&amp;mid_category=A0205&amp;big_area=6">오륙도 -->
<!-- 							스카이워크</a> -->
<!-- 					</div> -->
<!-- 					<p>부산 남구</p> -->
<!-- 					<p></p> -->
<!-- 					<p class="tag"> -->
<!-- 						<span>#2021대한민국안심여행캠페인</span><span>#경상권</span><span>#관광지</span><span>#바다풍경</span><span>#방역우수관광지</span><span>#부산가볼만한곳</span><span>#부산여행</span><span>#부산여행가볼만한곳</span><span>#부산오륙도</span><span>#숙박대전_가볼만한곳</span><span>#숙박대전_추천기사</span><span>#스카이워크</span><span>#안심경상권여행</span><span>#안심관광지</span><span>#오륙도</span><span>#오륙도스카이워크</span> -->
<!-- 					</p> -->
<!-- 				</div> -->
<!-- 				<button type="button" title="내용 더보기" class="btn_view">더보기</button> -->
<!-- 				<div class="pop_subMenu"> -->
<!-- 					<ul> -->
<!-- 						<li class="btn_del"><a href="javascript:" id="0" -->
<!-- 							onclick="">삭제</a></li> -->
<!-- 					</ul> -->
<!-- 				</div> -->
<!-- 			</li> -->
		</ul>
		<!-- 0527 추가 지도 -->
		<div class="mapIntroduce modify">
			<div class="introduceTxt">
				<p id="csdescview" style="display: none;"></p>
				<textarea name="content" id="content" maxlength="2000" class="inp_textarea" title="코스 소개" style="" placeholder="코스에 대한 간략한 설명을 기재할 수 있습니다."></textarea>
				<p class="txtNum">현재 글자수 <span id="textNum">0</span>자 / 최대 글자수 2000자</p><!-- 1101 추가 -->
			</div>
		</div>
	</div>
	
	<table class="table table-borderless">
		<tr>
			<td class="text-center">
				<button type="button" class="btn btn-dark" onclick="sendOk2();">${mode=='update'?'수정완료':'등록하기'}&nbsp;<i class="bi bi-check2"></i></button>
				<button type="reset" class="btn btn-light px-4">다시입력</button>
				<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/travelCourse/list';">${mode=='update'?'수정취소':'등록취소'}&nbsp;<i class="bi bi-x"></i></button>
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
