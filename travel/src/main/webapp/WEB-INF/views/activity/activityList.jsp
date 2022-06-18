<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="/trip/dist/activity/css/activityList.css">
<link rel="stylesheet" href="https://dffoxz5he03rp.cloudfront.net/build/production/156e94213ea0bff2eb5fe3229c4779b4db0d304f/application.css">

<script type="text/javascript">
$(function() {
	$(".clfix li").click(function() {
		$(".clfix li").removeAttr("class");
		$(this).attr("class", "on");
	});
	
	$(".hot-deal-category-container a").click(function() {
		$(".hot-deal-category-container a").removeClass("active");
		$(this).addClass("active");
	});
	
	$(".select-wrapper").click(function() {
		if ($(".select-list").css('display') == 'block') {
            $(".select-list").css('display', 'none');
        } else {
            $(".select-list").css('display', 'block');
        }
	});
	
	$(".select-list a").click(function() {
		$(".select-list a").removeClass("active");
		$(this).addClass("active");
		
		$(".select-wrapper span").html($(this).text());
		$(".select-list").css('display', 'none');
	});
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
				<li id="1" onclick=""><a>서울</a></li>
				<li id="2" onclick=""><a>인천</a></li>
				<li id="3" onclick=""><a>대전</a></li>
				<li id="4" onclick=""><a>대구</a></li>
				<li id="5" onclick=""><a>광주</a></li>
				<li id="6" onclick=""><a>부산</a></li>
				<li id="7" onclick=""><a>울산</a></li>
				<li id="8" onclick=""><a>세종</a></li>
				<li id="31" onclick=""><a>경기</a></li>
			</ul>
			<ul class="clfix">
				<li id="32" onclick=""><a>강원</a></li>
				<li id="33" onclick=""><a>충북</a></li>
				<li id="34" onclick=""><a>충남</a></li>
				<li id="35" onclick=""><a>경북</a></li>
				<li id="36" onclick=""><a>경남</a></li>
				<li id="37" onclick=""><a>전북</a></li>
				<li id="38" onclick=""><a>전남</a></li>
				<li id="39" onclick=""><a>제주</a></li>
				<li id="All" onclick="" class="on"><a>전체보기</a></li>
			</ul>
		</div>
	</div>

	<div class="hot-deal-content">
		<div class="hot-deal-category-container">
			<a class="active hot-deal-category" data-filter-param="all"> 전체 </a>
			<a class="hot-deal-category" data-filter-param="낚시"> 낚시 </a>
			<a class="hot-deal-category" data-filter-param="워터파크"> 워터파크 </a>
			<a class="hot-deal-category" data-filter-param="서핑"> 서핑 </a>
			<a class="hot-deal-category" data-filter-param="다이빙"> 다이빙 </a>
			<a class="hot-deal-category" data-filter-param="요트/크루즈"> 요트/크루즈 </a>
			<a class="hot-deal-category" data-filter-param="수상액티비티"> 수상액티비티 </a>
		</div>

		<div class="hot-deal-select">
			<div class="select-wrapper">
				<span>추천순</span>
			 	<img class="arrow-img" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/offer/hot_deal/ic_lightgrey_dropdown@2x-5d85be4b94fdd7ebefca9950a4978066c0a5fdf4dd923b0d9da6630b7316a162.png" width="8px">
			</div>
			<div class="select-list" style="display: none;">
				<a class="active select-item">추천순</a> 
				<a class="select-item">인기순</a>
				<a class="select-item">후기순</a>
				<a class="select-item">가격순</a> 
				<a class="select-item">신상품순</a>
			</div>
		</div>
		<div class="offer-container card-type card-hot-deal card-list">
			<div class="container-without-filter-not-lodging">
				<div class="CardGridContainer-module__container--Nms6z">
				<%for(int i=0; i<9; i++) {%>
					<a href="${pageContext.request.contextPath}/activity/detail" class="CardContainer-module__container--B5cqm CardShare-module__container--lu1iP CardContainer-module__fixedWidth--XQbwP CardContainer-module__offer--Npil0 CardContainer-module__grid--El_OK">
						<span class="OfferVerticalCard-module__thumbnail--hPkZk">
							<span class="CardThumbnail-module__container--t05no CardThumbnail-module__vertical--fg4fQ">
								<span class="LazyImageLoader-module__container--xHxKX">
									<img alt="" class="LazyImageLoader-module__image--FB3yN MRT-LazyImageLoader__indicator LazyImageLoader-module__visible--n47Jt CardThumbnail-module__image--Tc1b4"
										src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/103452/563031_medium_1651833766.jpg?1651833766">
									<span class="LazyImageLoader-module__placeholder--iH82U CardThumbnail-module__image--Tc1b4"></span>
								</span>
							</span>
						</span>
						<div class="OfferVerticalCard-module__body--QqE0h CardShare-module__body--SgF6m">
							<span class="CardCategory-module__container--QvB9e">
								<span class="CardCategory-module__label--cLofl" style="overflow: hidden; text-overflow: ellipsis;">레저 ・ 강원도</span>
							</span>
							<h3 class="CardTitle-module__container--l9OrK CardTitle-module__vertical--COffX">
								<div class="CardTitle-module__title--WAHI8" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
									[강원 평창] 휘닉스 평창 블루캐니언 입장권 + 워터뷔페 패키지 (소인 종일권 ~)
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
									<span class="CardPriceForVertical-module__main--VVTBF">30,264
										<span class="CardPriceForVertical-module__unit--TTngM">원</span>
									</span>
									<span class="CardPriceForVertical-module__standard--jqgFm">/ 1인</span>
								</div>
							</div>
						</div>
					</a>
					<%} %>
				</div>
			</div>
		</div>
	</div>
</div>
