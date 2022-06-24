<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="${pageContext.request.contextPath}/dist/goWith/css/style.css" rel="stylesheet"/>

<script type="text/javascript">

<c:if test="${sessionScope.member.userId==dto.userId||sessionScope.member.membership>50}">
function deleteGoWith() {
    if(confirm("게시글을 삭제 하시겠습니까 ? ")) {
	    let query = "${query}&num=${dto.goWithNum}";
	    let url = "${pageContext.request.contextPath}/gowith/delete?" + query;
    	location.href = url;
    }
}
</c:if>
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
				alert("요청 처리가 실패 했습니다.");
				return false;
			}
	    	
			console.log(jqXHR.responseText);
		}
	});
}

//페이징 처리
$(function(){
	listPage(1);
});

function listPage(page) {
	let url = "${pageContext.request.contextPath}/gowith/listReply";
	let query = "goWithNum=${dto.goWithNum}&pageNo="+page;
	let selector = "#listReply";
	
	const fn = function(data){
		$(selector).html(data);
	};
	ajaxFun(url, "get", query, "html", fn);
}

// 리플 등록
$(function(){
	$(".btnSendReply").click(function(){
		let num = "${dto.goWithNum}";
		const $div = $(this).closest(".commentContainer");

		let content = $div.find("textarea").val().trim();
		if(! content) {
			$div.find("textarea").focus();
			return false;
		}
		let pwd = $("#commentPwd").val();
		if(! pwd ) {
			$("#commentPwd").focus();
			return false;
		}
		content = encodeURIComponent(content);
		
		let url = "${pageContext.request.contextPath}/gowith/insertReply";
		let query = "goWithNum=" + num + "&content=" + content + "&pwd=" + pwd;
		
		const fn = function(data){
			$div.find("textarea").val("");
			
			let state = data.state;
			if(state === "true") {
				listPage(1);
			} else if(state === "false") {
				alert("댓글을 추가 하지 못했습니다.");
			}
		};
		
		ajaxFun(url, "post", query, "json", fn);
	});
});

</script>

           <div class="topImg">
                	<div class="img">
                    <img src="${pageContext.request.contextPath}/dist/goWith/img/05.jpg" />
                	</div>
                <div class="content">
                    <div class="badge">
                        <div class="inside">
                        	${dto.recruit_status=='N'?'모집중':'모집완료'}
                        </div>
                    </div>
                    <h1 style="word-break:break-all;white-space:pre-line">${dto.subject}</h1>
                </div>
            </div>
            <form action="" id="viewForm" method="post" encType="multipart/form-data">
            <input type="hidden" id="a" name="a" value="vo">
            <div class="postDetail">
                <div class="detailInfo">
                    <div class="inside">
                        <div class="head">
                            <h1 style="word-break:break-all; white-space:pre-line;">${dto.subject}</h1>
                        </div>
                        <div class="subInfo">
                            <ul>
                                <li class="noPaddingTopMobile">
                                    <h1>여행도시.</h1>
                                    <p>${dto.cityName}</p>
                                </li>
                                <li>
                                    <h1>관광지.</h1>
                                    <p>${dto.spotName}</p>
                                </li>
                                <li>
                                    <h1>모집인원.</h1>
                                    <p>${dto.recruit_cnt}</p>
                                </li>
                            </ul>
                            <ul>
                                <li>
                                    <h1>연령대.</h1>
                                    
                                    <p>${dto.age}</p>
                                </li>
                                <li>
                                    <h1>성별.</h1>
                                    <p>${dto.gender==0?'혼성이요':(dto.gender==1?'남성만요':'여성만요')}</p>
                                </li>
                                <li class="pc">&nbsp;</li>
                            </ul>
                            <ul>
                                <li>
                                    <h1>일정.</h1>
                                    <p>${dto.startDate} ~ ${dto.endDate}</p>
                                </li>
                            </ul>
                        </div>
                        <p>&nbsp;</p>
                        <div class="text" style="" >
                        	<p style="word-break:break-all;white-space:pre-line">${dto.content}</p>
                        </div>
                        <div class="buttonContainer">                
                           <ul>	
                                <li>
                                <c:choose>
                                	<c:when test="${sessionScope.member.userId==dto.userId}">
                                    	<div id="btnBoardModify" class="buttonType3" onclick="location.href='${pageContext.request.contextPath}/gowith/update?num=${dto.goWithNum}&page=${page}';">수정하기</div>
                                    </c:when>
                                    <c:otherwise>
                                    	<div id="btnBoardModify" class="buttonType3">수정하기</div>
                                    </c:otherwise>
                                 </c:choose>
                                </li>
                                <li>
                                    <div id="btnDelete" class="buttonType3" onclick="deleteGoWith();">삭제하기</div>
                                </li>
                            </ul>
                        </div>
                        <div class="divider marginTopXxl marginBottomXxl"></div>
                        <div class="commentContainer">
                        	 <div id="listReply"></div>
                                <div class="textInputContainer">
                                    <ul>
                                        <li>
                                        	<h1>댓글 쓰기</h1>
                                            <textarea id="commentContent" name="content" placeholder="어느 말이든 좋아요. 무엇이든 물어보세요:D"></textarea>
                                        </li>
                                    </ul>
                                    <ul>
                                        <li>
                                            <h1>비밀번호</h1>
                                            <input type="text" id="commentPwd" name="pwd" placeholder="암호를 쓰시오!" />
                                        </li>
                                    </ul>
                                    <div class="buttonContainer marginTopLg">
                                        <div id="commentRegister" class="buttonType2 btnSendReply">
                                            댓글 달기
                                        </div>
                                    </div>
                                </div>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="userInfo">
                    <div class="inside">
                        <div class="top">
                            <div class="left">
                                <h1>${dto.userName}</h1>
                            </div>
                            <div class="right">
                                <p>${dto.reg_date}</p>
                                <p><i class="bi bi-eye"></i>조회수. ${dto.hitCount}</p>
                            </div>
                        </div>
                        <div class="img">
                        			<img src="${pageContext.request.contextPath}/uploads/photo/${dto.imageFilename}" alt="사진">
                        </div>
                       
                        <div class="tagsContainer">
                            <ul>
                            <li>
                                            <div class="inside">#${dto.gender==0?'혼성이요':(dto.gender==1?'남성만요':'여성만요')}</div>
                                        </li>
                               		<li>
                                       	<div class="inside">#${dto.age}</div>
                                   	</li>
                                   		<li>
                                            <div class="inside">#${dto.drink==0?'상관없어요':(dto.drink==1?'여행은술이죠':'술은싫어요')}</div>
                                        </li>
                                   		<li>
                                            <div class="inside">#${dto.cigar==0?'상관없어요':(dto.cigar==1?'흡연자 선호':'비흡연자 선호')}</div>
                                        </li>
                                   		<li>
                                            <div class="inside">#${dto.tripType1==1?'느긋한':'활동적인'}</div>
                                        </li>
                                   		<li>
                                            <div class="inside">#${dto.tripType2==1?'로컬형':'랜드마크형'}</div>
                                        </li>
                                   		<li>
                                            <div class="inside">#${dto.tripType3==1?'모험형':'휴양형'}</div>
                                        </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            </form>
            <form action="" id="commentForm" method="post" encType="multipart/form-data">
            	<input type="hidden" id="rep_no" name="rep_no" value="">
            	<input type="hidden" id="rep_p_no" name="rep_p_no" value="">
            	<input type="hidden" id="rep_p_name" name="rep_p_name" value="">
            	<input type="hidden" id="rep_content" name="rep_content" value="">
            	<input type="hidden" id="rep_reg_name" name="rep_reg_name" value="">
            	<input type="hidden" id="rep_reg_p_number" name="rep_reg_p_number" value="">
            	<input type="hidden" id="rep_pwd" name="rep_pwd" value="">
            	<input type="hidden" id="rep_g_no" name="rep_g_no" value="">
            </form>
            
            <div id="modifyPopup" class="popupContainer" style="display:none">
                <div class="box">
                    <div class="head">
                        <h1>수정하기</h1>
                        <p>비밀번호를 입력해주세요</p>
                    </div>
                    <div class="inside insideType2">
                        <div class="textInputContainer">
                            <ul>
                                <li>
                                    <h1>비밀번호</h1>
                                    <input id="modifyBoardPwd" type="text" placeholder="암호를 쓰시오!"/>
                                    <p id="modifyBoardPwdCheck"></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="buttonContainer">
                        <ul>
                            <li>
                                <div id="btnModifyClose" class="popupButtonType1">닫기</div>
                            </li>
                            <li>
                                <div id="btnModify" class="popupButtonType2">
                                    확인
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="commentModifyPopup" class="popupContainer" style="display:none">
                <div class="box">
                    <div class="head">
                        <h1>수정하기</h1>
                        <p>비밀번호를 입력해주세요</p>
                    </div>
                    <div class="inside insideType2">
                        <div class="textInputContainer">
                            <ul>
                                <li>
                                    <h1>비밀번호</h1>
                                    <input id="modifyPwd" type="text" placeholder="암호를 쓰시오!" />
                                    <p id="modifyPwdCheck"></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="buttonContainer">
                        <ul>
                            <li>
                                <div id="btnCommentModifyClose" class="popupButtonType1">닫기</div>
                            </li>
                            <li>
                                <div id="btnCommentModify" class="popupButtonType2">
                                    확인
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="deletePostPopup" class="popupContainer" style="display:none">
                <div class="box">
                    <div class="head">
                        <h1>삭제하기</h1>
                        <p>비밀번호를 입력해주세요</p>
                    </div>
                    <div class="inside insideType2">
                        <div class="textInputContainer">
                            <ul>
                                <li>
                                    <h1>비밀번호</h1>
                                    <input id="deletePostPwd" type="text" placeholder="암호를 쓰시오!" />
                                    <p id="deletePostPwdCheck"></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="buttonContainer">
                        <ul>
                            <li>
                                <div id="btnDeletePostClose" class="popupButtonType1">닫기</div>
                            </li>
                            <li>
                                <div id="btnDeletePost" class="popupButtonType2">
                                    확인
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="deleteCommentPopup" class="popupContainer" style="display:none">
                <div class="box">
                    <div class="head">
                        <h1>삭제하기</h1>
                        <p>비밀번호를 입력해주세요</p>
                    </div>
                    <div class="inside insideType2">
                        <div class="textInputContainer">
                            <ul>
                                <li>
                                    <h1>비밀번호</h1>
                                    <input id="deleteCommentPwd" type="text" placeholder="암호를 쓰시오!" />
                                    <p id="deleteCommentPwdCheck"></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="buttonContainer">
                        <ul>
                            <li>
                                <div id="btnDeleteCommentClose" class="popupButtonType1">닫기</div>
                            </li>
                            <li>
                                <div id="btnDeleteComment" class="popupButtonType2">
                                    확인
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            


	            