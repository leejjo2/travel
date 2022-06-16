<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/hotel/hotelList.css" type="text/css">

<script type="text/javascript">
<c:if test="${sessionScope.member.userId==dto.userId||sessionScope.member.membership>90}">
	function deleteHotel() {
	    if(confirm("게시글을 삭제 하시 겠습니까 ? ")) {
		    let query = "num=${dto.hotelNum}";
		    let url = "${pageContext.request.contextPath}/lodging/delete?" + query;
	    	location.href = url;
	    }
	}
</c:if>
</script>

<div class="right_col" role="main" style="min-height: 1758px;">


	<div class="my-sm-4 p-0" style="margin-right: 150px;">
	<div class="row">
		<div class="body-container">	
			<div class="body-title">
				<h3><i class="bi bi-book-half"></i> 내 숙소 리스트 </h3>
			</div>
		</div>
			
		<button type="button" class="btn btn-light" 
			onclick="location.href='${pageContext.request.contextPath}/partner/lodgingManage/lodgingWrite';">숙소 등록하기
		</button>
	</div>
	    <div id="content">
			<c:forEach var="dto" items="${list}">	            
	            <div class="bg-white p-2 border" id="hotels">
	                <div class="hotel py-2 px-2 pb-4 border-bottom">
	                    <div class="row">
	                        <div class="col-lg-3"> <img src="https://images.unsplash.com/photo-1580835845971-a393b73bf370?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80" alt="" class="hotel-img"> </div>
	                        <div class="col-lg-9">
	                            <div class="d-md-flex align-items-md-center">
	                                <div class="name">${dto.hotelName}<span class="city"> 우편번호 : ${dto.hotelZip} | 주소 : ${dto.hotelAddr1}, ${dto.hotelAddr2}</span> </div>
	                            </div>
	                            <div class="rating"> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="far fa-star"></span> <!-- Book now Enquiry -->
	                            </div>
	                            <div class="d-flex flex-column tags pt-1">
	                                <div><span class="fas fa-comment-dollar"></span>${dto.hotelIntro}</div>
	                                <div><span class="fas fa-receipt"></span> 옵션</div>
	                                <div><span class="fas fa-concierge-bell"></span> 옵션</div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="d-flex justify-content-end mt-1">
	                    	<div class="btn enquiry text-uppercase mx-2" onclick="deleteHotel();">삭제</div>
	                        <div class="btn btn-primary text-uppercase">수정</div>
	                    </div>
	                </div>
	            </div>
	        </c:forEach>
	     </div>
	 </div>
</div>