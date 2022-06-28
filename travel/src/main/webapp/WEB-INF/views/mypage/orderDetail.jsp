<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
*{font-family: '맑은고딕'}
.title{position: relative; width: 100%;     padding-top: 48px; margin-bottom: 20px;}
.title2{border-bottom: 1px solid lightgray; margin: 0 auto; position: relative; width: 1060px; }
.title_text{color: #343a40; font-size: 32px; font-weight: 700; margin-bottom: 24px}
.table_title{vertical-align:middle; background: #efefef; text-align: center; font-size: 16px; font-family: 맑은고딕; font-weight: normal;}
.table{ text-align: center;}
.using{background: #7a7575d1; padding: 7px; color: white; font-family: '맑은고딕'; border-radius: 3px;}
.notUsing {background: #0aabcb; padding: 7px; color: white; font-family: '맑은고딕'; border-radius: 3px;}
.order td {height: 60px; vertical-align: middle; font-size: 16px;}
.one {    display: block; padding: 0 8px;     text-align: center;}
</style>

<div class="container" style="width:1060px;">
	<div class="title">
		<div class="title2">
			<h1 class="title_text">주문 내역</h1>
		</div>
	</div>
	
	<div style="margin-bottom: 100px;">
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
			    <tr class="order">
			      <td>${dto.payDate}</th>
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
	<div class="page-box">
		${dataCount == 0 ? "등록된 코스가 없습니다." : paging}
	</div>			
</div>					
														

									
