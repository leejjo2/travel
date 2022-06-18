<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style type="text/css">
.body-container {width: 900px; margin: 50px auto 10px }

.body-title {
    padding-top: 25px; padding-bottom: 5px;
    color: #424951;
    border-bottom: 1px solid #ddd;
}

.body-title h3 {
    min-width: 300px;
    padding-bottom: 5px;
    font-size: 23px;
    font-family:"Malgun Gothic", "맑은 고딕", NanumGothic, 나눔고딕, 돋움, sans-serif;
    font-weight: bold;
    display: inline-block;
    border-bottom: 3px solid #424951;
}

.btncolor {
	background: lightblue;
	margin: 0;
}

.writeBtn {
	float: right;
	margin: 10px 0;
}





.StayListItemDesktop-module__section--S8on6:first-child {
    margin-top: 8px;
    background: white;
}

.StayListItemDesktop-module__section--S8on6 {
    align-items: start;
    border-radius: 2px;
    box-shadow: inset 0 0 0 1px hsl(212deg 7% 43% / 20%);
    cursor: pointer;
    display: flex;
    height: 200px;
    margin-bottom: 16px;
    min-height: 0;
    min-height: auto;
    position: relative;
    transition: box-shadow .2s;
    z-index: 1;
}

.StayListItemDesktop-module__image--xHX1C {
    height: 100%;
    padding: 1px;
    width: 258px;
}

.StayMainImage-module__container--_nxbF {
    height: 100%;
    position: relative;
}

.LazyImageLoader-module__container--xHxKX {
    height: 100%;
    position: relative;
    width: 100%;
}

.StayListItemDesktop-module__image--xHX1C .StayListItemDesktop-module__roundImage--L2pj2 {
    border-radius: 1px 0 0 1px;
}

.LazyImageLoader-module__image--FB3yN.LazyImageLoader-module__visible--n47Jt, .LazyImageLoader-module__placeholder--iH82U.LazyImageLoader-module__visible--n47Jt {
    opacity: 1;
}

.StayMainImage-module__image--AHeWC {
    height: 100%;
    width: 100%;
}

.LazyImageLoader-module__image--FB3yN, .LazyImageLoader-module__placeholder--iH82U {
    -o-object-fit: cover;
    object-fit: cover;
    opacity: 0;
    transition: opacity .5s;
}


.StayListItemDesktop-module__lodgeInfo--yGNFs div {
	text-align: right;
}

.StayListItemDesktop-module__lodgeInfo--yGNFs div:first-child {
	text-align: left;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.StayListItemDesktop-module__lodgeInfo--yGNFs {
	text-align: right;
    height: 100%;
    width: 70%;
}
</style>

<script type="text/javascript">
function deleteActivity() {
	let num = $(".deleteBtn").attr("data-activityNum");
	let titleImgname = $(".deleteBtn").attr("data-titleImgname");
	let query = "num="+num+"&page=${page}&titleImgname="+titleImgname;
    let url = "${pageContext.request.contextPath}/partner/activityManage/delete?" + query;
    
    console.log(url);
    if(confirm("해당 액티비티를 삭제하시겠습니까?")) {
  	  location.href = url;
    }
}
</script>

<div class="right_col" role="main" style="min-height: 1758px;">
	<div class="container">
		<div class="body-container">
			<div class="body-title">
				<h3>
					<i class="bi bi-book-half"></i> 액티비티 리스트
				</h3>
				<span class="writeBtn">
					<button type="button" class="btn btncolor btn-light"
						onclick="location.href='${pageContext.request.contextPath}/partner/activityManage/write';">등록하기
					</button>
				</span>
			</div>

			<div class="body-main">
				<div class="alert alert-info" role="alert">
					<i class="bi bi-question-square"></i>등록한 액티비티를 관리할 수 있습니다.
				</div>
			</div>
			<c:if test="${list}.length == 0">
				액티비티를 등록해주세요.
			</c:if>
			<c:forEach var="dto" items="${list}">
				<section class="StayListContents-module__hotels--gr5EF">
					<section class="StayListItemDesktop-module__section--S8on6">
						<div class="StayListItemDesktop-module__image--xHX1C">
							<div class="StayMainImage-module__container--_nxbF">
								<div class="LazyImageLoader-module__container--xHxKX">
									<img class="LazyImageLoader-module__image--FB3yN LazyImageLoader-module__visible--n47Jt StayMainImage-module__image--AHeWC StayListItemDesktop-module__roundImage--L2pj2"
										src="${pageContext.request.contextPath}/uploads/activity/${dto.titleImgname}">
								</div>
							</div>
						</div>
						<div class="StayListItemDesktop-module__lodgeInfo--yGNFs">
							<div class="StayListItemDesktop-module__info--D3Yss">
								<h2>&nbsp;[<span>${dto.cityName}</span>] ${dto.activityName}</h2>
							</div>
							<br><br>
							<div><span>${dto.totalTime}</span></div>
							<div><span>${dto.activityType}</span></div>
							<div><span>${dto.price}</span>원/ 1인</div>
							<br>
							<div>
								<button class="btn btn-light btncolor" onclick="location.href='${pageContext.request.contextPath}/partner/activityManage/update?num=${dto.activityNum}&page=${page}';">수정</button>
								<button class="btn btn-light btncolor deleteBtn" data-titleImgname="${dto.titleImgname}" data-activityNum="${dto.activityNum}" onclick="deleteActivity();">삭제</button>
							</div>
						</div>
					</section>
				</section>
			</c:forEach>
			<div class="page-box">
				${dataCount == 0 ? "등록된 게시물이 없습니다." : paging}
			</div>
		</div>
	</div>
</div>
