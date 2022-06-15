<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/travelCourse/swiper.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/travelCourse/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/travelCourse/content.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/travelCourse/write.css">


<style type="text/css">

.tit .courseCityName { border:none; overflow:hidden;display: inline-block;width:100%;font-weight:bold;font-size: 20px; color: #000;text-overflow:ellipsis;white-space: nowrap; background: white;}
.courseCityAddress { border: none; font-size: 14px;  font-family: 맑은고딕; background: white; width: 90%; }
.courseCityContent {border: none; overflow: hidden; width: 90%; padding-top: 5px; text-overflow: ellipsis;  white-space: nowrap; background: white;}
.selected {	background: rgba(0, 0, 0, 0.05);  font-weight: bold;}
.selectCityThema { display: flex; float: right;}
.courseSubject { height: 50px;  width: 100%;  font-size: 21px;  text-align: left;  border: 1px solid #ccc;
   				 box-sizing: border-box; padding: 5px 5px; font-family: 맑은고딕; margin-top: 10px;}	

.img-viewer {
	cursor: pointer;
	border: 1px solid #ccc;
	width: 45px;
	height: 45px;
	border-radius: 45px;
	background-image: url("${pageContext.request.contextPath}/resources/img/travelCourse/add_photo.png");
	position: relative;
	z-index: 9999;
	background-repeat : no-repeat;
	background-size : cover;
}

.mapBtn:hover {
	font-weight: 900;
	color: white;
	font-size: 19px;
}
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
				alert("요청 처리가 실패했습니다.");
				return false;
			}
	    	
			console.log(jqXHR.responseText);
		}
	});
}


$(document).ready(function() {
	$(document).on("click", ".clfix li a", function() {
		$(".clfix li a").removeAttr('class');
		$(this).attr('class', 'selected');
	});
});

var courseSeq = 0;

function cityOk() {
	var f = document.cityForm;
	var str, check;
	check = false;
	if(! f.cityName2.value) {
		alert("장소(마커)를 선택하세요. ");
		check = true;
		return;
	}

	if(! f.csdesc.value.trim()) {
		alert("내용을 입력하세요. ");
		f.csdesc.focus();
		check = true;
		return;
	}
	
	if(! f.selectFile.value) {

		alert("사진을 추가하세요. ");
		f.cityCategoryNum.focus();
		check = false;
		return;
	}
	console.log() 
	var out;
	var cityName, cityAddress, cityContent, cityImg, cityLatitude, cityLongitude;
	cityName = f.cityName2.value;
	cityAddress = f.address.value;
	cityContent = f.csdesc.value;
	cityImg = f.selectFile.value;
	cityLatitude = f.latitude.value;
	cityLongitude = f.longitude.value;
	courseSeq += 1;

	console.log("123"+cityImg);
	
	if(! check ){
		out = '<ul class="list_thumType flnon">';
		out += '  <li class="bdr_nor coslist">';
		out += '    <div class="photo">'	;
		out += ' 		<a	href="#"><em class="numbering">'+courseSeq+'</em>' + 
				  '				<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=d0a9427f-56a2-42c9-a31a-dc22e977d682" alt="'+cityName+'">' + 
				  '  		</a>'+	
				  '     </div>';
		out += '   	<div class="area_txt">';
		out += '     	<div class="tit">';
		out += '   			<input class="courseCityName" id = "placeNames" type="text" value="'+cityName+'" disabled="disabled">';
		out += '        		<input type="text" id="latitudes" value="'+cityLatitude+'">';
		out += '        		<input type="text" id="longitudes" value="'+cityLongitude+'"" >';
		out += '        		<input type="text" id="courseSeq" value="'+courseSeq+'">';
		out += '      	</div>';
		out += '   		<input class="courseCityAddress" id ="addresss" type="text" value="'+cityAddress+'" disabled="disabled">';
		out += ' 		<p></p>'+
				  '			<input class="courseCityContent" id = "detailContents" type="text" value="'+cityContent+'" disabled="disabled">';
		out += '     </div>';
	
		$("#courseCity").append(out);
		document.getElementById("totalCity").textContent = courseSeq;		

//		$(".cos_section span").text() = seq;
		console.log("seq"+courseSeq);
	}
	 
	 
	
	
	
	 //f.action = "${pageContext.request.contextPath}/travelCourse/${mode}"; 
	 //f.submit();

}
</script>

   
<div class="container-sm mb-2 pt-3 title3" style="width:960px; min-height: 1000px;">
	
	
	<div class="card p-4">
		
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
	        	  	<input name="mapSearch" type="text" id="keyword" size="15" placeholder="어디로, 어떤 여행을 떠날 예정인가요?" class="inputKeyword"> 
	            <button class="searchCity_btn"type="submit"><i class="bi bi-search btn_search"></i></button> 
	        	  </div>   	
	        </form>
		</div>
		    
		<div class="map_wrap">
		    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
		    <div id="menu_wrap" class="bg_white">
		        <hr>
		        <ul id="placesList" style="padding: 0px;"></ul>
		        <div id="pagination"></div>
		    </div>
		</div>
		
	<div>
		<form name="cityForm">
			<div class="card mapForm1">
				<div class="card mapForm2">
					<div class="card mapForm3">
							<span>
								<i class="fas fa-map-marker-alt markerIcon" ></i>
								<span id="cityName" class="mapCityName">City</span><br>
							</span>
							<span id="cityaddr" style="margin-top: 5px; font-size: 17px;"></span>
					</div>
				</div>
				
				<div class="container px-6 mt-2 mb-2">
					<div class="row">
						
					 </div>
					
					<div class="row">
						<div class="mapIntroduce modify mb-2">
						
							<div class="introduceTxt">
								<p id="csdescview" style="display: none;"></p> 
								<textarea name="csdesc" id="csdesc" maxlength="2000" class="inp_textarea" title="코스 소개" placeholder="코스에 대한 간략한 설명을 기재할 수 있습니다."></textarea>
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
							<button type="button" class="btn mapBtn" onclick="cityOk();">${mode=='update'?'수정완료':'등록하기'}&nbsp;<i class="bi bi-check2"></i></button>
							<c:if test="${mode=='update'}">
							</c:if>
						</td>
					</tr>
				</table>
				
				<div>
					<input name = "cityName2" type="hidden" id="cityName2">
					<input type="hidden" id="latitude">
					<input type="hidden" id="longitude">
					<input type="hidden" id="address">
				</div>
				
			</div>
		</form>
	</div>
				

	<form name="courseForm" method="post" enctype="multipart/form-data">
		<div class="mt-5">
			<div style=" border-bottom: 1px solid #999;  padding-bottom: 35px; padding-top: 35px; border-top: 3px dashed #999;">
				<i class="far fa-map" style="font-size: 40px; color: #2E2E2E;"></i>
				<span style="font-family: 맑은고딕; font-size: 35px; font-weight: bold; margin-left: 10px; color: #2E2E2E;">코스</span>
				<input class="courseSubject" type="text" title="코스 제목" placeholder="코스 명을 입력해주세요." maxlength="300" >
		
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
							<label for="Category">코스 지역</label>
							<select name="cityCategoryNum" class="" style="margin-right: 10px;">
							<option value="">지역 선택</option>
							<c:forEach var="vo" items="${cityList}">
								<option value="${vo.cityNum}" >${vo.cityName}</option>
							</c:forEach>
						</select>
						</span>
					</div>
					<div class="type1">
						<span style=" margin-right: 30px;">
							<label for="Type">코스 테마</label>
							<select id="Type" title="코스 테마 선택">
								<option value="0">테마 선택</option>
								<option value="1">가족코스</option>
								<option value="2">혼자여행</option>
								<option value="3">도보코스</option>
								<option value="4">힐링코스</option>
								<option value="5">맛 코스</option>
								<option value="6">캠핑코스</option>
								<option value="7">반려동물과 함께</option>
							</select>
						</span>
					</div>
				</div>
			</div>
			
			<div id = "courseCity" >

				
			</div>
			
				<!-- 0527 추가 지도 -->
				<div class="mapIntroduce modify">
					<div class="introduceTxt">
						<p id="csdescview" style="display: none;"></p>
						<textarea name="csdesc" id="csdesc" maxlength="2000" class="inp_textarea" title="코스 소개" style="" placeholder="코스에 대한 간략한 설명을 기재할 수 있습니다."></textarea>
					</div>
				</div>
			</div>
		
			<table class="table table-borderless" style="margin-top: 5px;">
				<tr>
					<td class="text-center">
						<button type="button" class="btn btn-dark" onclick="sendOk1();">${mode=='update'?'수정완료':'등록하기'}&nbsp;<i class="bi bi-check2"></i></button>
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

	


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cb77909a0ef2437b5bd6d8d151c7fd78&libraries=services"></script>

<script>
// 마커를 담을 배열입니다
var markers = [];

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();  

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

//정조 시작

var moveLatLons = [];

var latitude = document.getElementById('latitude');
var longitude = document.getElementById('longitude');
var address = document.getElementById('address');

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

//현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
searchAddrFromCoords(map.getCenter(), displayCenterInfo);

var seq = 0;

// 정조 끝

$(".clfix li a").on("click", function(){
	
	var keyword = $(this).text();
		
	searchPlacesCity(keyword);
});

// 지역을 선택했을 때
function searchPlacesCity(keyword) {
	
	 ps.keywordSearch( keyword, placesSearchCB); 
}

// 키워드 검색을 요청하는 함수입니다
function searchPlaces() {
	
	var keyword = document.getElementById('keyword').value; 

    if (!keyword.replace(/^\s+|\s+$/g, '')) {
        alert('키워드를 입력해주세요!');
        return false;
    }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch( keyword, placesSearchCB); 
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces(data);

        // 페이지 번호를 표출합니다
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않습니다.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}

// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {

    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    // 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {

        // 마커를 생성하고 지도에 표시합니다
        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i, places[i].place_name), 
            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);

        // 마커와 검색결과 항목에 mouseover 했을때
        // 해당 장소에 인포윈도우에 장소명을 표시합니다
        // mouseout 했을 때는 인포윈도우를 닫습니다
        (function(marker, title) {
            kakao.maps.event.addListener(marker, 'mouseover', function() {
                displayInfowindow(marker, title);
            });

            kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });

            itemEl.onmouseover =  function () {
                displayInfowindow(marker, title);
            };

            itemEl.onmouseout =  function () {
                infowindow.close();
            };
        })(marker, places[i].place_name);

        fragment.appendChild(itemEl);
    }

    // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
}

// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {

    var el = document.createElement('li'),
    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                '<div class="info">' +
                '   <h5>' + places.place_name + '</h5>';

    if (places.road_address_name) {
        itemStr += '    <span>' + places.road_address_name + '</span>' +
                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
    } else {
        itemStr += '    <span>' +  places.address_name  + '</span>'; 
    }
                 
      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                '</div>';           

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, idx, title) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });
    
 // 정조 시작
    // 마커 클릭시 위도와 경도 출력
    kakao.maps.event.addListener(marker, 'click', function(){
    	
    	var moveLatLon = new kakao.maps.LatLng(Object.values(position)[1],Object.values(position)[0]);
//     	map.setLevel(5);
//     	map.panTo(moveLatLon);
    	
    	latitude.value = Object.values(position)[1];
    	longitude.value = Object.values(position)[0];

    	// 마커 클릭시 도로명주소, 지번 주소 출력
    	 searchDetailAddrFromCoords(moveLatLon, function(result, status) {
            if (status === kakao.maps.services.Status.OK) {
               // var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
                //detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
                
                
               // var content = '<div class="bAddr">' +
                //                '<span class="title">법정동 주소정보 는</span><br>' + title + detailAddr + 
                //           	  '</div>';
                            
                // 검색 결과 목록에 추가된 항목들을 제거합니다
//                 var listEl = document.getElementById('placesList');
//                 removeAllChildNods(listEl);
                
//                 var keyword = document.getElementById('keyword');
//                 keyword.value = "";

                // 지도에 표시되고 있는 마커를 제거합니다
//                removeMarker();

                // 마커를 클릭한 위치에 표시합니다 
                //marker.setPosition(moveLatLon);
                marker.setMap(map);
                /* for ( var i = 0; i < moveLatLons.length; i++ ) {
                	addMarker(moveLatLons[i], i, title);
                }    */
                //addMarker(moveLatLon, seq++, title);
                moveLatLons.push(moveLatLon);

                // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
                //infowindow.setContent(content);
               // infowindow.open(map, marker);
               // address.innerHTML = content;

                // 수인
                address.value = result[0].address.address_name;
                cityName2.value = title;

                document.getElementById("cityName").textContent = title;
                document.getElementById("cityaddr").textContent = result[0].address.address_name;
                //수인
              
            }   
        });
    });  
    // 정조 끝

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

//정조 시작
//중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'idle', function() {
 searchAddrFromCoords(map.getCenter(), displayCenterInfo);
});

function searchAddrFromCoords(coords, callback) {
 // 좌표로 행정동 주소 정보를 요청합니다
 geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
}

function searchDetailAddrFromCoords(coords, callback) {
 // 좌표로 법정동 상세 주소 정보를 요청합니다
 geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
}

//지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
function displayCenterInfo(result, status) {
 if (status === kakao.maps.services.Status.OK) {
     var infoDiv = document.getElementById('centerAddr');

     for(var i = 0; i < result.length; i++) {
         // 행정동의 region_type 값은 'H' 이므로
         if (result[i].region_type === 'H') {
             infoDiv.innerHTML = result[i].address_name;
             break;
         }
     }
 }    
}
//정조 끝


// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}

 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}
 

</script>
