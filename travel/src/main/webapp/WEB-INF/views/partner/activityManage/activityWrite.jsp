<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style type="text/css">
.body-container {width: 900px; margin: 50px auto 10px }

.body-title {
    padding-top: 25px; padding-bottom: 5px;
    color: #424951;
    border-bottom: 1px solid #ddd;
}

.body-title h3 {
    min-width: 300px;
    padding-bottom: 5px;
    font-size: 23px;
    font-family:"Malgun Gothic", "맑은 고딕", NanumGothic, 나눔고딕, 돋움, sans-serif;
    font-weight: bold;
    display: inline-block;
    border-bottom: 3px solid #424951;
}

form {
	background: white;
}

table:first-child tbody tr:last-child {
	border-bottom: 1px solid #dee2e6;
}
.ck.ck-editor {
	max-width: 99.7%;
}
.ck-editor__editable {
    min-height: 250px;
}
.ck-content .image>figcaption {
	min-height: 25px;
}

td.table-light {
    text-align: center;
    vertical-align: middle;
    font-weight: bold;
}

.table {
    margin-bottom: 0;
}

.img-photo{
	width: 100%;
}

.table-form .img-viewer {
	cursor: pointer;
	border: 1px solid #ccc;
	width: 100px;
	height: 100px;
	background-image: url("${pageContext.request.contextPath}/resources/images/add_photo.png");
	position: relative;
	z-index: 9999;
	background-repeat : no-repeat;
	background-size : cover;
}

</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/ckeditor5/ckeditor.js"></script>
<script type="text/javascript">
function sendOk() {
	var f = document.activityForm;
	var str;
	
	if(! f.cityNum.value) {
		alert("지역을 선택해주세요. ");
		f.cityNum.focus();
		return;
	}

	if(! f.activityType.value) {
		alert("종류를 선택해주세요. ");
		f.activityType.focus();
		return;
	}
        
	if(! f.activityName.value.trim()) {
		alert("액티비티 이름을 입력해주세요. ");
		f.activityName.focus();
		return;
	}
	
	
	if(! f.price.value.trim()) {
		alert("가격을 입력해주세요. ");
		f.price.focus();
		return;
	}
	
	if(! f.totalTime.value.trim()) {
		alert("소요시간을 입력해주세요. ");
		f.totalTime.focus();
		return;
	}
	
	if(! f.zip.value) {
		alert("우편번호를 입력해주세요. ");
		f.zip.focus();
		return;
	}
	
	if(! f.addr1.value) {
		alert("주소를 입력해주세요. ");
		f.addr1.focus();
		return;
	}
	
	if(! f.addr2.value.trim()) {
		alert("상세주소를 입력해주세요. ");
		f.addr2.focus();
		return;
	}
	
	
	let mode = "${mode}";
    if( (mode === "write") && (!f.selectFile.value) ) {
        alert("대표 이미지를 등록해주세요.");
        f.selectFile.focus();
        return;
    }
	
	
	str = window.editor.getData().trim();
    if(! str) {
        alert("내용을 입력하세요. ");
        window.editor.focus();
        return;
    }
    
	f.activityDetail.value = str;

	f.action="${pageContext.request.contextPath}/partner/activityManage/${mode}";
	f.submit();
}


$(function() {
	let img = "${dto.titleImgname}";
	if( img ) { // 수정인 경우
		img = "${pageContext.request.contextPath}/uploads/activity/" + img;
		$(".table-form .img-viewer").empty();
		$(".table-form .img-viewer").css("background-image", "url("+img+")");
	}
	
	
	$(".table-form .img-viewer").click(function(){
		$("form[name=activityForm] input[name=selectFile]").trigger("click"); 
	});
	
	$("form[name=activityForm] input[name=selectFile]").change(function(){
		let file = this.files[0];
		if(! file) {
			$(".table-form .img-viewer").empty();
			if( img ) {
				img = "${pageContext.request.contextPath}/uploads/activity/" + img;
				$(".table-form .img-viewer").css("background-image", "url("+img+")");
			} else {
				img = "${pageContext.request.contextPath}/resources/images/add_photo.png";
				$(".table-form .img-viewer").css("background-image", "url("+img+")");
			}
			return false;
		}
		
		if(! file.type.match("image.*")) {
			this.focus();
			return false;
		}
		
		let reader = new FileReader();
		reader.onload = function(e) {
			$(".table-form .img-viewer").empty();
			$(".table-form .img-viewer").css("background-image", "url("+e.target.result+")");
		}
		reader.readAsDataURL(file);
	});
});

</script>

<div class="right_col" role="main" style="min-height: 1765px;">
	<div class="container">
		<div class="body-container">	
			<div class="body-title">
				<h3><i class="bi bi-book-half"></i> 액티비티 등록 </h3>
			</div>
			
			<div class="body-main">
			    <div class="alert alert-info" role="alert">
			        <i class="bi bi-question-square"></i> 판매할 액티비티에 대한 정보를 입력해주세요.
			    </div>
			    
				<form name="activityForm" method="post" enctype="multipart/form-data">
					<table class="table write-form table-form">
						<tr>
							<td style="width:110px;" class="table-light" scope="row">지역</td>
							<td>
								<div class="pe-1">
									<select name="cityNum" class="form-select form-control">
										<option value="">선택</option>
											<option value="1" ${dto.cityNum=="1"?"selected='selected'":""}>서울</option>
											<option value="2" ${dto.cityNum=="2"?"selected='selected'":""}>부산</option>
											<option value="3" ${dto.cityNum=="3"?"selected='selected'":""}>대구</option>
											<option value="4" ${dto.cityNum=="4"?"selected='selected'":""}>인천</option>
											<option value="5" ${dto.cityNum=="5"?"selected='selected'":""}>광주</option>
											<option value="6" ${dto.cityNum=="6"?"selected='selected'":""}>대전</option>
											<option value="7" ${dto.cityNum=="7"?"selected='selected'":""}>울산</option>
											<option value="8" ${dto.cityNum=="8"?"selected='selected'":""}>세종</option>
											<option value="9" ${dto.cityNum=="9"?"selected='selected'":""}>경기</option>
											<option value="10" ${dto.cityNum=="10"?"selected='selected'":""}>강원</option>
											<option value="11" ${dto.cityNum=="11"?"selected='selected'":""}>충북</option>
											<option value="12" ${dto.cityNum=="12"?"selected='selected'":""}>충남</option>
											<option value="15" ${dto.cityNum=="15"?"selected='selected'":""}>경북</option>
											<option value="16" ${dto.cityNum=="16"?"selected='selected'":""}>경남</option>
											<option value="13" ${dto.cityNum=="13"?"selected='selected'":""}>전북</option>
											<option value="14" ${dto.cityNum=="14"?"selected='selected'":""}>전남</option>
											<option value="17" ${dto.cityNum=="17"?"selected='selected'":""}>제주</option>
									</select>
								</div>
							</td>
							<td class="table-light" scope="row">종류</td>
							<td>
								<div class="pe-1">
									<select name="activityType" class="form-select form-control">
										<option value="">선택</option>
											<option value="티켓/패스" ${dto.activityType=="티켓/패스"?"selected='selected'":""}>티켓/패스</option>
											<option value="캠핑" ${dto.activityType=="캠핑"?"selected='selected'":""}>캠핑</option>
											<option value="스파&마사지" ${dto.activityType=="스파&마사지"?"selected='selected'":""}>스파&amp;마사지</option>
											<option value="놀이동산" ${dto.activityType=="놀이동산"?"selected='selected'":""}>놀이동산</option>
											<option value="수상 액티비티" ${dto.activityType=="수상 액티비티"?"selected='selected'":""}>수상 액티비티</option>
											<option value="요트/유람선" ${dto.activityType=="요트/유람선"?"selected='selected'":""}>요트/유람선</option>
									</select>
								</div>
							</td>
						</tr>
						
						
						<tr>
							<td class="table-light" scope="row" style="width: 100px;">액티비티 이름</td>
							<td colspan="3">
								<input type="text" name="activityName" class="form-control" value="${dto.activityName}">
							</td>
						</tr>
						
						<tr>
							<td class="table-light" scope="row">가격(1인)</td>
							<td>
								<input type="text" name="price" class="form-control" value="${dto.price}">
							</td>
							
							<td class="table-light" scope="row">소요시간</td>
							<td>
								<input type="text" name="totalTime" class="form-control" value="${dto.totalTime}">
							</td>
						</tr>
						
						
						<tr>
							<td class="table-light" scope="row" rowspan="2">주소</td>
							<td>
								<input type="text" name="zip" id="zip" class="form-control" placeholder="우편번호" value="${dto.zip}" readonly="readonly">
							</td>
							<td colspan="2">	
								<button class="btn btn-light" type="button" style="margin-left: 3px;" onclick="daumPostcode();">우편번호 검색</button>
							</td>
						</tr>
						
						<tr>
							<td colspan="3">
								<input type="text" name="addr1" id="addr1" class="form-control" placeholder="기본 주소" value="${dto.addr1}" readonly="readonly">
								<input type="text" name="addr2" id="addr2" class="form-control" placeholder="상세 주소" value="${dto.addr2}">
							</td>
						</tr>
	
						<tr>
							<td class="table-light" scope="row">내 용</td>
							<td colspan="3">
								<div class="editor">${dto.activityDetail}</div>
								<input type="hidden" name="activityDetail">
							</td>
						</tr>
						
						<tr>
							<td class="table-light" scope="row" style="width: 100px;">대표 이미지</td>
							<td colspan="3">
								<div class="img-viewer"></div>
								<input type="file" name="selectFile" accept="image/*" style="display: none;">
							</td>
						</tr>
						
					</table>
					
					<table class="table table-borderless">
	 					<tr>
							<td class="text-center">
								<button type="button" class="btn btn-dark" onclick="sendOk();">${mode=='update'?'수정완료':'등록하기'}&nbsp;<i class="bi bi-check2"></i></button>
								<button type="reset" class="btn btn-light">다시입력</button>
								<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/partner/activityManage/activityList?page=${page}';">${mode=='update'?'수정취소':'등록취소'}&nbsp;<i class="bi bi-x"></i></button>
								<c:if test="${mode=='update'}">
									<input type="hidden" name="titleImgname" value="${dto.titleImgname}">
									<input type="hidden" name="activityNum" value="${dto.activityNum}">
									<input type="hidden" name="num" value="${dto.activityNum}">
									<input type="hidden" name="page" value="${page}">
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
	        uploadUrl: '${pageContext.request.contextPath}/partner/activityImage/upload' // 업로드 url (post로 요청 감)
	    }
	})
	.then( editor => {
		window.editor = editor;
	})
	.catch( err => {
		console.error( err.stack );
	});
</script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
function daumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zip').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('addr1').value = fullAddr;

            // 커서를 상세주소 필드로 이동한다.
            document.getElementById('addr2').focus();
        }
    }).open();
}
</script>
