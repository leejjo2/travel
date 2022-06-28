<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/hotel/hotelList.css"
	type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/paginate.js"></script>

<style>
/* paginate */
.page-box {
	clear: both;
	padding: 20px 0;
	text-align: center;
}

.paginate {
	text-align: center;
	white-space: nowrap;
	font-size: 14px;
}

.paginate a {
	border: 1px solid #ccc;
	color: #000;
	font-weight: 600;
	text-decoration: none;
	padding: 3px 7px;
	margin-left: 3px;
	vertical-align: middle;
}

.paginate a:hover, .paginate a:active {
	color: #6771ff;
}

.paginate span {
	border: 1px solid #e28d8d;
	color: #cb3536;
	font-weight: 600;
	padding: 3px 7px;
	margin-left: 3px;
	vertical-align: middle;
}

.paginate :first-child {
	margin-left: 0;
}
</style>

<script type="text/javascript">
	/*
	 window.addEventListener("load", function(){
	 let page = ${page};
	 let pageSize = ${rows};
	 let dataCount = ${dataCount};
	 let url = "${listUrl}";
	
	 let total_page = pageCount(dataCount, pageSize);
	 let paging = pagingUrl(page, total_page, url);
	
	 document.querySelector(".dataCount").innerHTML = dataCount +"개 (" 
	 + page + "/" + total_page + "페이지)";
	
	 document.querySelector(".page-box").innerHTML = 
	 dataCount == 0 ? "등록된 게시물이 없습니다." : paging;
	
	 }, false);
	 * 
	 */

	function deleteHotel(hotelNum) {
		if (confirm("숙소를 삭제 하시겠습니까 ? ")) {
			let query = "hotelNum=" + hotelNum + "&roomNum=${roomNum}";
			let url = "${pageContext.request.contextPath}/partner/lodgingManage/delete?"
					+ query;
			location.href = url;
		}
	}
</script>

<div class="right_col" role="main" style="min-height: 1758px;">


	<div class="my-sm-4 p-0" style="margin-right: 150px;">
		<div class="row">
			<div class="body-container">
				<div class="body-title">
					<h3>
						<i class="bi bi-book-half"></i> 내 숙소 리스트
					</h3>
				</div>
			</div>

			<button type="button" class="btn btn-light"
				onclick="location.href='${pageContext.request.contextPath}/partner/lodgingManage/lodgingWrite';">숙소
				등록하기</button>
		</div>
		<div id="content">
			<c:forEach var="dto" items="${list}">
				<div class="bg-white p-2 border" id="hotels">
					<div class="hotel py-2 px-2 pb-4 border-bottom">
						<div class="row">
							<div class="col-lg-3">
								<img src="${pageContext.request.contextPath}/uploads/hotel/${dto.hotelSaveFilename}" alt="" class="hotel-img">
							</div>
							<div class="col-lg-9">
								<div class="d-md-flex align-items-md-center">
									<div class="name">${dto.hotelName}<span class="city">
											우편번호 : ${dto.hotelZip} | 주소 : ${dto.hotelAddr1},
											${dto.hotelAddr2}</span>
									</div>
								</div>

								<div class="d-flex flex-column tags pt-1">
									<div>
										<span class="fas fa-comment-dollar"></span>${dto.hotelIntro}</div>
									<div>
										<span class="fas fa-receipt"></span> 옵션
									</div>
									<div>
										<span class="fas fa-concierge-bell"></span> 옵션
									</div>
								</div>
							</div>
						</div>
						<div class="d-flex justify-content-end mt-1">
							<div class="btn btn-primary text-uppercase"
								onclick="location.href='${pageContext.request.contextPath}/partner/lodgingManage/update?hotelNum=${dto.hotelNum}';">수정</div>
							<div class="btn btn-success text-uppercase"
								onclick="location.href='${pageContext.request.contextPath}/partner/lodgingManage/roomWrite?hotelNum=${dto.hotelNum}';">방
								등록</div>
							<div class="btn enquiry text-uppercase"
								onclick="deleteHotel('${dto.hotelNum}');">삭제</div>
						</div>
					</div>
				</div>
			</c:forEach>

			<div class="page-box"></div>

		</div>
	</div>
</div>