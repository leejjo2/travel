<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link href="${pageContext.request.contextPath}/dist/goWith/css/style.css" rel="stylesheet"/>

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
                                        <div id="modifyCommentDiv0" class="textInputContainer marginTopMd" style="display:none">
                                        <input type="hidden" id="modifyNo0" name="modifyNo0" value="1">
                                        	<ul>
                                                <li>
                                                    <textarea id="modifyContent0" placeholder="어서 적으세요! 글쓴이에게 카톡 알람으로 전송할게요!">아 본문에 혼성이라고 되어 있는데, 저희는 여성 2명입니다. 모집하는 두분 성별은 상관없어요. 

대학원/회사로부터 잠시 휴식을 취하기 위해 자연과 가깝게 있을 수 있는 몽골로 여행을 떠나게 되었습니다. 기본적으로 휴식과 힐링을 목적으로 하는 여행이에요. 저희 둘다 사람에 대한 애정이 있고, 삶에 대한 깊은 고민을 하고, (음주)가무를 참 좋아합니다. (둘이 마지막으로 다녀온 해외여행이 파티섬 코팡안이었어요. 약 7년전이라 그때와 텐션이 같지는 않지만 마음만큼은 같습니다^^. ) 

낮에는 사막과 밤에는 하늘과 깊게 연결되는, 편하고 즐거운 여행 하실 분들 함께해요. 

생각하는 여행의 스케치가 있는만큼, 동행을 거절할 수 있다는 점 미리 양해부탁드릴게요. 연락주실 때 부담 안되실 정도의 간단한 자기소개와 저희 여행이 잘 맞을 것 같은지 말씀주시면 소통이 원활할 것 같아요. 감사합니다 :D

* 대학원 기말 텀페이퍼 작성 중으로 카톡 답장이 다소 느릴 수 있습니다. 잠시만 기다려주세요!</textarea>
                                                </li>
                                            </ul>
                                            <div class="buttonContainer marginTopLg">
                                                <div id="btnModifyComment0" class="buttonType2" onclick="fn_modifyComment('0');">
                                                    수정 하기
                                                </div>
                                            </div>
                                        </div>
                                        <!-- 대댓글 입력창 -->
                                        <div id="addCommentDiv0" class="textInputContainer marginTopMd" style="display:none">
                                        <input type="hidden" id="commentRepNo0" name="commentRepNo0" value="1">
                                        <input type="hidden" id="commentRepPName0" name="commentRepPName0" value="dy001">
                                            <ul>
                                                <li>
                                                    <textarea id="commentRepContent0" placeholder="어서 적으세요! 글쓴이에게 카톡 알람으로 전송할게요!"></textarea>
                                                </li>
                                            </ul>
                                            <ul>
                                                <li>
                                                    <h1>닉네임</h1>
                                                    <input type="text" id="commentRepName0" placeholder="닉네임을 쓰시오!">
                                                </li>
                                                <li>
                                                    <h1>
                                                        연락처(카카오톡 알림용)
                                                    </h1>
                                                    <input type="text" id="commentRepNumber0" placeholder="알림용으로만 쓰겠슈!" oninput="autoHyphen(this)" maxlength="13">
                                                </li>
                                                <li>
                                                    <h1>비밀번호</h1>
                                                    <input type="text" id="commentRepPwd0" placeholder="암호를 쓰시오!">
                                                </li>
                                            </ul>
                                            <!-- 체크박스 -->
                                            <div class="checkBoxContainer">
                                                <ul>
                                                    <!-- <li>
                                                        <div
                                                            class="checkRadioBoxCircleType1"
                                                        >
                                                            <input
                                                                type="checkbox"
                                                                id="secret"
                                                                name="secret"
                                                            />
                                                            <label for="secret">
                                                                <div
                                                                    class="circle"
                                                                >
                                                                    <div
                                                                        class="inside"
                                                                    ></div>
                                                                </div>
                                                                <p>비밀 댓글</p>
                                                            </label>
                                                        </div>
                                                    </li> -->
                                                    <li>
                                                        <div class="checkRadioBoxCircleType1">
                                                            <input type="checkbox" id="replyAgree0" name="replyAgree0" onclick="fn_privacyPopup1('replyAgree0')">
                                                            <label for="replyAgree0">
                                                                <div class="circle">
                                                                    <div class="inside"></div>
                                                                </div>
                                                                <p>
                                                                    개인정보
                                                                    수집에
                                                                    동의합니다.
                                                                </p>
                                                            </label>
                                                        </div>
                                                        <p>
                                                            동행 모집 편의를
                                                            위해 만들어진
                                                            공간입니다. 동행
                                                            모집 과정 및 투어 중
                                                            생기는 문제는
                                                            (주)오후다섯시에서
                                                            책임 지지 않습니다.
                                                        </p>
                                                    </li>
                                                </ul>
                                            </div>
                                            <!-- //체크박스 -->
                                            <!-- 버튼 -->
                                            <div class="buttonContainer marginTopLg">
                                                <div id="btnAddComment0" class="buttonType2" onclick="fn_addComment('0')">
                                                    댓글 달기
                                                </div>
                                            </div>
                                            <!-- //버튼 -->
                                        </div>
                                        <!-- 대댓글조회 -->
                                        
                                        <!-- //대댓글 조회-->
                                	</div>
                                </li>
                                
                                
                                <!-- //댓글 포스트 -->
                                <!-- 댓글 입력창 -->
                                <div class="textInputContainer">
                                    <ul>
                                        <li>
                                        	<h1>댓글 쓰기</h1>
                                            <textarea id="commentContent" placeholder="어서 적으세요! 글쓴이에게 카톡 알람으로 전송할게요!"></textarea>
                                        </li>
                                    </ul>
                                    <ul>
                                        <li>
                                            <h1>닉네임</h1>
                                            <input type="text" id="commentName" placeholder="닉네임을 쓰시오!">
                                        </li>
                                        <li>
                                            <h1>연락처(카카오톡 알림용)</h1>
                                            <input type="text" id="commentNumber" placeholder="알림용으로만 쓰겠슈!" oninput="autoHyphen(this)" maxlength="13">
                                        </li>
                                        <li>
                                            <h1>비밀번호</h1>
                                            <input type="text" id="commentPwd" placeholder="암호를 쓰시오!">
                                        </li>
                                    </ul>
                                    <!-- 체크박스 -->
                                    <div class="checkBoxContainer">
                                        <ul>
                                            <!-- <li>
                                                <div
                                                    class="checkRadioBoxCircleType1"
                                                >
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
                                            </li> -->
                                            <li>
                                                <div class="checkRadioBoxCircleType1">
                                                    <input type="checkbox" id="agree" name="agree" onclick="fn_privacyPopup3('agree')">
                                                    <label for="agree">
                                                        <div class="circle">
                                                            <div class="inside"></div>
                                                        </div>
                                                        <p>
                                                            <a onclick="document.getElementById('agree').onclick">개인정보</a> 수집에
                                                            동의합니다.
                                                        </p>
                                                    </label>
                                                </div>
                                                <p>
                                                    동행 모집 편의를 위해
                                                    만들어진 공간입니다. 동행
                                                    모집 과정 및 투어 중 생기는
                                                    문제는 (주)오후다섯시에서
                                                    책임 지지 않습니다.
                                                </p>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- //체크박스 -->
                                    <!-- 버튼 -->
                                    <div class="buttonContainer marginTopLg">
                                        <div id="commentRegister" class="buttonType2">
                                            댓글 달기
                                        </div>
                                    </div>
                                    <!-- //버튼 -->
                                </div>
                                <!-- //댓글 입력창 -->
                            </ul>
                        </div>