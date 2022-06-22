<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style type="text/css">
.backlist {
	background-color: light;
	border-radius: 5px;
	width: 80px;
	height : 40px;
	border: none;
}
</style>
<script type="text/javascript">
function ajaxFun(url, method, query, dataType, fn) {
	$.ajax({
		type:method,
		url:url,
		data:query,
		dataType:dataType,
		success:function(data){
			console.log(data);
			fn(data);
		},
		error:function(e) {
			console.log(e.responseText);
		}
	});
}

$(function(){
	foodView()
});	
$(function(){
	foodView2()
});	
$(function(){
	foodView3()
});	
	
function foodView() {
	var contentid = "${contentid}";
	if(! contentid ) {
		return;
	}
	
	var url= "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro";
	var query = "ServiceKey=InzkX%2FX%2BXNAD%2FtYGagIlsUrwmw%2BbVRjVDbYwVBfCzqGEFY3sVVGr7tI4jjKoHTUATqBPgV4Afi1kHqo5nzeBiA%3D%3D";
	query += "&MobileApp=AppTest&MobileOS=WIN&contentTypeId=39&contentId="+contentid;
	
	var fn = function(data) {
		printXML(data);
	};
	
	ajaxFun(url, "get", query, "xml", fn);
	
	
}
	
function printXML(data) {
	var out="";
	
	var dataCount = $(data).find("totalCount").text();
	
	$(data).find("item").each(function() {
		var item = $(this);
		var title = item.find("title").text();
		var chkcreditcardfood = item.find("chkcreditcardfood").text();
		var firstmenu = item.find("firstmenu").text();
		var infocenterfood = item.find("infocenterfood").text();
		var opentimefood = item.find("opentimefood").text();
		var parkingfood = item.find("parkingfood").text();
		var reservationfood = item.find("reservationfood").text();
		
		
		out += "  		<p style='font-weight:bold;'> 대표메뉴 : " +firstmenu+"</p> ";
		out += "  		<p> 카드가능여부 :   "+chkcreditcardfood+"</p> ";
		out += "  		<p> 전화번호 :     "+infocenterfood+"</p> ";
		out += "  		<p> 영업시간 :     "+opentimefood+"</p> ";
		if( parkingfood ) {
			out += "  		<p> 주차시설 :  "+parkingfood+" </p> ";
		} else {
			out += "       <p> 주차시설 : 정보가 존재하지 않습니다. </p> ";
		}
		out += "  		<p> 예약안내 :     "+reservationfood+"</p> ";
		
	});
	$(".detail").html(out);
	console.log(data);
}



function foodView2() {
	var contentid = "${contentid}";
	if(! contentid ) {
		return;
	}
		
	var url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailImage";
	var query = "ServiceKey=InzkX%2FX%2BXNAD%2FtYGagIlsUrwmw%2BbVRjVDbYwVBfCzqGEFY3sVVGr7tI4jjKoHTUATqBPgV4Afi1kHqo5nzeBiA%3D%3D";
	query += "&MobileApp=AppTest&MobileOS=WIN&contentTypeId=39&contentId="+contentid+"&imageYN=N";
	
	var fn = function(data) {
		printXML2(data);
	};
	
	ajaxFun(url, "get", query, "xml", fn);
	
	
}

function printXML2(data) {
	var out="";
	
	var dataCount = $(data).find("totalCount").text();
	
	$(data).find("item").each(function() {
		var item = $(this);
		var originimgurl = item.find("originimgurl").text();
		
		out += " <div class='carousel-item active'> ";
		out += "<img src=' "+originimgurl+"' width='100%' height='100%' class='d-block'>";
		out += "<div class='carousel-caption d-none d-md-block'>";
		out += "</div>";
		out += "</div>";
		
	});
	$(".image").html(out);
	console.log(data);
}



function foodView3() {
	var contentid = "${contentid}";
	if(! contentid ) {
		return;
	}
		
	var url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon";
	var query = "ServiceKey=InzkX%2FX%2BXNAD%2FtYGagIlsUrwmw%2BbVRjVDbYwVBfCzqGEFY3sVVGr7tI4jjKoHTUATqBPgV4Afi1kHqo5nzeBiA%3D%3D";
	query += "&MobileApp=AppTest&MobileOS=WIN&contentTypeId=39&contentId="+contentid+"&defaultYN=Y&overviewYN=Y";
	
	var fn = function(data) {
		printXML3(data);
	};
	
	ajaxFun(url, "get", query, "xml", fn);
	
	
}

function printXML3(data) {
	var out="";
	
	var dataCount = $(data).find("totalCount").text();
	
	$(data).find("item").each(function() {
		var item = $(this);
		var telname = item.find("telname").text();
		
		out += "<p>"+telname+"</p> ";
		
		
	});
	$(".title").html(out);
	console.log(data);
}


</script>

<div class="container mb-3 title" style="font-size: 20px; padding-top:15px; font-weight: bold;">

</div>


<div class="container mb-3">
	<div class="row row-cols">
		<div class="col border p-2" style="max-height: 333px; max-width: 500px;">
		
		<div id="carouselImageCaptions" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselImageCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="첫번째 이미지"></button>
				<button type="button" data-bs-target="#carouselImageCaptions" data-bs-slide-to="1" aria-current="true" aria-label="두번째 이미지"></button>
				<button type="button" data-bs-target="#carouselImageCaptions" data-bs-slide-to="2" aria-current="true" aria-label="세번째 이미지"></button>
			</div>
			
			<div class="carousel-inner image" style="max-height: 333px; max-width: 500px;">
			
			
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
		
		<div class="col border p-2 detail">
		</div>
	</div>
</div>

<div class="backlist container mb-3">
	<button class="backlist" type="button" onclick="location.href='${pageContext.request.contextPath}/food/list';">목록</button>
</div>

<div class="container mb-3">
	<div class="ex">
	
	</div>
</div>
		
		
