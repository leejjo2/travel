<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


   
<style type="text/css">
*{font-family: '맑은고딕';}
.using{background: #7a7575d1; padding: 7px; color: white; font-family: '맑은고딕'; border-radius: 3px;}
.notUsing {background: #0aabcb; padding: 7px; color: white; font-family: '맑은고딕'; border-radius: 3px;}
a {border: none;}
.aImg{width: 390px; height: 300px; }
</style>

<div style="margin-bottom: 50px;" >
	<h3 style="font-size: 15px; padding-top: 10px;"><i class="icofont-double-right"></i>주문 정보</h3>
	<table class="table td-border mx-auto my-10">
		<tr>
			<td class="wp-15 text-center bg-light">예약번호</td>
			<td class="wp-35 ps-5">${dto.reserveNum}</td>
			<td class="wp-15 text-center bg-light">아이디</td>
			<td class="wp-35 ps-5">${dto.userId}</td>
		</tr>
		<tr>
			<td class="text-center bg-light" colspan="1">상품명</td>
			<td class="ps-5 bg-white" colspan="3">
				<a href="${pageContext.request.contextPath}/activity/detail?activityNum=${dto.activityNum}&page=1">${dto.activityName}</a>
			</td>		
		</tr>
		<tr>
			<td class="text-center bg-light">결제 금액</td>
			<td class="ps-5"> &#8361; ${dto.payAmount} </td>
			<td class="text-center bg-light">마일리지 사용</td>
			<td class="ps-5" >${dto.mileageUse}</td>
		</tr>		
		<tr>
			<td class="text-center bg-light">결제완료일</td>
			<td class="ps-5" >${dto.payDate}</td>
			<td class="text-center bg-light">사용날짜</td>
			<td class="ps-5">${dto.usingDate}</td>
			
		</tr>
		<tr>
			<td class="text-center bg-light">사용여부</td>
			<td class="ps-5">
				<span class="${dto.usingStatus == '미사용' ? 'notUsing' : 'using' }" >${dto.usingStatus}</span>
			</td>
		</tr>
	</table>
	
	<h3 style="font-size: 15px; padding-top: 10px;"><i class="icofont-double-right"></i>예약 정보</h3>	
		<table class="table td-border mx-auto my-10">
		<tr>
			<td class="ps-5 bg-white" colspan="4">
			<img alt="${dto.activityName}" class="aImg" src="${pageContext.request.contextPath}/uploads/activity/${dto.titleImgname}">
			</td>		
		</tr>
		<tr>
			<td class="text-center bg-light" colspan="1">상품명</td>
			<td class="ps-5 bg-white" colspan="3">${dto.activityName}</td>		
		</tr>
		<tr>
			<td class="wp-15 text-center bg-light">예약자명</td>
			<td class="wp-35 ps-5">${dto.name}</td>
			<td class="wp-15 text-center bg-light">예약완료일</td>
			<td class="wp-35 ps-5">${dto.reserveDoneDate}</td>
		</tr>
		<tr>
			<td class="text-center bg-light" colspan="1">전화번호</td>
			<td class="ps-5 bg-white">
			${dto.tel}
			</td>
			<td class="wp-15 text-center bg-light">이메일</td>
			<td class="wp-35 ps-5">${dto.email}</td>		
		</tr>
		<tr>
			<td class="text-center bg-light">가격</td>
			<td class="ps-5"> &#8361; ${dto.price} </td>
			<td class="text-center bg-light">총 인원</td>
			<td class="ps-5" >${dto.totalMen}명</td>
		</tr>		
		
	</table>
</div>