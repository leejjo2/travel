<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script>
function comma(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}

$(function() {
	$(".totalPrice").html(comma(${dto.totalPrice})+"원");
	$(".mileageUse").html(comma(${dto.mileageUse})+"원");
	$(".payAmount").html(comma(${dto.payAmount})+"원");
});
</script>

<h3 style="font-size: 15px; padding-top: 10px;"><i class="icofont-double-right"></i>예약 정보</h3>
<table class="table td-border mx-auto my-10">
	<tr>
		<td class="wp-15 text-center bg-light">예약번호</td>
		<td class="wp-35 ps-5">${dto.reserveNum}</td>
		<td class="wp-15 text-center bg-light">액티비티명</td>
		<td class="wp-35 ps-5">${dto.activityName}</td>
	</tr>
	<tr>
		<td class="text-center bg-light">예약자명</td>
		<td class="ps-5">${dto.name}</td>
		<td class="text-center bg-light">전화번호</td>
		<td class="ps-5">${dto.tel}</td>
	</tr>
	<tr>
		<td class="text-center bg-light">이메일</td>
		<td class="ps-5">${dto.email}</td>
		<td class="text-center bg-light">예약일자</td>
		<td class="ps-5">${dto.reserveDoneDate}</td>
	</tr>
	<tr>
		<td class="text-center bg-light">인원</td>
		<td class="ps-5">${dto.totalMen}명</td>
		<td class="text-center bg-light">주문금액</td>
		<td class="ps-5 totalPrice"></td>
	</tr>
	<tr>
		<td class="text-center bg-light">마일리지 사용금액</td>
		<td class="ps-5 mileageUse"></td>
		<td class="text-center bg-light">결제금액</td>
		<td class="ps-5 payAmount"></td>
	</tr>
	<tr>
		<td class="text-center bg-light">예약상태</td>
		<td class="ps-5">${dto.reserveStatus}</td>
	</tr>
</table>

