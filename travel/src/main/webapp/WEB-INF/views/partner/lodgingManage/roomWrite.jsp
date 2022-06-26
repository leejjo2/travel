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

.img-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, 65px);
	grid-gap: 5px;
}

.img-grid .item {
    object-fit: cover; /* 가로세로 비율은 유지하면서 컨테이너에 꽉 차도록 설정 */
    width: 65px;
    height: 65px;
	cursor: pointer;
}

.img-box {
	max-width: 600px;

	box-sizing: border-box;
	display: flex; /* 자손요소를 flexbox로 변경 */
	flex-direction: row; /* 정방향 수평나열 */
	flex-wrap: nowrap;
	overflow-x: auto;
}
.img-box img {
	width: 65px; height: 65px;
	margin-right: 5px;
	flex: 0 0 auto;
	cursor: pointer;
}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/ckeditor5/ckeditor.js"></script>

<script type="text/javascript">
function sendOk() {
	var f = document.roomForm;
	var str;
	
	if(! f.roomName.value.trim()) {
		alert("방이름을 입력하세요. ");
		f.roomName.focus();
		return;
	}
	
	if(! f.roomHo.value.trim()) {
		alert("호수를 입력하세요. ");
		f.roomHo.focus();
		return;
	}
	
	if(! f.roomPrice.value.trim()) {
		alert("가격을 입력하세요. ");
		f.roomPrice.focus();
		return;
	}

	if(! f.roomMen.value) {
		alert("인원수를 선택하세요. ");
		f.roomMen.focus();
		return;
	}
	
	if(! f.roomBed.value) {
		alert("침대수를 선택하세요. ");
		f.roomBed.focus();
		return;
	}

	
	
	var sumVal ="";

	$("input:checkbox[name=roomCheck]:checked").each(function(){
		sumVal += "," + $(this).val(); 
	});
	
	sumVal = sumVal.replace(",", "");
	
	$("input[name=roomOption]").val(sumVal);
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


<c:if test="${mode=='update'}">
$(function(){
	$(".delete-img").click(function(){
		if(! confirm("이미지를 삭제 하시겠습니까 ?")) {
			return false;
		}
		var $img = $(this);
		var fileNum = $img.attr("data-fileNum");
		var url="${pageContext.request.contextPath}/room/deleteFile";
		$.post(url, {fileNum:fileNum}, function(data){
			$img.remove();
		}, "json");
	});
});
</c:if>

$(function(){
	var sel_files = [];
	
	$("body").on("click", ".write-form .img-add", function(event){
		$("form[name=roomForm] input[name=selectFile]").trigger("click"); 
	});
	
	$("form[name=roomForm] input[name=selectFile]").change(function(){
		if(! this.files) {
			var dt = new DataTransfer();
			for(file of sel_files) {
				dt.items.add(file);
			}
			document.roomForm.selectFile.files = dt.files;
			
	    	return false;
	    }
	    
		// 유사 배열을 배열로 변환
	    const fileArr = Array.from(this.files);
	
		fileArr.forEach((file, index) => {
			sel_files.push(file);
			
			const reader = new FileReader();
			const $img = $("<img>", {class:"item img-item"});
			$img.attr("data-filename", file.name);
	        reader.onload = e => {
	        	$img.attr("src", e.target.result);
	        };
	        
	        reader.readAsDataURL(file);
	        
	        $(".img-grid").append($img);
	    });
		
		var dt = new DataTransfer();
		for(file of sel_files) {
			dt.items.add(file);
		}
		document.roomForm.selectFile.files = dt.files;		
	    
	});
	
	$("body").on("click", ".write-form .img-item", function(event) {
		if(! confirm("선택한 파일을 삭제 하시겠습니까 ?")) {
			return false;
		}
		
		var filename = $(this).attr("data-filename");
		
	    for(var i = 0; i < sel_files.length; i++) {
	    	if(filename === sel_files[i].name){
	    		sel_files.splice(i, 1);
	    		break;
			}
	    }
	
		var dt = new DataTransfer();
		for(file of sel_files) {
			dt.items.add(file);
		}
		document.roomForm.selectFile.files = dt.files;
		
		$(this).remove();
	});
});


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
			    
				<form name="roomForm" method="post" enctype="multipart/form-data">
				<input type="hidden" name="hotelNum" value="${hdto.hotelNum}">
				<input type="hidden" name="roomOption" value="">
					<table class="table mt-5 write-form">
						<tr>
							<td class="table-light" scope="row" style="width: 100px;">숙소이름</td>
							<td colspan="3">
								<p class="form-control-plaintext">${hdto.hotelName}</p>
							</td>
						</tr>
						
						<tr>
							<td class="table-light" scope="row" style="width: 100px;">방이름</td>
							<td colspan="3">
								<input type="text" name="roomName" class="form-control" value="${dto.roomName}">
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
											<option>선택</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
										</select>
									</div>
								</div>
							</td>
							<td class="table-light" scope="row">침대</td>
							<td>
								<div class="row">
									<div class="col-sm-5 pe-1">
										<select name="roomBed" class="form-select">
											<option>선택</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
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
							<td class="table-light" scope="row">이미지</td>
							<td colspan="2">
								<div class="img-grid"><img class="item img-add rounded" src="${pageContext.request.contextPath}/resources/images/add_photo.png"></div>
								<input type="file" name="selectFile" accept="image/*" multiple="multiple" style="display: none;" class="form-control">
							</td>
						</tr>
						
						<c:if test="${mode=='roomUpdate'}">
							<tr>
								<td class="table-light" scope="row">등록이미지</td>
								<td> 
									<div class="img-box">
										<c:forEach var="vo" items="${listFile}">
											<img src="${pageContext.request.contextPath}/uploads/room/${vo.saveFilename}"
												class="delete-img"
												data-fileNum="">
										</c:forEach>
									</div>
								</td>
							</tr>
						</c:if>
						
						
						<tr>
							<td class="table-light" scope="row">옵션</td>
							<td colspan="3">
								<div class="row">
									<div class="col-sm-4 pe-1">
										<input type="checkbox" name="roomCheck" value="무료 Wi-Fi"> 무료 Wi-Fi
									</div>
									<div class="col-sm-4 pe-1">
										<input type="checkbox" name="roomCheck" value="금연"> 금연
									</div>
									<div class="col-sm-4 pe-1">
										<input type="checkbox" name="roomCheck" value="흡연구역"> 흡연구역
									</div>
									<div class="col-sm-4 pe-1">
										<input type="checkbox" name="roomCheck" value="발코니/테라스"> 발코니/테라스
									</div>
									<div class="col-sm-4 pe-1">
										<input type="checkbox" name="roomCheck" value="샤워실/욕조"> 샤워실/욕조
									</div>
									<div class="col-sm-4 pe-1">
										<input type="checkbox" name="roomCheck" value="세탁기"> 세탁기
									</div>
									<div class="col-sm-4 pe-1">
										<input type="checkbox" name="roomCheck" value="주방"> 주방
									</div>
									<div class="col-sm-4 pe-1">
										<input type="checkbox" name="roomCheck" value="조식"> 조식
									</div>
									<div class="col-sm-4 pe-1">
										<input type="checkbox" name="roomCheck" value="오션뷰"> 오션뷰
									</div>
								</div>
							</td>
						</tr>
					</table>
					
					<table class="table table-borderless">
	 					<tr>
							<td class="text-center">
								<button type="button" class="btn btn-dark" onclick="sendOk();">${mode=='roomUpdate'?'수정완료':'등록하기'}&nbsp;<i class="bi bi-check2"></i></button>
								<button type="reset" class="btn btn-light">다시입력</button>
								<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/';">${mode=='roomUpdate'?'수정취소':'등록취소'}&nbsp;<i class="bi bi-x"></i></button>
								<c:if test="${mode=='roomUpdate'}">
									<input type="hidden" name="roomNum" value="${dto.roomNum}">
									<input type="hidden" name="roomNum" value="${hdto.hotelNum}">
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
