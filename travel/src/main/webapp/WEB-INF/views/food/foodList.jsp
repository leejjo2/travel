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
	
	foodList();
	
	function foodList() {
		var url="http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList";
		var query = "ServiceKey=InzkX%2FX%2BXNAD%2FtYGagIlsUrwmw%2BbVRjVDbYwVBfCzqGEFY3sVVGr7tI4jjKoHTUATqBPgV4Afi1kHqo5nzeBiA%3D%3D&MobileApp=AppTest&MobileOS=WIN&contentTypeId=39";
		
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
			
			out += "<div class='row g-0' style='border-bottom: 1px solid gray;'>";
			out += "   <div class='col-10' style='border: none'>";
			out += "       <div class='p-0' style='color: black;'>";
			out += "          <p>음식점명 : "+title+"</p>";
			out += "          <p>주소 : "+addr1+"</p>";
			out += "       </div>";
			out += "   </div>";
			
			out += "   <div class='col-2 text-center'>";
			out += "       <div class='border p-0'>";
			if( img ) {
				out += "       <img src='"+img+"' width='100%' height='100'>";
			} else {
				out += "       <img src='"+noImg+"' width='100%' height='100'>";
			}
			out += "       </div>";
			out += "   </div>";
			
			out += "</div>";
				
		});
		
		$(".matziplist").html(out);
	}
	
});
</script>

	<div class="container mb-3" style="font-size: 25px; padding: 10px;">여행지추천 - 맛집 리스트</div>
		<div class="container mb-3">
			<div class="sudogun">
				<div class="row row-cols text-dark">
					<div class="col border p-2">
						<a href="#" >서울</a>
					</div>
					<div class="col border p-2">
					  <a href="#" >인천</a>
					</div>
					<div class="col border p-2">
					 <a href="#" >대전</a>
					</div>
					<div class="col border p-2">
					  <a href="#" >대구</a>
					</div>
					<div class="col border p-2">
					  <a href="#" >광주</a>
					</div>
					<div class="col border p-2">
					  <a href="#" >부산</a>
					</div>
					<div class="col border p-2">
					  <a href="#" >울산</a>
					</div>
					<div class="col border p-2">
					  <a href="#" >세종</a>
					</div>
					<div class="col border p-2">
					  <a href="#" >경기</a>
					</div>
				</div>
				
				<div class="row row-cols text-dark">
					<div class="col border p-2">
					  <a href="#" >강원</a>
					</div>
					<div class="col border p-2">
					  <a href="#" >충북</a>
					</div>
					<div class="col border p-2">
					  <a href="#" >충남</a>
					</div>
					<div class="col border p-2">
					  <a href="#" >경북</a>
					</div>
					<div class="col border p-2">
					  <a href="#" >경남</a>
					</div>
					<div class="col border p-2">
					  <a href="#" >전북</a>
					</div>
					<div class="col border p-2">
					  <a href="#" >전남</a>
					</div>
					<div class="col border p-2">
					  <a href="#" >제주</a>
					</div>
					<div class="col border p-2">
					  <a href="#" >전체보기</a>
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
								<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
									<i class="bi bi-hand-thumbs-up"></i> 추천순
								</a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="#" style="color: black;"> 조회수순</a></li>
									<li><a class="dropdown-item" href="#" style="color: black;"><i class="bi bi-shop"></i> 음식점</a></li>
									<li><a class="dropdown-item" href="#" style="color: black;"><i class="bi bi-cup-straw"></i> 까페/디저트</a></li>
									<li><a class="dropdown-item" href="#" style="color: black;"><i class="bi bi-cup"></i> 술집</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
				
			</div>
	  	</div>
		
		<!-- 음식점 리스트 -->
		<div class="matziplist2">
		
		
		</div>
		
		<div class="matziplist"></div>
		
		
