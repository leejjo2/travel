<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">

<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/hotel/hotelDetail.css" type="text/css">

</head>
<body>

<div class="Grid-module__container--YH1rv">
    <div class="Grid-module__row--GTpEN">
        <div class="StayDetailDesktop-module__container--KuTRC">
            <article class="StayDetailDesktop-module__article--nuYpy">
                <section>
                    <header class="StayDetailHeaderDesktop-module__header--p7Or6">
                        <div class="StayDetailHeaderDesktop-module__headerWrapper--MRbx0">
                            <h2 class="StayDetailHeaderDesktop-module__title--Z4xQj StayDetailHeaderDesktop-module__withSummary--SuCKV">${dto.hotelName}</h2>
                            <div class="StayDetailHeaderDesktop-module__hashtag--Z2nXb">
                                <p class="StayHashTag-module__hashtag--iVCqy">4성급</p>
                            </div><a href="/accommodations/stays/1083146#StayDetail__review">
                                <div class="StayDetailHeaderDesktop-module__review--OFknh css-sbks2i--ReviewRatingCount--Container e1qwal8s3"><img class="css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg" alt="icon"><img class="css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg" alt="icon"><img class="css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_filled_blue_400.svg" alt="icon"><img class="css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_ratingstar_14x14_not_filled_gray_200.svg" alt="icon">
                                </div>
                            </a>
                            <div class="StayDetailHeaderDesktop-module__meta--hynTx">
                                <address class="StayDetailHeaderDesktop-module__address--AUPmn"><img src="https://dffoxz5he03rp.cloudfront.net/icons/ic_location_sm_line_gray_700.svg" alt="ic_location_sm_line_gray_700" class="StayDetailHeaderDesktop-module__ico--HXROE">${dto.hotelAddr1} , ${dto.hotelAddr2}</address>
                                <div class="StayDetailHeaderDesktop-module__checkInOut--Y0C1P"><img src="https://dffoxz5he03rp.cloudfront.net/icons/ic_clock_sm_outline_gray_700.svg" alt="ic_clock_sm_outline_gray_700" class="StayDetailHeaderDesktop-module__ico--HXROE">체크인 15:00 ~ 체크아웃 11:00</div>
                            </div>
                            
                        </div>
                    </header>
                    <div class="StayImageViewer-module__photo--WD7vM">
                        <div class="StayImageViewer-module__wrapper--R6Qcb">
                            <h4 class="StayImageViewer-module__title--a2h6Y"></h4>
                            <div class="StayImageViewer-module__wrapper--R6Qcb">
                                <div class="StayImageViewer-module__view--mA4wW" role="button" tabindex="-1">
                                    <ul>
                                        <li>
                                            <div class="StayImageViewer-module__big--X0znA" role="button" tabindex="-1" style="background-image: url(&quot;https://image.tport.io/gds_properties/35821/dc1eb3c2-2022-44d9-b72e-8dd30ab00aee-1000.jpg&quot;);">
                                                <div class="ImageLoader-module__container--BIQZz StayImageViewer-module__big--X0znA">
                                                    <div class="ImageLoader-module__absolute--Jtyy8 ImageLoader-module__loadedImage--gwyvB ImageLoader-module__container--BIQZz StayImageViewer-module__big--X0znA ImageLoader-module__fadeInImage--z2Yoe" title="" style="background-image: url('${pageContext.request.contextPath}/uploads/hotel/${dto.hotelSaveFilename}')"></div>
                                                    <div class="ImageLoader-module__absolute--Jtyy8 ImageLoader-module__children--aCOJM">
                                                        <div class="StayImageViewer-module__cover--QMBQz"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                    <section>
                        <div>
						<c:forEach var="room" items="${list}">
                            <section class="StayRoomDesktop-module__container--oJm9D layout-module__unset-min-height--ApB_X">
                                <div class="StayRoomDesktop-module__roomSummary--YACv2">
                                    <div class="StayRoomDesktop-module__roomImages--cnXOR">
                                        <div class="LazyImageLoader-module__container--xHxKX"><img alt="방이미지" class="LazyImageLoader-module__image--FB3yN MRT-LazyImageLoader__indicator LazyImageLoader-module__visible--n47Jt StayRoomDesktop-module__image--B2J58" src="${pageContext.request.contextPath}/uploads/hotel/${room.roomSaveFilename}">
                                            <div class="LazyImageLoader-module__placeholder--iH82U StayRoomDesktop-module__image--B2J58"></div>
                                        </div>
                                    </div>
                                    <div class="StayRoomDesktop-module__column--Gmr6W StayRoomDesktop-module__roomInfo--otxvB">
                                        <div class="StayRoomDesktop-module__nameContainer--AcNgi">
                                            <h3 class="StayRoomDesktop-module__name--CFUZD">${room.roomName}</h3>
                                        </div>
                                        <p class="StayRoomDesktop-module__desc--bxMsz"><img src="https://dffoxz5he03rp.cloudfront.net/icons/ic_person_12x12_line_gray_500.svg" alt="수용인원">기준 ${rdto.roomMen}인 </p>
                                        <p class="StayRoomDesktop-module__desc--bxMsz">호수 : ${room.roomHo} </p>
                                        <p class="StayRoomDesktop-module__desc--bxMsz">판매자 : ${room.partnerName} </p>
                                        <div class="StayTagLabels-module__container--XcFLa StayRoomDesktop-module__tag-list--oumS9"></div>
                                    </div>
                                </div>
                                <div class="StayRoomRatePlanDesktop-module__roomPackage--vO2Ew">
                                    <div class="StayRoomRatePlanDesktop-module__packageInfo--g5DmW">
                                        <div class="StayTagLabels-module__container--XcFLa"><span class="StayTag-module__container--i6tks StayTag-module__service--m2w40"><strong class="StayTag-module__label--QGLJh StayTag-module__service--m2w40"> 가격 </strong></span></div>
                                    </div>
                                    <div class="StayRoomRatePlanDesktop-module__priceBox--uqMXE">
                                        <div>
                                            <h1 class="StayPrice-module__mainPrice--kAnIk"><span class="StayPrice-module__benefitTotal--PfId7">${room.roomPrice}</span><span class="StayPrice-module__mainSuffix--RrxXq">원</span></h1>
                                        </div><button type="button" class="Button-module__button--nQweC Button-module__primary--loIc3 Button-module__medium--bLzcD" onclick="location.href='${pageContext.request.contextPath}/hotel/hotelReserve?hotelNum=${dto.hotelNum}&roomNum=${room.roomNum}';">예약</button>
                                    </div>
                                </div>
                            </section>
                            </c:forEach>
                        </div>
                    </section>
                <section class="StayDetailDesktop-module__subsection--k85Ly StayDetailDesktop-module__introduction--thV7D" id="StayDetail__introduction">
                    <div class="StayDetailIntroduction-module__container--XUNw2">
                        <div class="StayDetailIntroduction-module__inner--IHDNk">
                            <h3 class="StayDetailIntroduction-module__title--Tqsrt">소개</h3>
                            <div>
                                <p class="StayDetailIntroduction-module__info--yOI5f">[숙소소개]
                                    &lt;조식 금액 변경 안내&gt;
                                    * 시행일시 : 2022년 5월 4일 ~
                                    * 적용 대상 :
                                    체크인 일자 기준 2022년 7월 1일 이후건 부터 적용
                            </div>
                        </div>
                    </div>
                </section>
                
                <section id="StayDetail__review">
                    <div class=" css-1sfu9pu--ReviewListLayout-style--container">
                        <hr class="css-1yjat1i--ReviewListLayout-style--divider">
                        <div class="css-twkohc--ReviewListTitle-style--container">
                            <h1 class="css-1y92tfs--ReviewListTitle-style--title"><span class="css-1iavl9e--ReviewListTitle-style--text">후기</span><span class="css-hbns59--ReviewListTitle-style--number">26</span></h1>
                        </div>
                        <div class=" css-1u8qeou--ReviewListContent-style--container">

                            <div class="css-3rrsci--ReviewCommentList-style--wrapper">
                                <div class=" css-7ruqj6--ReviewComment-style--wrapper">
                                    <div class="css-1jjazzo--ReviewComment-style--textInfoWrapper">
                                        <div class="css-8in2oi--ReviewCommentInfo-style--scoreWrapper">
                                            <div class="css-b8ggop--RatingStars-style--container"><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span></div><span class="css-1ftpvuv--ReviewCommentInfo-style--username">♡*♡</span>
                                        </div>
                                        <div class="css-1vkng0a--ReviewCommentInfo-style--infoWrapper"><span>2022. 05. 16.</span><span class="css-1sz12bw--ReviewCommentInfo-style--divider">체크인 시 배정 3인 - 2인조식포함 객실 only</span></div>
                                        <div class="css-1cdknso--ReviewComment-style--comment">깔끔한 시설과 주변 관광지와의 접근성이 우수합니다.</div>
                                    </div>
                                    <div class="css-f89r2h--ReviewComment-style--image"><img alt="" loading="lazy" class="css-y5m0bt" src="https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/05/16/Z50L/kQpE2lzqUZ.jpg?width=157">
                                        <div class="css-qsngu5"><img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMyIgaGVpZ2h0PSIyNiIgdmlld0JveD0iMCAwIDMzIDI2Ij4KICAgIDxnIGZpbGw9IiNERUUyRTYiIGZpbGwtcnVsZT0iZXZlbm9kZCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCAxKSI+CiAgICAgICAgPGVsbGlwc2UgY3g9IjkuMjgxIiBjeT0iOCIgcng9IjMuMDk0IiByeT0iMyIvPgogICAgICAgIDxwYXRoIGZpbGwtcnVsZT0ibm9uemVybyIgZD0iTTI5LjUgMi43MTloLTI2VjIxLjI4aDI2VjIuNzJ6bTMtMS4wMzF2MjAuNjI1YzAgMS4xMzktLjg5NSAyLjA2Mi0yIDIuMDYyaC0yOGMtMS4xMDUgMC0yLS45MjMtMi0yLjA2M1YxLjY4OGMwLTEuMTM5Ljg5NS0yLjA2MiAyLTIuMDYyaDI4YzEuMTA1IDAgMiAuOTIzIDIgMi4wNjN6Ii8+CiAgICAgICAgPHBhdGggZmlsbC1ydWxlPSJub256ZXJvIiBkPSJNMjAuOTA4IDEwLjMzMWMuNDQyLS40NzYgMS4yMjQtLjQzMiAxLjYwNy4wOWw1LjEzOCA3Yy40ODYuNjYxLS4wMDMgMS41NzktLjg0IDEuNTc5SDguMjVjLS45MjYgMC0xLjM4My0xLjA5MS0uNzE5LTEuNzE3bDUuMzA0LTVjLjM4Ny0uMzY1IDEtLjM3OSAxLjQwNC0uMDNsMi43MTQgMi4zNCAzLjk1NS00LjI2MnoiLz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="placeholder thumbnail" class="css-1xdhyk6"></div>
                                    </div>
                                </div>
                                <div class=" css-7ruqj6--ReviewComment-style--wrapper">
                                    <div class="css-1jjazzo--ReviewComment-style--textInfoWrapper">
                                        <div class="css-8in2oi--ReviewCommentInfo-style--scoreWrapper">
                                            <div class="css-b8ggop--RatingStars-style--container"><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_not_filled_gray_200.svg" alt="icon"></span></div><span class="css-1ftpvuv--ReviewCommentInfo-style--username">석*우</span>
                                        </div>
                                        <div class="css-1vkng0a--ReviewCommentInfo-style--infoWrapper"><span>2022. 01. 15.</span></div>
                                        <div class="css-1cdknso--ReviewComment-style--comment">광치기 해변 바로 앞이고 오션뷰 숙소에서 바다와 일출봉을 바로 볼 수 있음에도 매우 저렴한편입니다. 주변에 식당도 많고 편의점, 카페, 은행 등등 이용하기 편하더군요. 연돈볼카츠도 근처에 있고요ㅎ 성산, 섭지코지, 우도 등 관광 포인트의 거점으로 삼을만합니다. 성산에 갈때마다 묵었는데, 앞으로도 그럴거 같네요. 번창하세요ㅎ</div>
                                    </div>
                                    <div class="css-f89r2h--ReviewComment-style--image"><img alt="" loading="lazy" class="css-y5m0bt" src="https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/01/17/VEEs/wiZn5QzTGm.jpg?width=157">
                                        <div class="css-qsngu5"><img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMyIgaGVpZ2h0PSIyNiIgdmlld0JveD0iMCAwIDMzIDI2Ij4KICAgIDxnIGZpbGw9IiNERUUyRTYiIGZpbGwtcnVsZT0iZXZlbm9kZCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCAxKSI+CiAgICAgICAgPGVsbGlwc2UgY3g9IjkuMjgxIiBjeT0iOCIgcng9IjMuMDk0IiByeT0iMyIvPgogICAgICAgIDxwYXRoIGZpbGwtcnVsZT0ibm9uemVybyIgZD0iTTI5LjUgMi43MTloLTI2VjIxLjI4aDI2VjIuNzJ6bTMtMS4wMzF2MjAuNjI1YzAgMS4xMzktLjg5NSAyLjA2Mi0yIDIuMDYyaC0yOGMtMS4xMDUgMC0yLS45MjMtMi0yLjA2M1YxLjY4OGMwLTEuMTM5Ljg5NS0yLjA2MiAyLTIuMDYyaDI4YzEuMTA1IDAgMiAuOTIzIDIgMi4wNjN6Ii8+CiAgICAgICAgPHBhdGggZmlsbC1ydWxlPSJub256ZXJvIiBkPSJNMjAuOTA4IDEwLjMzMWMuNDQyLS40NzYgMS4yMjQtLjQzMiAxLjYwNy4wOWw1LjEzOCA3Yy40ODYuNjYxLS4wMDMgMS41NzktLjg0IDEuNTc5SDguMjVjLS45MjYgMC0xLjM4My0xLjA5MS0uNzE5LTEuNzE3bDUuMzA0LTVjLjM4Ny0uMzY1IDEtLjM3OSAxLjQwNC0uMDNsMi43MTQgMi4zNCAzLjk1NS00LjI2MnoiLz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="placeholder thumbnail" class="css-1xdhyk6"></div>
                                    </div>
                                </div>
                                <div class=" css-7ruqj6--ReviewComment-style--wrapper">
                                    <div class="css-1jjazzo--ReviewComment-style--textInfoWrapper">
                                        <div class="css-8in2oi--ReviewCommentInfo-style--scoreWrapper">
                                            <div class="css-b8ggop--RatingStars-style--container"><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span></div><span class="css-1ftpvuv--ReviewCommentInfo-style--username">현*영</span>
                                        </div>
                                        <div class="css-1vkng0a--ReviewCommentInfo-style--infoWrapper"><span>2022. 01. 09.</span></div>
                                        <div class="css-1cdknso--ReviewComment-style--comment">엄청 깔끔하고 친절했어요 근데 밤에 잘 때 하수관 소리가 너무 커서... 잘 못 잤어요 ㅠㅠ 시설 자체는 쾌적하고 아주 좋아요!!</div>
                                    </div>
                                    <div class="css-f89r2h--ReviewComment-style--image"><img alt="" loading="lazy" class="css-y5m0bt" src="https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/01/17/sMls/77bF8GxEBV.jpg?width=157">
                                        <div class="css-qsngu5"><img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMyIgaGVpZ2h0PSIyNiIgdmlld0JveD0iMCAwIDMzIDI2Ij4KICAgIDxnIGZpbGw9IiNERUUyRTYiIGZpbGwtcnVsZT0iZXZlbm9kZCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCAxKSI+CiAgICAgICAgPGVsbGlwc2UgY3g9IjkuMjgxIiBjeT0iOCIgcng9IjMuMDk0IiByeT0iMyIvPgogICAgICAgIDxwYXRoIGZpbGwtcnVsZT0ibm9uemVybyIgZD0iTTI5LjUgMi43MTloLTI2VjIxLjI4aDI2VjIuNzJ6bTMtMS4wMzF2MjAuNjI1YzAgMS4xMzktLjg5NSAyLjA2Mi0yIDIuMDYyaC0yOGMtMS4xMDUgMC0yLS45MjMtMi0yLjA2M1YxLjY4OGMwLTEuMTM5Ljg5NS0yLjA2MiAyLTIuMDYyaDI4YzEuMTA1IDAgMiAuOTIzIDIgMi4wNjN6Ii8+CiAgICAgICAgPHBhdGggZmlsbC1ydWxlPSJub256ZXJvIiBkPSJNMjAuOTA4IDEwLjMzMWMuNDQyLS40NzYgMS4yMjQtLjQzMiAxLjYwNy4wOWw1LjEzOCA3Yy40ODYuNjYxLS4wMDMgMS41NzktLjg0IDEuNTc5SDguMjVjLS45MjYgMC0xLjM4My0xLjA5MS0uNzE5LTEuNzE3bDUuMzA0LTVjLjM4Ny0uMzY1IDEtLjM3OSAxLjQwNC0uMDNsMi43MTQgMi4zNCAzLjk1NS00LjI2MnoiLz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="placeholder thumbnail" class="css-1xdhyk6"></div>
                                    </div>
                                </div>
                                <div class=" css-7ruqj6--ReviewComment-style--wrapper">
                                    <div class="css-1jjazzo--ReviewComment-style--textInfoWrapper">
                                        <div class="css-8in2oi--ReviewCommentInfo-style--scoreWrapper">
                                            <div class="css-b8ggop--RatingStars-style--container"><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_not_filled_gray_200.svg" alt="icon"></span></div><span class="css-1ftpvuv--ReviewCommentInfo-style--username">황*빈</span>
                                        </div>
                                        <div class="css-1vkng0a--ReviewCommentInfo-style--infoWrapper"><span>2021. 12. 27.</span></div>
                                        <div class="css-1cdknso--ReviewComment-style--comment">세븐일레븐 있어서 넘 좋앗서여 ㅋㅋㅋㅋ 시티뷰도 구웃</div>
                                    </div>
                                    <div class="css-f89r2h--ReviewComment-style--image"><img alt="" loading="lazy" class="css-y5m0bt" src="https://dry7pvlp22cox.cloudfront.net/mrt-images-prod/2022/01/17/9zKy/6aTMDvGJJI.jpg?width=157">
                                        <div class="css-qsngu5"><img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMyIgaGVpZ2h0PSIyNiIgdmlld0JveD0iMCAwIDMzIDI2Ij4KICAgIDxnIGZpbGw9IiNERUUyRTYiIGZpbGwtcnVsZT0iZXZlbm9kZCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCAxKSI+CiAgICAgICAgPGVsbGlwc2UgY3g9IjkuMjgxIiBjeT0iOCIgcng9IjMuMDk0IiByeT0iMyIvPgogICAgICAgIDxwYXRoIGZpbGwtcnVsZT0ibm9uemVybyIgZD0iTTI5LjUgMi43MTloLTI2VjIxLjI4aDI2VjIuNzJ6bTMtMS4wMzF2MjAuNjI1YzAgMS4xMzktLjg5NSAyLjA2Mi0yIDIuMDYyaC0yOGMtMS4xMDUgMC0yLS45MjMtMi0yLjA2M1YxLjY4OGMwLTEuMTM5Ljg5NS0yLjA2MiAyLTIuMDYyaDI4YzEuMTA1IDAgMiAuOTIzIDIgMi4wNjN6Ii8+CiAgICAgICAgPHBhdGggZmlsbC1ydWxlPSJub256ZXJvIiBkPSJNMjAuOTA4IDEwLjMzMWMuNDQyLS40NzYgMS4yMjQtLjQzMiAxLjYwNy4wOWw1LjEzOCA3Yy40ODYuNjYxLS4wMDMgMS41NzktLjg0IDEuNTc5SDguMjVjLS45MjYgMC0xLjM4My0xLjA5MS0uNzE5LTEuNzE3bDUuMzA0LTVjLjM4Ny0uMzY1IDEtLjM3OSAxLjQwNC0uMDNsMi43MTQgMi4zNCAzLjk1NS00LjI2MnoiLz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="placeholder thumbnail" class="css-1xdhyk6"></div>
                                    </div>
                                </div>
                                <div class=" css-7ruqj6--ReviewComment-style--wrapper">
                                    <div class="css-hvciq2--ReviewComment-style--textInfoWrapper">
                                        <div class="css-8in2oi--ReviewCommentInfo-style--scoreWrapper">
                                            <div class="css-b8ggop--RatingStars-style--container"><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span></div><span class="css-1ftpvuv--ReviewCommentInfo-style--username">박*솔</span>
                                        </div>
                                        <div class="css-1vkng0a--ReviewCommentInfo-style--infoWrapper"><span>2022. 06. 12.</span><span class="css-1sz12bw--ReviewCommentInfo-style--divider">[단독 특가★]체크인 시 배정 2인(객실 only)</span></div>
                                        <div class="css-1cdknso--ReviewComment-style--comment">우도 왔다갔다하기도 너무 편하고 객실도 깨끗하고 가성비도 최고였어요</div>
                                    </div>
                                    
                                </div>
                                
                                <div class=" css-7ruqj6--ReviewComment-style--wrapper">
                                    <div class="css-hvciq2--ReviewComment-style--textInfoWrapper">
                                        <div class="css-8in2oi--ReviewCommentInfo-style--scoreWrapper">
                                            <div class="css-b8ggop--RatingStars-style--container"><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span></div><span class="css-1ftpvuv--ReviewCommentInfo-style--username">박*진</span>
                                        </div>
                                        <div class="css-1vkng0a--ReviewCommentInfo-style--infoWrapper"><span>2022. 05. 23.</span><span class="css-1sz12bw--ReviewCommentInfo-style--divider">[단독 특가★]디럭스 트윈 오션뷰(객실 only)</span></div>
                                        <div class="css-1cdknso--ReviewComment-style--comment">플레이스 캠프, 섭지코지 등과 가까워서 좋았어요. 방음 조금 작은 느낌이긴 했어요.</div>
                                    </div>
                                    
                                </div>
                                <div class=" css-7ruqj6--ReviewComment-style--wrapper">
                                    <div class="css-hvciq2--ReviewComment-style--textInfoWrapper">
                                        <div class="css-8in2oi--ReviewCommentInfo-style--scoreWrapper">
                                            <div class="css-b8ggop--RatingStars-style--container"><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span></div><span class="css-1ftpvuv--ReviewCommentInfo-style--username">김*연</span>
                                        </div>
                                        <div class="css-1vkng0a--ReviewCommentInfo-style--infoWrapper"><span>2022. 05. 22.</span><span class="css-1sz12bw--ReviewCommentInfo-style--divider">디럭스 더블(객실 only)</span></div>
                                        <div class="css-1cdknso--ReviewComment-style--comment">깨끗하구 충전기도빌려주셧고 침대도좋앗어요</div>
                                    </div>
                                    
                                </div>
                                <div class=" css-7ruqj6--ReviewComment-style--wrapper">
                                    <div class="css-hvciq2--ReviewComment-style--textInfoWrapper">
                                        <div class="css-8in2oi--ReviewCommentInfo-style--scoreWrapper">
                                            <div class="css-b8ggop--RatingStars-style--container"><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_not_filled_gray_200.svg" alt="icon"></span></div><span class="css-1ftpvuv--ReviewCommentInfo-style--username">정*희</span>
                                        </div>
                                        <div class="css-1vkng0a--ReviewCommentInfo-style--infoWrapper"><span>2022. 05. 09.</span><span class="css-1sz12bw--ReviewCommentInfo-style--divider">[여행 호캉스 특가★]디럭스 더블 오션뷰(객실 only)</span></div>
                                        <div class="css-1cdknso--ReviewComment-style--comment">조식도 가격대비 넘 좋았고 룸 컨디션도 괜찮았어요!!
                                            성산일출봉 뷰가 젤 좋은데 대신 방이 좁아요!
                                            2박 중에 1박은 조식 신청했는데 잘 한듯해요~
                                            기대이상 만족하였습니다!! 직원분들도 친절했고 편의점도 1층에 있고 추천해요!! 진짜 힘들게 고민하며 골랐는데 남자친구가 담에도 여기오자고 하더라구요 ㅋㅋ
                                        </div>
                                    </div>
                                    
                                </div>
                                <div class=" css-7ruqj6--ReviewComment-style--wrapper">
                                    <div class="css-hvciq2--ReviewComment-style--textInfoWrapper">
                                        <div class="css-8in2oi--ReviewCommentInfo-style--scoreWrapper">
                                            <div class="css-b8ggop--RatingStars-style--container"><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span><span class="css-tfp873--RatingStars-style--size"><img class="mrt-star css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_rating_star_12x12_filled_blue_400.svg" alt="icon"></span></div><span class="css-1ftpvuv--ReviewCommentInfo-style--username">최*식</span>
                                        </div>
                                        <div class="css-1vkng0a--ReviewCommentInfo-style--infoWrapper"><span>2022. 05. 09.</span><span class="css-1sz12bw--ReviewCommentInfo-style--divider">[여행 호캉스 특가★]스탠다드 더블(객실 only)</span></div>
                                        <div class="css-1cdknso--ReviewComment-style--comment">위치좋고 가격저렴하고 성산일출봉등 관광지 가까워 좋음</div>
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="css-kknodv">
                                <div class="css-aymlz4">
                                    <li><button type="button" class="css-13fjuep"><span class="css-5lup2s"><img class="css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_arrow_left_sm_gray_300.svg" alt="icon"></span></button></li>
                                    <li><button type="button" class="css-1flvkj3"><span class="css-5lup2s">1</span></button></li>
                                    <li><button type="button" class="css-1ukk765"><span class="css-5lup2s">2</span></button></li>
                                    <li><button type="button" class="css-1ukk765"><span class="css-5lup2s">3</span></button></li>
                                    <li><button type="button" class="css-13fjuep"><span class="css-5lup2s"><img class="css-labkkb" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_arrowright_sm_blue_500.svg" alt="icon"></span></button></li>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="css-11vligd--QueryClientProvider--Container ezcanq20"></div>
                </section>
            </article>
            <aside class="StayDetailDesktop-module__aside--m7usv" data-sticky-container="true">
                <div class="StayDetailDesktop-module__sidebar--koS_U">
                    <div class="StaySideBar-module__container--LzdcQ">
                        <div class="StaySideBar-module__sideBar--mW8v2">
                            <div class="StaySideBar-module__wrapper--HpLbH">
                                <p class="StaySideBarPrice-module__totalPrice--nbnzY"><span class="StaySideBarPrice-module__nights--NaYZG">1박</span>최저가 ${minPrice}<small>원~</small></p>
                                <div class="StaySideBar-module__shareBtn--gSs9Z">
                                    <div class=" css-q35oaw--ShareButton-style--container">
                                        <div class="css-2dmbly--SharePopover-style--container">
                                            <div class="css-10s3d7h--SharePopover-style--content">
                                                <div class="css-16pzmws--SharePopover-style--header">
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div><a href=""><button type="button" class="Button-module__button--nQweC Button-module__primary--loIc3 Button-module__large--vtisu StaySideBar-module__selectBtn--WD6HD">객실 선택하기</button></a>
                        </div>
                    </div>
                </div>
            </aside>
        </div>
    </div>
</div>

</body>
</html>