<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/mypage/myLikeList.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/mypage/myLikeList2.css">
<style type="text/css">
.heart { color: red;    font-size: 25px;    padding-right: 5px;     padding-top: 5px;}
.scrap { color: #209ced;    font-size: 25px;    padding-right: 5px;     padding-top: 5px;}
h1 span {    overflow: hidden;
    position: absolute;
    left: 0;
    top: 4px;
    width: 26px;
    height: 24px;
    background: url(https://cdn.visitkorea.or.kr/resources/images/sub/ico_tit_list5.png) 0 0 no-repeat;
    background-size: 26px auto;
    text-indent: -9999px;}
h1 {    font-family: 맑은고딕;
    margin-top: 25px;
    position: relative;
    padding: 6px 0 10px 28px;
    border-bottom: 2px solid #000;}
</style>


<main class="Wishlist-module__container--EE4As" data-turbolinks="false">
	<div class="Grid-module__container--YH1rv">
		<div class="Grid-module__row--GTpEN">
			<h1 class="Wishlist-module__title--vmxlt"><span class="ico">My</span>스크랩</h1>
		</div>
	</div>
	<article>
		
		<section class="WishlistDatePicker-module__datePicker--TipUy"></section>
		<section>
			<div class="WishlistOffers-module__container--VzyrO">
				<div class="Grid-module__container--YH1rv">
					<div class="Grid-module__row--GTpEN">
						<div class="WishlistOffers-module__offers--Vn713">
							<div class="CardGridContainer-module__container--Nms6z">
							
								<c:forEach var="dto" items="${list}">
									<a href="${pageContext.request.contextPath}/travelCourse/article?courseNum=${dto.courseNum}&page=${page}"
										class="CardContainer-module__container--B5cqm CardShare-module__container--lu1iP CardContainer-module__fixedWidth--XQbwP CardContainer-module__offer--Npil0 CardContainer-module__grid--El_OK"><div
											class="OfferVerticalCard-module__thumbnail--hPkZk">
											<div
												class="CardThumbnail-module__container--t05no CardThumbnail-module__vertical--fg4fQ">
												<div class="LazyImageLoader-module__container--xHxKX">
													<img alt=""
														class="LazyImageLoader-module__image--FB3yN MRT-LazyImageLoader__indicator LazyImageLoader-module__visible--n47Jt CardThumbnail-module__image--Tc1b4"
														src="${pageContext.request.contextPath}/uploads/course/${dto.saveFileName}">
													<div
														class="LazyImageLoader-module__placeholder--iH82U CardThumbnail-module__image--Tc1b4"></div>
												</div>
											</div>
										</div>
										<div
											class="OfferVerticalCard-module__body--QqE0h CardShare-module__body--SgF6m">
											<div class="CardCategory-module__container--QvB9e">
												<div class="CardCategory-module__label--cLofl"
													style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; 
													display: -webkit-box; -webkit-line-clamp: 1;">
													${dto.themeName}
												</div>
											</div>
											<h3
												class="CardTitle-module__container--l9OrK CardTitle-module__vertical--COffX">
												<div class="CardTitle-module__title--WAHI8"
													style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
													${dto.subject}</div>
											</h3>
											<div class="OfferVerticalCard-module__info--mUIkY">
												
												<div class="CardPriceForVertical-module__container--jmRSV">
													<span class="CardPriceForVertical-module__main--VVTBF">
														<span class="CardPriceForVertical-module__unit--TTngM"> 지역 : ${dto.cityName} <br> </span>
														<span class="CardPriceForVertical-module__unit--TTngM">기간 : ${dto.period} </span>
													</span>
													
												</div>
											</div>
										</div>
										<div class="OfferVerticalCard-module__wishlist--fZNLW">
											<i class="fas fa-bookmark scrap"></i>
										</div>
									</a>
								</c:forEach>
									
									
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</article>
	<div class="page-box">
		${dataCount == 0 ? "등록된 코스가 없습니다." : paging}
	</div>
</main>