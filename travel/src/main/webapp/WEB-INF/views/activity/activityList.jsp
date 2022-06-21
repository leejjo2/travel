<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="/trip/dist/activity/css/activityList.css">
<link rel="stylesheet" href="https://dffoxz5he03rp.cloudfront.net/build/production/156e94213ea0bff2eb5fe3229c4779b4db0d304f/application.css">

<script type="text/javascript">
$(function() {
	function callList() {
		let cityNum = $(".clfix .on").attr("id");
		let activityType = $(".hot-deal-category-container .active").attr("data-filter-param");
		let query = "cityNum="+cityNum+"&activityType="+activityType;
	    let url = "${pageContext.request.contextPath}/activity/list?" + query;
	    // 넘길 때 디폴트로 받기
	    console.log(url);
	    location.href = url;
	}
	
	$(".clfix li").click(function() {
		$(".clfix li").removeAttr("class");
		$(this).attr("class", "on");
		callList();
	});
	
	$(".hot-deal-category-container a").click(function() {
		$(".hot-deal-category-container a").removeClass("active");
		$(this).addClass("active");
		callList();
	});
	
});
</script>

<script type="text/javascript">
$(document).ready(function(){

		
});

</script>



<div class="hot-deal-container">
	<div class="header-container theme-header">
		<img alt="액티비티 배너" class="img original"
			src="https://d2ur7st6jjikze.cloudfront.net/themes/1041_original_1653550719.jpg?1653550719">
	</div>
	
	<div class="wrap_contView">
		<div class="area_msListPc m_none"><!-- pc -->
			<ul class="clfix">
				<li id="1" ${cityNum=="1"?"class='on'":""}><a>서울</a></li>
				<li id="4" ${cityNum=="4"?"class='on'":""}><a>인천</a></li>
				<li id="6" ${cityNum=="6"?"class='on'":""}><a>대전</a></li>
				<li id="2" ${cityNum=="2"?"class='on'":""}><a>부산</a></li>
				<li id="3" ${cityNum=="3"?"class='on'":""}><a>대구</a></li>
				<li id="5" ${cityNum=="5"?"class='on'":""}><a>광주</a></li>
				<li id="7" ${cityNum=="7"?"class='on'":""}><a>울산</a></li>
				<li id="8" ${cityNum=="8"?"class='on'":""}><a>세종</a></li>
				<li id="9" ${cityNum=="9"?"class='on'":""}><a>경기</a></li>
			</ul>
			<ul class="clfix">
				<li id="10" ${cityNum=="10"?"class='on'":""}><a>강원</a></li>
				<li id="11" ${cityNum=="11"?"class='on'":""}><a>충북</a></li>
				<li id="12" ${cityNum=="12"?"class='on'":""}><a>충남</a></li>
				<li id="15" ${cityNum=="15"?"class='on'":""}><a>경북</a></li>
				<li id="16" ${cityNum=="16"?"class='on'":""}><a>경남</a></li>
				<li id="13" ${cityNum=="13"?"class='on'":""}><a>전북</a></li>
				<li id="14" ${cityNum=="14"?"class='on'":""}><a>전남</a></li>
				<li id="17" ${cityNum=="17"?"class='on'":""}><a>제주</a></li>
				<li id="all" ${cityNum=="all"?"class='on'":""}><a>전체보기</a></li>
			</ul>
		</div>
	</div>

	<div class="hot-deal-content">
		<div class="hot-deal-category-container">
			<a class='${activityType=="all"?"active":""} hot-deal-category' data-filter-param="all">전체</a>
			<a class='${activityType=="ticket"?"active":""} hot-deal-category' data-filter-param="ticket"> 티켓/패스 </a>
			<a class='${activityType=="camping"?"active":""} hot-deal-category' data-filter-param="camping"> 캠핑 </a>
			<a class='${activityType=="spa"?"active":""} hot-deal-category' data-filter-param="spa"> 스파&amp;마사지 </a>
			<a class='${activityType=="amusementPark"?"active":""} hot-deal-category' data-filter-param="amusementPark"> 놀이동산 </a>
			<a class='${activityType=="waterActivity"?"active":""} hot-deal-category' data-filter-param="waterActivity"> 수상 액티비티 </a>
			<a class='${activityType=="yacht"?"active":""} hot-deal-category' data-filter-param="yacht"> 요트/유람선 </a>
		</div>

		<div class="offer-container card-type card-hot-deal card-list">
			<div class="container-without-filter-not-lodging">
				<div class="CardGridContainer-module__container--Nms6z">
				<c:forEach var="dto" items="${list}">
					<a href="${pageContext.request.contextPath}/activity/detail?activityNum=${dto.activityNum}&page=${page}&cityNum=${cityNum}&activityType=${activityType}" class="CardContainer-module__container--B5cqm CardShare-module__container--lu1iP CardContainer-module__fixedWidth--XQbwP CardContainer-module__offer--Npil0 CardContainer-module__grid--El_OK">
						<span class="OfferVerticalCard-module__thumbnail--hPkZk">
							<span class="CardThumbnail-module__container--t05no CardThumbnail-module__vertical--fg4fQ">
								<span class="LazyImageLoader-module__container--xHxKX">
									<img alt="" class="LazyImageLoader-module__image--FB3yN MRT-LazyImageLoader__indicator LazyImageLoader-module__visible--n47Jt CardThumbnail-module__image--Tc1b4"
										src="${pageContext.request.contextPath}/uploads/activity/${dto.titleImgname}">
									<span class="LazyImageLoader-module__placeholder--iH82U CardThumbnail-module__image--Tc1b4"></span>
								</span>
							</span>
						</span>
						<div class="OfferVerticalCard-module__body--QqE0h CardShare-module__body--SgF6m">
							<span class="CardCategory-module__container--QvB9e">
								<span class="CardCategory-module__label--cLofl" style="overflow: hidden; text-overflow: ellipsis;">${dto.activityTypeName} ・ ${dto.cityName}</span>
							</span>
							<h3 class="CardTitle-module__container--l9OrK CardTitle-module__vertical--COffX">
								<div class="CardTitle-module__title--WAHI8" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
									${dto.activityName}
								</div>
							</h3>
							<div class="OfferVerticalCard-module__info--mUIkY">
								<div class="CardPriceForVertical-module__container--jmRSV">
									<span class="rating CardPriceForVertical-module__standard--jqgFm">
										<span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star-half-alt"></span>
                            		</span>
									<span class="CardPriceForVertical-module__standard--jqgFm">4.5</span>
								</div>
							</div>
							<div class="OfferVerticalCard-module__immediately--nSrYb">
								<div class="CardPriceForVertical-module__container--jmRSV">
									<span class="CardPriceForVertical-module__main--VVTBF">${dto.price}
										<span class="CardPriceForVertical-module__unit--TTngM">원</span>
									</span>
									<span class="CardPriceForVertical-module__standard--jqgFm">/ 1인</span>
								</div>
							</div>
						</div>
					</a>
				</c:forEach>
				</div>
			</div>
		</div>
	</div>
	
	<div class="page-box">
		${dataCount == 0 ? "등록된 액티비티가 없습니다." : paging}
	</div>
	<div style="margin-top: 110px;"></div>
</div>


