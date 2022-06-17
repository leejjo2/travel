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

}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/ckeditor5/ckeditor.js"></script>
<script type="text/javascript">
function sendOk() {
	var f = document.hotelForm;
	var str;
	
	if(! f.hotelName.value.trim()) {
		alert("숙소이름을 입력하세요. ");
		f.hotelName.focus();
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
	f.hotelIntro.value = str;

	f.action="${pageContext.request.contextPath}/partner/lodgingManage/${mode}";
	f.submit();
}


<c:if test="${mode=='update'}">
$(function(){
	$(".delete-img").click(function(){
		if(! confirm("이미지를 삭제 하시겠습니까 ?")) {
			return false;
		}
		var $img = $(this);
		var fileNum = $img.attr("data-fileNum");
		var url="${pageContext.request.contextPath}/partner/deleteFile";
		$.post(url, {fileNum:fileNum}, function(data){
			$img.remove();
		}, "json");
	});
});
</c:if>

$(function(){
	var sel_files = [];
	
	$("body").on("click", ".write-form .img-add", function(event){
		$("form[name=hotelForm] input[name=selectFile]").trigger("click"); 
	});
	
	$("form[name=hotelForm] input[name=selectFile]").change(function(){
		if(! this.files) {
			var dt = new DataTransfer();
			for(file of sel_files) {
				dt.items.add(file);
			}
			document.hotelForm.selectFile.files = dt.files;
			
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
		document.hotelForm.selectFile.files = dt.files;		
	    
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
		document.hotelForm.selectFile.files = dt.files;
		
		$(this).remove();
	});
});


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
				<h3><i class="bi bi-book-half"></i> 숙소 등록 </h3>
			</div>
			
			<div class="body-main">
			    <div class="alert alert-info" role="alert">
			        <i class="bi bi-question-square"></i> 숙소에 대한 정보를 올려주세요
			    </div>
			    
				<form name="hotelForm" method="post" enctype="multipart/form-data">
					<table class="table mt-5 write-form">
						<tr>
							<td class="table-light" scope="row" style="width: 90px;">숙소이름</td>
							<td colspan="3">
								<input type="text" name="hotelName" class="form-control" value="${dto.hotelName}">
							</td>
						</tr>
					
						<tr>
							<td class="table-light" scope="row">전화번호</td>
							<td colspan="2">
								<div class="row">
									<div class="col-sm-5">
										<input type="text" name="hotelNumber" id="hotelNumber" class="form-control" value="${dto.hotelNumber}" maxlength="13">
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
								<div class="editor">${dto.hotelIntro}</div>
								<input type="hidden" name="hotelIntro">
							</td>
						</tr>
						
						<tr>
							<td class="table-light" scope="row" rowspan="2">주소</td>
							<td>
								<input type="text" name="hotelZip" id="zip" class="form-control" style="width: 160px;" placeholder="우편번호" value="${dto.HotelZip}" readonly="readonly">
							</td>
							<td>	
								<button class="btn btn-light" type="button" style="margin-left: 3px;" onclick="daumPostcode();">우편번호 검색</button>
							</td>
						</tr>
						
						<tr>
							<td colspan="2">
								<input type="text" name="hotelAddr1" id="addr1" class="form-control" placeholder="기본 주소" value="${dto.hotelAddr1}" readonly="readonly">
								<input type="text" name="hotelAddr2" id="addr2" class="form-control" placeholder="상세 주소" value="${dto.hotelAddr2}">
							</td>
						</tr>
						
						<tr>
							<td class="table-light" scope="row">이미지</td>
							<td colspan="2">
								<div class="img-grid"><img class="item img-add rounded" src="${pageContext.request.contextPath}/resources/images/add_photo.png"></div>
								<input type="file" name="selectFile" accept="image/*" multiple="multiple" style="display: none;" class="form-control">
							</td>
						</tr>
						
						<c:if test="${mode=='update'}">
							<tr>
								<td class="table-light" scope="row">등록이미지</td>
								<td> 
									<div class="img-box">
										<c:forEach var="vo" items="${listFile}">
											<img src="${pageContext.request.contextPath}/uploads/partner/${vo.saveFilename}"
												class="delete-img"
												data-fileNum="${vo.imageFileNum}">
										</c:forEach>
									</div>
								</td>
							</tr>
						</c:if>
					</table>
					
					<table class="table table-borderless">
							<tr>
							<td class="text-center">
								<button type="button" class="btn btn-dark" onclick="sendOk();">${mode=='update'?'수정완료':'등록하기'}&nbsp;<i class="bi bi-check2"></i></button>
								<button type="reset" class="btn btn-light">다시입력</button>
								<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/partner/lodgingManage/roomList';">${mode=='update'?'수정취소':'등록취소'}&nbsp;<i class="bi bi-x"></i></button>
								<c:if test="${mode=='update'}">
									<input type="hidden" name="partnerNum" value="${dto.partnerNum}">
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
