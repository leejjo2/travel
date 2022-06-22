<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/hotel/hotelList.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/paginate.js"></script>
<style>
/* paginate */
.page-box { clear: both; padding: 20px 0; text-align: center; }

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
function deleteHotel(hotelNum) {
    let query = "hotelNum="+hotelNum;
    let url = "${pageContext.request.contextPath}/hotel/detail?" + query;
   	location.href = url;
}
</script>

<div class="container my-sm-4 p-0" style="margin-left: 30px;">
    <div id="content">
        <div class="d-sm-flex align-items-sm-center py-sm-3 px-md-3 location"> 
        	<input type="text" required placeholder="Location" class="mx-sm-2 mx-3 my-sm-0 my-2 form-control"> 
        	<input type="date" required placeholder="check in" class=" mx-md-2 mx-sm-1 mx-3 my-sm-0 my-2 form-control"> 
        	<input type="date" required placeholder="check out" class="mx-sm-2 mx-3 my-sm-0 my-2 form-control"> 
        	<input type="submit" value="검색" class="btn btn-primary mx-3 my-sm-0 mb-2"> 
        </div>
        <div class="d-sm-flex">
            <div class="me-sm-2">
                <div id="filter" class="p-2 bg-light ms-md-4 ms-sm-2 border">
                    <div class="border-bottom h5 text-uppercase">옵션</div>
                    <div class="box border-bottom">
                        <div class="box-label text-uppercase d-flex align-items-center">선택하세요 <button class="btn ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#inner-box" aria-expanded="false" aria-controls="inner-box"> <span class="fas fa-plus"></span> </button> </div>
                        <div id="inner-box" class="collapse show">
                            <div class="my-1"> <label class="tick">무료 WI-FI <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">금연 <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">흡연구역 <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">발코니 /테라스 <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">샤워실/욕조 <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">세탁기 <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">주방 <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">조식 <input type="checkbox"> <span class="check"></span> </label> </div>
                            <div class="my-1"> <label class="tick">오션뷰 <input type="checkbox"> <span class="check"></span> </label> </div>
                        </div>
                    </div>
                </div>
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
			                    	<div class="btn enquiry text-uppercase mx-2" onclick="location.href='${pageContext.request.contextPath}/hotel/hotelDetail?hotelNum=${dto.hotelNum}';">상세보기</div>
			                        <div class="btn btn-primary text-uppercase">예약하기</div>
			                    </div>
			                </div>
			            </div>
			        </c:forEach>
        		</div>
        		
        		
        </div>
    </div>
    
    <div class="page-box"></div>
    
</div>