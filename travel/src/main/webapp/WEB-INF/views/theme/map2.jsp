<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
 <div id="map" style="width:100%;height:500px;"></div>
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
			if(jqXHR.status === 400) {
				alert("요청 처리가 실패 했습니다.");
				return false;
			}

			console.log(jqXHR.responseText);
		}
	});
}
</script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=11aacf33c8b65ecc25ba9f1f09fbb470"></script>
<script type="text/javascript">
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	mapOption = { 
	    center: new kakao.maps.LatLng(${latitude}, ${longitude}), // 지도의 중심좌표
	    level: 8 // 지도의 확대 레벨
	};
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

	// AJAX 를 이용하여 마커를 출력할 위도/경도 및 제목 불러오기
	var url = "${pageContext.request.contextPath}/theme/regions";
	var query = "courseNum="+${dto.courseNum};
	var fn = function(data){
		createMarker(data);
	};
	ajaxFun(url, "get", query, "json", fn);
	
	function createMarker(data){
		var positions = [];
		
		// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
		var bounds = new kakao.maps.LatLngBounds();	
		
		//선좌표 배열변수
		var linePath = new Array;
		
		$(data.list).each(function(index, item){
			// 선좌표 담기
			var linePath2;
			linePath2 = new kakao.maps.LatLng(item.latitude, item.longitude);
			linePath.push(linePath2);
			// LatLngBounds 객체에 좌표를 추가합니다
	  	 	bounds.extend(new kakao.maps.LatLng(item.latitude, item.longitude));
			
			let mobj = {
					content: "<div class='marker-info'>"+ item.placeName + "</div>", 
					latlng: new kakao.maps.LatLng(item.latitude, item.longitude)
			};
			positions.push(mobj);
		});
		
		for (var i = 0; i < positions.length; i ++) {
			// 마커 생성
			var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
	        imgOptions =  {
	            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
	            spriteOrigin : new kakao.maps.Point(0, (i*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
	            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
	        },
	        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions)
			var marker = new kakao.maps.Marker({
			    map: map, // 마커를 표시할 지도
			    image: markerImage, 
			    position: positions[i].latlng // 마커의 위치
			});
			
			// 마커에 표시할 인포윈도우를 생성합니다 
			var infowindow = new kakao.maps.InfoWindow({
			    content: positions[i].content // 인포윈도우에 표시할 내용
			});
			
			// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
			// 이벤트 리스너로는 클로저를 만들어 등록합니다 
			// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
			kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
			kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
			
		}
		// 지도에 표시할 선을 생성합니다
		var polyline = new kakao.maps.Polyline({
			path: linePath, // 선을 구성하는 좌표배열 입니다
			strokeWeight: 3, // 선의 두께 입니다
			strokeColor: '#FF3333', // 선의 색깔입니다
			strokeOpacity: 0.6, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
			strokeStyle: 'solid' // 선의 스타일입니다
		});
		
		// 범위 설정
		map.setBounds(bounds);
		//선그리기
		polyline.setMap(map);
	}

	
	//인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function makeOverListener(map, marker, infowindow) {
		return function() {
		    infowindow.open(map, marker);
		};
	}	

	//인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(infowindow) {
		return function() {
		    infowindow.close();
		};
	}

</script>
