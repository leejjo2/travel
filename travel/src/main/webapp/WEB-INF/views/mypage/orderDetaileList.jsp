<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/jquery/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
    
<style type="text/css">
*{font-family: '맑은고딕'}
.title{position: relative; width: 100%;     padding-top: 48px; margin-bottom: 20px;}
.title2{ margin: 0 auto; position: relative; width: 1060px; }
.title_text{color: #343a40; font-size: 32px; font-weight: 700; margin-bottom: 24px}
.table_title{border-bottom: 3px solid #dfdbdb; vertical-align:middle; background: #efefef; text-align: center; font-size: 16px; font-family: 맑은고딕; font-weight: normal;}
.table{ text-align: center;}
.using{background: #7a7575d1; padding: 7px; color: white; font-family: '맑은고딕'; border-radius: 3px;}
.notUsing {background: #0aabcb; padding: 7px; color: white; font-family: '맑은고딕'; border-radius: 3px;}
.order td {height: 60px; vertical-align: middle; font-size: 16px;}
.one {    display: block; padding: 0 8px;     text-align: center;}
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
.order:hover {	background: #ccebf354;}
</style>

<script type="text/javascript">
function ajaxFun(url, method, query, dataType, fn) {
	$.ajax({
				type : method,
				url : url,
				data : query,
				dataType : dataType,
				success : function(data) {
					fn(data);
				},
				beforeSend : function(jqXHR) {
					jqXHR.setRequestHeader("AJAX", true);
				},
				error : function(jqXHR) {
					if (jqXHR.status === 403) {
						location.href = "${pageContext.request.contextPath}/member/login";
						return false;
					} else if (jqXHR.status === 400) {
						alert("요청 처리가 실패했습니다.");
						return false;
					}
					console.log(jqXHR.responseText);
				}
			});
}


function detailedMember(reserveNum) {
	var dlg = $("#order-dialog").dialog({
		autoOpen : false,
		modal : true,
		height : 540,
		width : 830,
		title : "예약상세정보",
		close : function(event, ui) {
		}
	});

	let url = "${pageContext.request.contextPath}/mypage/orderDetaile";
	let query = "reserveNum=" + reserveNum;

	const fn = function(data) {
		$('#order-dialog').html(data);
		dlg.dialog("open");
	};
	ajaxFun(url, "post", query, "html", fn);
}

</script>


<div class="container" style="width:1060px;">
	<div class="title">
		<div class="title2">
			<h1 class="title_text"><span class="ico">My</span>예약 내역</h1>
		</div>
	</div>
	
	<div style="margin-bottom: 100px; margin-top: 50px;">
		<table class="table" style="width:1060px;">
		<tbody>
		
		    <tr class="table_title">
		      <th scope="col">결제일</th>
		      <th scope="col">예약번호</th>
		      <th scope="col">상품명</th>
		      <th scope="col">이용일</th>
		      <th scope="col" style="font-size: 15px;"><div><span class="one">마일리지</span><span class="one">사용금액</span></div></th>
		      <th scope="col">결제금액</th>
		      <th scope="col" style="padding: 0 25px;">상태</th>
		    </tr>
		    
		    <c:forEach var="dto" items="${list}">
			    <tr class="order" onclick="detailedMember('${dto.reserveNum}');">
			      <td>${dto.payDate}</td>
			      <td>${dto.reserveNum}</td>
			      <td>${dto.activityName}</td>
			      <td>${dto.usingDate}</td>
			      <td id="mileageUse">${dto.mileageUse}</td>
			      <td id="payAmount">${dto.payAmount}</td>
			      <td><span class="${dto.usingStatus == '미사용' ? 'notUsing' : 'using' }" >${dto.usingStatus}</span></td>
			    </tr>
		    </c:forEach>
		   
		  </tbody>
		</table>	
	</div>	
	<div class="page-box" style="margin-bottom: 100px;">
		${dataCount == 0 ? "주문 내역이 없습니다." : paging}
	</div>		
	<div id="order-dialog" style="display: none;"></div>
		
</div>					
														

									
