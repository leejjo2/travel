<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/hotel/hotelList.css"
	type="text/css">

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

	function deleteRoom(roomNum) {
		if (confirm("방을 삭제 하시겠습니까 ? ")) {
			let query = "roomNum=" + roomNum;
			let url = "${pageContext.request.contextPath}/partner/lodgingManage/roomDelete?"+ query;
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
						<i class="bi bi-book-half"></i> 내 방 리스트
					</h3>
				</div>
			</div>
		</div>
		
				<div id="content">
			<c:forEach var="dto" items="${list}">
				<div class="bg-white p-2 border" id="rooms">
					<div class="hotel py-2 px-2 pb-4 border-bottom">
						<div class="row">
							<div class="col-lg-3">
								<img src="" alt="" class="room-img">
							</div>
							<div class="col-lg-9">
								<div class="d-md-flex align-items-md-center">
									<div class="name">${dto.roomName}<span class="city">
											가격 : ${dto.roomPrice} | 호수 : ${dto.roomHo}</span>
									</div>
								</div>

								<div class="d-flex flex-column tags pt-1">
									<div>
										<span class="fas fa-comment-dollar">숙소이름 : ${dto.hotelName}</span></div>
									<div>
										<span class="fas fa-comment-dollar"></span> 숙박 가능 인원 : ${dto.roomMen}</div>
									<div>
										<span class="fas fa-receipt"></span> 침대 : ${dto.roomBed}
									</div>
									<div>
										<span class="fas fa-concierge-bell"></span> 옵션 : ${dto.roomOption}
									</div>
								</div>
							</div>
						</div>
						<div class="d-flex justify-content-end mt-1">
							<div class="btn btn-primary text-uppercase"
								onclick="location.href='${pageContext.request.contextPath}/partner/lodgingManage/roomUpdate?hotelNum=${dto.hotelNum}&roomNum=${dto.roomNum}';">수정</div>
							<div class="btn enquiry text-uppercase"
								onclick="deleteRoom('${dto.roomNum}');">삭제</div>
						</div>
					</div>
				</div>
			</c:forEach>

			<div class="page-box"></div>
		</div>
	</div>
</div>