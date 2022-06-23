<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="${pageContext.request.contextPath}/dist/goWith/css/style.css" rel="stylesheet"/>


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
                                    <div id="btnDelete" class="buttonType3">삭제하기</div>
                                </li>
                            </ul>
                        </div>
                        <div class="divider marginTopXxl marginBottomXxl"></div>
                        <div class="commentContainer">
                        	 <ul>
                                
                                <div class="textInputContainer marginTopMd">
                                <ul>
                                	<li>
                                		<h1>댓글</h1>
                                	</li>
                                </ul>
                                </div>
                                
                                <li>
                                    <div class="comment">
                                        <div class="text" style="word-break:break-all;white-space:pre-line">아 본문에 혼성이라고 되어 있는데, 저희는 여성 2명입니다. 모집하는 두분 성별은 상관없어요. 

대학원/회사로부터 잠시 휴식을 취하기 위해 자연과 가깝게 있을 수 있는 몽골로 여행을 떠나게 되었습니다. 기본적으로 휴식과 힐링을 목적으로 하는 여행이에요. 저희 둘다 사람에 대한 애정이 있고, 삶에 대한 깊은 고민을 하고, (음주)가무를 참 좋아합니다. (둘이 마지막으로 다녀온 해외여행이 파티섬 코팡안이었어요. 약 7년전이라 그때와 텐션이 같지는 않지만 마음만큼은 같습니다^^. ) 

낮에는 사막과 밤에는 하늘과 깊게 연결되는, 편하고 즐거운 여행 하실 분들 함께해요. 

생각하는 여행의 스케치가 있는만큼, 동행을 거절할 수 있다는 점 미리 양해부탁드릴게요. 연락주실 때 부담 안되실 정도의 간단한 자기소개와 저희 여행이 잘 맞을 것 같은지 말씀주시면 소통이 원활할 것 같아요. 감사합니다 :D

* 대학원 기말 텀페이퍼 작성 중으로 카톡 답장이 다소 느릴 수 있습니다. 잠시만 기다려주세요!</div>
                                        <div class="user">
                                            <h1>dy001</h1>
                                            <p>4시간전</p>
                                        </div>
                                        <div class="buttonContainer">
                                            <ul>
                                                <li>
                                                    <a onclick="fn_displayModifyComment('modifyCommentDiv0');" style="cursor:pointer;"> 수정 </a>
                                                </li>
                                                <li>
                                                    <a onclick="fn_deleteComment('0');" style="cursor:pointer;"> 삭제 </a>
                                                </li>
                                                <li>
                                                    <a onclick="fn_displayAddComment('addCommentDiv0');" style="cursor:pointer;"> 대댓글 </a>
                                                </li>
                                            </ul>
                                        </div>
                                	</div>
                                </li>
                            <ul>
                                <div class="textInputContainer">
                                    <ul>
                                        <li>
                                        	<h1>댓글 쓰기</h1>
                                            <textarea id="commentContent" placeholder="어느 말이든 좋아요. 무엇이든 물어보세요:D"></textarea>
                                        </li>
                                    </ul>
                                    <ul>
                                        <li>
                                            <h1>닉네임</h1>
                                            <input type="text" id="commentName" placeholder="닉네임을 쓰시오" />
                                        </li>
                                        <li>
                                            <h1>연락처(카카오톡 알림용)</h1>
                                            <input type="text" id="commentNumber" placeholder="알림용으로만 쓰겠슈!" oninput="autoHyphen(this)" maxlength="13"/>
                                        </li>
                                        <li>
                                            <h1>비밀번호</h1>
                                            <input type="text" id="commentPwd" placeholder="암호를 쓰시오!" />
                                        </li>
                                    </ul>
                                    <div class="checkBoxContainer">
                                        <ul>
                                        	<li>
                                                <div
                                                    class="checkRadioBoxCircleType1">
                                                    <input
                                                        type="checkbox"
                                                        id="secret"
                                                        name="secret"
                                                    />
                                                    <label for="secret">
                                                        <div class="circle">
                                                            <div
                                                                class="inside"
                                                            ></div>
                                                        </div>
                                                        <p>비밀 댓글</p>
                                                    </label>
                                                </div>
                                            </li> 
                                            <li>
                                                <div class="checkRadioBoxCircleType1" >
                                                    <input type="checkbox" id="agree" name="agree" onclick="fn_privacyPopup3('agree')" />
                                                    <label for="agree">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>
                                                            <a onclick="document.getElementById('agree').onclick">개인정보</a> 수집에
                                                            동의합니다.
                                                        </p>
                                                    </label>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="buttonContainer marginTopLg">
                                        <div id="commentRegister" class="buttonType2">
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
            


	            