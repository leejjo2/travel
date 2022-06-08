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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/boot-board.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendor/ckeditor5/ckeditor.js"></script>

<script type="text/javascript">
function sendOk() {
	var f = document.boardForm;
	var str;
	
	if(! f.groupCategoryNum.value) {
		alert("분류 명을 선택하세요. ");
		f.groupCategoryNum.focus();
		return;
	}

	if(! f.categoryNum.value) {
		alert("과목 명을 선택하세요. ");
		f.categoryNum.focus();
		return;
	}
        
	if(! f.subject.value.trim()) {
		alert("제목을 입력하세요. ");
		f.subject.focus();
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

	f.action="${pageContext.request.contextPath}/sbbs/${mode}";
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

$(function(){
	$("form select[name=groupCategoryNum]").change(function(){
		var groupCategoryNum = $(this).val();
		$("form select[name=categoryNum]").find('option').remove().end()
				.append("<option value=''>:: 과목 선택 ::</option>");
		
		if(! groupCategoryNum) {
			return false;
		}
		
		var url="${pageContext.request.contextPath}/sbbs/subclass";
		var query="categoryNum="+groupCategoryNum;
		
		var fn=function(data) {
			$.each(data.subclassList, function(index, item){
				var categoryNum = item.categoryNum;
				var category = item.category;
				var s = "<option value='"+categoryNum+"'>"+category+"</option>";
				$("form select[name=categoryNum]").append(s);
			});
		};
		ajaxFun(url, "get", query, "json", fn);
	});
});
</script>

<div class="container">
	<div class="body-container">	
		<div class="body-title">
			<h3><i class="bi bi-book-half"></i> 테마별 코스 등록 </h3>
		</div>
		
		<div class="body-main">
		    <div class="alert alert-info" role="alert">
		        <i class="bi bi-question-square"></i> 게시판 이용자들에게 테마별 코스를 추천해주세요..
		    </div>
		    
			<form name="boardForm" method="post">
				<table class="table mt-5 write-form">
					<tr>
						<td class="table-light col-sm-2" scope="row">분 류</td>
						<td>
							<div class="row">
								<div class="col-sm-4 pe-1">
									<select name="groupCategoryNum" class="form-select">
										<option value="">:: 분류 선택 ::</option>
										<c:forEach var="vo" items="${groupList}">
											<option value="${vo.categoryNum}" ${dto.groupCategoryNum==vo.categoryNum?"selected='selected'":""}>${vo.category}</option>
										</c:forEach>
									</select>
								</div>
								<div class="col-sm-4 ps-1">
									<select name="categoryNum" class="form-select">
										<option value="">:: 과목 선택 ::</option>
										<c:forEach var="vo" items="${subclassList}">
											<option value="${vo.categoryNum}" ${dto.categoryNum==vo.categoryNum?"selected='selected'":""}>${vo.category}</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</td>
					</tr>
					
					<tr>
						<td class="table-light col-sm-2" scope="row">제 목</td>
						<td>
							<input type="text" name="subject" class="form-control" value="${dto.subject}">
						</td>
					</tr>
        
					<tr>
						<td class="table-light col-sm-2" scope="row">작성자명</td>
 						<td>
							<p class="form-control-plaintext">${sessionScope.member.userName}</p>
						</td>
					</tr>

					<tr>
						<td class="table-light col-sm-2" scope="row">내 용</td>
						<td>
							<div class="editor">${dto.content}</div>
							<input type="hidden" name="content">
						</td>
					</tr>
				</table>
				
				<table class="table table-borderless">
 					<tr>
						<td class="text-center">
							<button type="button" class="btn btn-dark" onclick="sendOk();">${mode=='update'?'수정완료':'등록하기'}&nbsp;<i class="bi bi-check2"></i></button>
							<button type="reset" class="btn btn-light">다시입력</button>
							<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/theme/list';">${mode=='update'?'수정취소':'등록취소'}&nbsp;<i class="bi bi-x"></i></button>
							<c:if test="${mode=='update'}">
								<input type="hidden" name="num" value="${dto.num}">
								<input type="hidden" name="page" value="${page}">
								<input type="hidden" name="group" value="${group}">
							</c:if>
						</td>
					</tr>
				</table>
			</form>
		
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