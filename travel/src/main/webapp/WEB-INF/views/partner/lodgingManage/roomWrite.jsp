<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/ckeditor5/ckeditor.js"></script>

<script type="text/javascript">
function sendOk() {
	var f = document.roomForm;
	var str;
	
	if(! f.roomHo.value.trim()) {
		alert("호수를 입력하세요. ");
		f.groupCategoryNum.focus();
		return;
	}
	
	if(! f.roomPrice.value.trim()) {
		alert("가격을 입력하세요. ");
		f.price.focus();
		return;
	}

	if(! f.roomMen.value) {
		alert("인원수를 선택하세요. ");
		f.person.focus();
		return;
	}
	
	if(! f.roomBed.value) {
		alert("침대수를 선택하세요. ");
		f.bed.focus();
		return;
	}


	// 값 가져오기
	// window.editor.getData();
	// 값 셋팅
	    // window.editor.setData('<p>example</p>');
	
	str = window.editor.getData().trim();
    if(! str) {
        alert("내용을 입력하세요. ");
        window.editor.focus();
        return;
    }
	f.content.value = str;

	f.action="${pageContext.request.contextPath}/partner/lodgingManage/${mode}";
	f.submit();
}
</script>

<script type="text/javascript">
function login() {
	location.href="${pageContext.request.contextPath}/member/login";
}

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


<div class="right_col" role="main" style="min-height: 1758px;">
	<div class="container">
		<div class="body-container">	
			<div class="body-title">
				<h3><i class="bi bi-book-half"></i> 방 등록 </h3>
			</div>
			
			<div class="body-main">
			    <div class="alert alert-info" role="alert">
			        <i class="bi bi-question-square"></i> 방에 대한 정보를 올려주세요
			    </div>
			    
				<form name="roomForm" method="post">
					<table class="table mt-5 write-form">
						<tr>
							<td class="table-light" scope="row" style="width: 100px;">숙소이름</td>
							<td colspan="3">
								<p class="form-control-plaintext">${hotelName}</p>
							</td>
						</tr>
						
						<tr>
							<td class="table-light" scope="row">호수</td>
							<td>
								<input type="text" name="roomHo" class="form-control" value="${dto.roomHo}">
							</td>
							<td class="table-light" scope="row">가격</td>
							<td>
								<input type="text" name="roomPrice" class="form-control" value="${dto.roomPrice}">
							</td>
						</tr>
					
						<tr>
							<td class="table-light" scope="row">숙박인원</td>
							<td>
								<div class="row">
									<div class="col-sm-6 pe-1">
										<select name="roomMen" class="form-select">
											<option value="${dto.roomMen}">선택</option>
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
							<td class="table-light" scope="row">침대</td>
							<td>
								<div class="row">
									<div class="col-sm-5 pe-1">
										<select name="roomBed" class="form-select">
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
							<td class="table-light" scope="row">판매자 명</td>
	 						<td colspan="3">
								<p class="form-control-plaintext">${sessionScope.member.userName}</p>
							</td>
						</tr>
	
						<tr>
							<td class="table-light" scope="row">내 용</td>
							<td colspan="3">
								<div class="editor">${dto.content}</div>
								<input type="hidden" name="content">
							</td>
						</tr>
						
						<tr>
							<td class="table-light" scope="row">옵션</td>
							<td colspan="3">
								<div class="row">
									<div class="col-sm-4 pe-1">
										<input type="checkbox" name="roomOption"> 무료 Wi-Fi
									</div>
									<div class="col-sm-4 pe-1">
										<input type="checkbox" name="roomOption"> 금연
									</div>
									<div class="col-sm-4 pe-1">
										<input type="checkbox" name="roomOption"> 흡연구역
									</div>
									<div class="col-sm-4 pe-1">
										<input type="checkbox" name="roomOption"> 발코니/테라스
									</div>
									<div class="col-sm-4 pe-1">
										<input type="checkbox" name="roomOption"> 샤워실/욕조
									</div>
									<div class="col-sm-4 pe-1">
										<input type="checkbox" name="roomOption"> 세탁기
									</div>
									<div class="col-sm-4 pe-1">
										<input type="checkbox" name="roomOption"> 주방
									</div>
									<div class="col-sm-4 pe-1">
										<input type="checkbox" name="roomOption"> 조식
									</div>
									<div class="col-sm-4 pe-1">
										<input type="checkbox" name="roomOption"> 오션뷰
									</div>
								</div>
							</td>
						</tr>
					</table>
					
					<table class="table table-borderless">
	 					<tr>
							<td class="text-center">
								<button type="button" class="btn btn-dark" onclick="sendOk();">${mode=='update'?'수정완료':'등록하기'}&nbsp;<i class="bi bi-check2"></i></button>
								<button type="reset" class="btn btn-light">다시입력</button>
								<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/';">${mode=='update'?'수정취소':'등록취소'}&nbsp;<i class="bi bi-x"></i></button>
								<c:if test="${mode=='update'}">
									<input type="hidden" name="roomNum" value="${dto.roomNum}">
									<input type="hidden" name="" value="">
								</c:if>
							</td>
						</tr>
					</table>
				</form>
			
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">
	ClassicEditor
		.create( document.querySelector( '.editor' ), {
			fontFamily: {
	            options: [
	                'default',
	                '맑은 고딕, Malgun Gothic, 돋움, sans-serif',
	                '나눔고딕, NanumGothic, Arial'
	            ]
	        },
	        fontSize: {
	            options: [
	                9, 11, 13, 'default', 17, 19, 21
	            ]
	        },
			toolbar: {
				items: [
					'heading','|',
					'fontFamily','fontSize','bold','italic','fontColor','|',
					'alignment','bulletedList','numberedList','|',
					'imageUpload','insertTable','sourceEditing','blockQuote','mediaEmbed','|',
					'undo','redo','|',
					'link','outdent','indent','|',
				]
			},
			image: {
	            toolbar: [
	                'imageStyle:full',
	                'imageStyle:side',
	                '|',
	                'imageTextAlternative'
	            ],
	
	            // The default value.
	            styles: [
	                'full',
	                'side'
	            ]
	        },
			language: 'ko',
			ckfinder: {
		        uploadUrl: '${pageContext.request.contextPath}/image/upload' // 업로드 url (post로 요청 감)
		    }
		})
		.then( editor => {
			window.editor = editor;
		})
		.catch( err => {
			console.error( err.stack );
		});
</script>
