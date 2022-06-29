<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style type="text/css">
.body-main {
	max-width: 1200px;
}
.body-container {width: 1000px; margin: 150px auto 10px }

.body-title {
    padding-top: 25px; padding-bottom: 5px;
    color: #424951;
    border-bottom: 1px solid #ddd;
}

.table-list tbody {
    background-color: white;
}

.table td, .table th {
    padding: 0.75rem;
    vertical-align: middle;
    border-top: 1px solid #dee2e6;
}

.paymentComplete {
	background: #2f93f9;
    padding: 7px;
    color: white;
    font-family: '맑은고딕';
    border-radius: 3px;
}

.cancel {
	background: #c23704;
    padding: 7px;
    color: white;
    font-family: '맑은고딕';
    border-radius: 3px;
}


</style>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tabs.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css" type="text/css">

<script type="text/javascript">
function ajaxFun(url, method, query, dataType, fn) {
	$.ajax({
		type:method,
		url:url,
		data:query,
		dataType:dataType,
		success:function(data){
			fn(data);
		},
		beforeSend : function(jqXHR) {
			jqXHR.setRequestHeader("AJAX", true);
		},
		error : function(jqXHR) {
			if (jqXHR.status === 403) {
				location.href="${pageContext.request.contextPath}/member/login";
				return false;
			} else if(jqXHR.status === 400) {
				alert("요청 처리가 실패했습니다.");
				return false;
			}
			console.log(jqXHR.responseText);
		}
	});
}

function searchList() {
	const f = document.searchForm;
	f.reserveStatus.value=$("#selectStatus").val();// 결제 상태 값 넣기
	f.action="${pageContext.request.contextPath}/partner/activityManage/reserveList";
	f.submit();
}

function detailedReserve(reserveNum) {
	var dlg = $("#reserve-dialog").dialog({
		  autoOpen: false,
		  modal: true,
		  height: 540,
		  width: 830,
		  title: "예약상세정보",
		  close: function(event, ui) {
		  }
	});

	let url = "${pageContext.request.contextPath}/partner/activityManage/reserveDetail";
	let query = "reserveNum="+reserveNum;
	
	const fn = function(data){
		$('#reserve-dialog').html(data);
		dlg.dialog("open");
	};
	ajaxFun(url, "post", query, "html", fn);
}

</script>

<div class="right_col" role="main" style="min-height: 1758px;">
	<div class="container">
		<div class="body-container">
			<div class="body-title">
				<h2>예약 현황</h2>
		    </div>
		    <div class="body-main">
				<table class="table" style="margin-bottom: 0px;">
					<tr>
						<td align="left" width="50%">
							${dataCount}개(${page}/${total_page} 페이지)
						</td>
						<td align="right">
							<select id="selectStatus" class="form-select" onchange="searchList();">
								<option value="">::상태::</option>
								<option value="결제완료" ${reserveStatus =="결제완료" ? "selected='selected'":""}>결제완료</option>
								<option value="취소" ${reserveStatus =="취소" ? "selected='selected'":""}>취소</option>
							</select>
						</td>
					</tr>
				</table>
					
				<table class="table table-border table-list">
					<thead>
						<tr> 
							<th class="wx-60">예약번호</th>
							<th class="wx-80">예약자명</th>
							<th class="wx-120">전화번호</th>
							<th class="wx-120">액티비티명</th>
							<th class="wx-100">예약일자</th>
							<th class="wx-80">주문금액</th>
							<th class="wx-80">예약상태</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach var="dto" items="${list}">
						<tr class="hover" onclick="detailedReserve('${dto.reserveNum}');"> 
							<td>${dto.reserveNum}</td>
							<td>${dto.name}</td>
							<td>${dto.tel}</td>
							<td>${dto.activityName}</td>
							<td>${dto.reserveDoneDate}</td>
							<td>${dto.totalPrice}</td>
							<td><span class="${dto.reserveStatus == '결제완료' ? 'paymentComplete' : 'cancel'}">${dto.reserveStatus}</span></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
						 
				<div class="page-box">
					${dataCount == 0 ? "등록된 결제정보가 없습니다." : paging}
				</div>
						
				<table class="table">
					<tr>
						<td align="left" width="120">
							<button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/partner/activityManage/reserveList';">새로고침</button>
						</td>
						<td align="center">
							<form name="searchForm" action="${pageContext.request.contextPath}/partner/activityManage/reserveList" method="post">
								<select name="condition" class="form-select">
									<option value="name"    		  ${condition=="name" ? "selected='selected'":""}>예약자명</option>
									<option value="tel"        		  ${condition=="tel" ? "selected='selected'":""}>전화번호</option>
									<option value="activityName"  	  ${condition=="activityName" ? "selected='selected'":""}>액티비티명</option>
									<option value="reserveDoneDate"   ${condition=="reserveDoneDate" ? "selected='selected'":""}>예약일자</option>
								</select>
								<input type="text" name="keyword" value="${keyword}">
								<input type="hidden" name="reserveStatus" value="${reserveStatus}">
								<input type="hidden" name="page" value="1">
								<button type="button" class="btn" onclick="searchList()">검색</button>
							</form>
						</td>
						<td align="right" width="100">&nbsp;</td>
					</tr>
				</table>
		    </div>
		</div>
	</div>
	<div id="reserve-dialog" style="display: none;"></div>
</div>
