<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style type="text/css">


.sudogun {
	
	margin: 10px auto;
	padding: 20px;
	max-width: 1000px;
	text-align: center;
	
}

.search2 {
	padding: 0px;
	border-radius: 5px;
	border: none;
	margin: 10px auto;
	max-width: 990px;
}

.matziplist {
	margin: 10px auto;
	padding: 50px;
	max-width: 1100px;
}

a {
	text-decoration: none;
	color: #333;
}

button {
	border: none;
	background-color: white;
}

.foodView{
	font-weight: bold;
	cursor: pointer;
}
.foodView:hover{
	color: tomato;
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
	foodList(1);
});	
	
function foodList(areaCode, cat3) {
	if(! cat3) cat3 = "";
	
	var url="http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList";
	var query = "ServiceKey=InzkX%2FX%2BXNAD%2FtYGagIlsUrwmw%2BbVRjVDbYwVBfCzqGEFY3sVVGr7tI4jjKoHTUATqBPgV4Afi1kHqo5nzeBiA%3D%3D";
	query += "&MobileApp=AppTest&MobileOS=WIN&contentTypeId=39&areaCode="+areaCode+"&cat3="+cat3+"&numOfRows=20&arrange=P";
	
	var fn = function(data) {
		printXML(data);
	};
	
	ajaxFun(url, "get", query, "xml", fn);
}
	
function printXML(data) {
	var out="";
	
	var noImg = "${pageContext.request.contextPath}/resources/images/noimage.png";
	var dataCount = $(data).find("totalCount").text();
	
	$(data).find("item").each(function() {
		var item = $(this);
		var title = item.find("title").text();
		var addr1 = item.find("addr1").text();
		var img = item.find("firstimage").text();
		var contentid = item.find("contentid").text();
		
		out += "<div class='row row-cols'>";
		
		out += "   <div class='col-4 text-center' style='border-radius: 5px; height:200px;'>";
		out += "       <div class='border p-0' style='border-radius: 5px; height:200px;'>";
		if( img ) {
			out += "       <img src='"+img+"' width='100%' height='100%' style='border-radius: 5px;'>";
		} else {
			out += "       <img src='"+noImg+"' width='100%' height='100%' style='border-radius: 5px;'>";
		}
		out += "       </div>";
		out += "   </div>";
		
		out += "   <div class='col-8' style='border: none'>";
		out += "       <div class='p-3' style='color: black;'>";
		out += "          <p style='font-weight: bold;'>음식점명 : <span data-contentid='"+contentid+"' class='foodView'>" +title+"</span></p>";
		out += "          <p>주소 : " +addr1+"</a>";
		out += "       </div>";
		out += "   </div>";
		
		out += "</div>";
			
	});
	
	$(".matziplist").html(out);
}

$(function(){
	$(".sudogun .btnSearch").eq(0).parent().css("background", "#0dcaf0");
	$(".sudogun .btnSearch").eq(0).css("background", "#0dcaf0");
	
	$(".btnSearch").click(function(){
		var areaCode = $(this).attr("data-areacode");
		foodList(areaCode);
		
		$(".sudogun .btnSearch").parent().css("background", "#fff");
		$(".sudogun .btnSearch").css("background", "#fff");
		
		$(this).parent().css("background", "#0dcaf0");
		$(this).css("background", "#0dcaf0");
		
	});
});

$(function(){
	$(".btnSearch2").click(function(){
		var areaCode = "1";
		$(".sudogun .btnSearch").each(function(){
			if($(this).css("background-color") == "rgb(13, 202, 240)") {
				areaCode = $(this).attr("data-areacode");
			}
		});
		
		var cat3 = $(this).attr("data-cat3");
		
		foodList(areaCode, cat3);
	});
});

// $(function(){
// 	$('.foodView').click("click", function(){
// 		var contentid = $(this).attr("data-contentid");
		
// 		loaction.href="${pageContext.request.contextPath}/food/foodView?contentid="+contentid;

// 	});
// });
$(document).ready(function() {
	$(document).on("click", ".foodView", function() {
		var contentid = $(this).attr("data-contentid");
		console.log(contentid);
		location.href="${pageContext.request.contextPath}/food/foodView?contentid="+contentid;
    });
});



</script>

	<div class="container mb-3" style="font-size: 25px; padding: 10px;">여행지추천 - 맛집 리스트</div>
		<div class="container mb-3">
			<div class="sudogun">
				<div class="row row-cols text-dark">
					<div class="col border p-2">
						<button type="button" data-areacode="1" class="btnSearch">서울</button>
					</div>
					<div class="col border p-2">
					  <button type="button" data-areacode="2" class="btnSearch">인천</button>
					</div>
					<div class="col border p-2">
					 <button type="button" data-areacode="3" class="btnSearch">대전</button>
					</div>
					<div class="col border p-2" >
					  <button type="button" data-areacode="4" class="btnSearch">대구</button>
					</div>
					<div class="col border p-2">
					  <button type="button" data-areacode="5" class="btnSearch">광주</button>
					</div>
					<div class="col border p-2">
					  <button type="button" data-areacode="6" class="btnSearch">부산</button>
					</div>
					<div class="col border p-2">
					  <button type="button" data-areacode="7" class="btnSearch">울산</button>
					</div>
					<div class="col border p-2">
					 <button type="button" data-areacode="8" class="btnSearch">세종</button>
					</div>
					<div class="col border p-2">
					 <button type="button" data-areacode="31" class="btnSearch">경기</button>
					</div>
				</div>
				
				<div class="row row-cols text-dark">
					<div class="col border p-2">
					<button type="button" data-areacode="32" class="btnSearch">강원</button>
					</div>
					<div class="col border p-2">
					 <button type="button" data-areacode="33" class="btnSearch">충북</button>
					</div>
					<div class="col border p-2">
					 <button type="button" data-areacode="34" class="btnSearch">충남</button>
					</div>
					<div class="col border p-2">
					  <button type="button" data-areacode="35" class="btnSearch">경북</button>
					</div>
					<div class="col border p-2">
					  <button type="button" data-areacode="36" class="btnSearch">경남</button>
					</div>
					<div class="col border p-2">
					  <button type="button" data-areacode="37" class="btnSearch">전북</button>
					</div>
					<div class="col border p-2">
					 <button type="button" data-areacode="38" class="btnSearch">전남</button>
					</div>
					<div class="col border p-2">
					 <button type="button" data-areacode="39" class="btnSearch">제주</button>
					</div>
					<div class="col border p-2">
					  <button type="button" data-areacode="" class="btnSearch">전체보기</button>
					</div>
					
				</div>
	  		</div>
	  	</div>
	  	
		
		<div class="search2">
			<div class="row row-cols g-0">
				<div class="col-9 text-center">
					<div class="border bg-info p-0" style="border-radius: 5px;">
						<input type="text" name="keyword" class="form-control" placeholder="맛집을 검색하세요">
					</div>
				</div>
				
				<div class="col">
					<div class="border bg-info p-0" style="border-radius: 5px;">
						<button type="button" class="btn" onclick="searchList();" style="width: 100px;"><i class="bi bi-search"></i> 검색 </button>
					</div>
				</div>
				<div class="col">

				</div>
				
				<div class="col text-center">
					<div class="border p-0" style="border-radius: 5px;">
						<ul class="navbar-nav mx-auto flex-nowrap"> 
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
									 구분
								</a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown" style="text-align: center;">
									<li><button type="button" class="btnSearch2" data-cat3="">전체</button></li>
									<li><button type="button" class="btnSearch2" data-cat3="A05020100">한식</button></li>
									<li><button type="button" class="btnSearch2" data-cat3="A05020200">서양식</button></li>
									<li><button type="button" class="btnSearch2" data-cat3="A05020300">일식</button></li>
									<li><button type="button" class="btnSearch2" data-cat3="A05020400">중식</button></li>
									<li><button type="button" class="btnSearch2" data-cat3="A05020500">아시아식</button></li>
									<li><button type="button" class="btnSearch2" data-cat3="A05020600">패밀리레스토랑</button></li>
									<li><button type="button" class="btnSearch2" data-cat3="A05020700">이색음식점</button></li>
									<li><button type="button" class="btnSearch2" data-cat3="A05020800">채식전문점</button></li>
									<li><button type="button" class="btnSearch2" data-cat3="A05020900">바/카페</button></li>
									<li><button type="button" class="btnSearch2" data-cat3="A05021000">클럽</button></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
				
			</div>
	  	</div>
		

		<div class="matziplist"></div>
		
		
