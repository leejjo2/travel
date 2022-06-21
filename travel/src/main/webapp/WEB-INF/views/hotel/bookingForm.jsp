<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
.body-container {
	max-width: 800px;
}

.ck.ck-editor {
	max-width: 97%;
}
.ck-editor__editable {
    min-height: 250px;
}
.ck-content .image>figcaption {
	min-height: 25px;
}
</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/boot-board.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/bootstrap5/css/bootstrap.min.css" type="text/css">


<script type="text/javascript">
function sendOk() {
	var f = document.bookingForm;
	var str;
	
	if(! f.reserveName.value.trim()) {
		alert("예약자를 입력하세요. ");
		f.reserveName.focus();
		return;
	}
	
	if(! f.reserveTel.value.trim()) {
		alert("전화번호를 입력하세요. ");
		f.reserveTel.focus();
		return;
	}

	if(! f.checkIn.value.trim()) {
		alert("체크인 날짜를 입력하세요. ");
		f.checkIn.focus();
		return;
	}

	if(! f.checkOut.value.trim()) {
		alert("체크아웃 날짜를 입력하세요. ");
		f.checkOut.focus();
		return;
	}

	if(! f.men.value.trim()) {
		alert("인원수를 선택하세요. ");
		f.men.focus();
		return;
	}

	
}
</script>

<script type="text/javascript">

function ajaxFun(url, method, query, dataType, fn) {
	$.ajax({
		type:method,
		url:url,
		data:query,
		dataType:dataType,
		success:function(data) {
			fn(data);
		},
		beforeSend:function(jqXHR) {
			jqXHR.setRequestHeader("AJAX", true);
		},
		error:function(jqXHR) {
			if(jqXHR.status === 403) {
				login();
				return false;
			} else if(jqXHR.status === 400) {
				alert("요청 처리가 실패했습니다.");
				return false;
			}
	    	
			console.log(jqXHR.responseText);
		}
	});
}

</script>

<div class="container">
	<div class="body-container">	
		<div class="body-title">
			<h3><i class="bi bi-book-half"></i> 숙소 예약 </h3>
		</div>
		
		<div class="body-main">
		    <div class="alert alert-info" role="alert">
		        <i class="bi bi-question-square"></i> 예약자에 대한 정보를 적어주세요.
		    </div>
		    
			<form name="bookingForm" method="post">
				<table class="table mt-5 write-form">
					<tr>
						<td class="table-light col-sm-2" scope="row">예약자 이름</td>
						<td colspan="4">
							<input style="width: 150px;" type="text" name="reserveName" class="form-control" value="">
						</td>
					</tr>
				
					<tr>
						<td class="table-light" scope="row">전화번호</td>
						<td colspan="3">
							<div class="row">
								<div class="col-sm-5">
									<input type="text" name="reserveTel" id="reserveTel" class="form-control" value="" maxlength="13">
								</div>
							</div>
						</td>
					</tr>
					
					<tr>
						<td class="table-light" scope="row">체크인</td>
						<td>
							<div class="row">
								<div class="col-sm-6 pe-1">
									<input type="date" name="checkIn" id="checkIn">
								</div>
							</div>
						</td>
						<td class="table-light" scope="row">체크아웃</td>
						<td>
							<div class="row">
								<div class="col-sm-5 pe-1">
									<input type="date" name="checkOut" id="checkOut">
								</div>
							</div>
						</td>
					</tr>

					<tr>
						<td class="table-light" scope="row">숙박인원</td>
						<td colspan="4">
							<div class="row">
								<div class="col-sm-4 pe-1">
									<select name="men" class="form-select">
										<option value="">선택</option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
											<option>6</option>
									</select>
								</div>
							</div>
						</td>
					</tr>

					<tr>
						<td class="table-light col-sm-2" scope="row">총 가격</td>
						<td colspan="4">
							<p class="form-control-plaintext">${dto.totalPrice}</p>
						</td>
					</tr>
				</table>
				
				<table class="table table-borderless">
 					<tr>
						<td class="text-center">
							<button type="button" class="btn btn-dark" onclick="sendOk();">${mode=='update'?'수정완료':'예약하기'}&nbsp;<i class="bi bi-check2"></i></button>
							<button type="reset" class="btn btn-light">다시입력</button>
							<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/';">${mode=='update'?'수정취소':'예약취소'}&nbsp;<i class="bi bi-x"></i></button>
							<c:if test="${mode=='update'}">
								<input type="hidden" name="num" value="">
							</c:if>
						</td>
					</tr>
				</table>
			</form>
		
		</div>
	</div>
</div>