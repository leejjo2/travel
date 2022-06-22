<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="${pageContext.request.contextPath}/dist/goWith/css/style.css" rel="stylesheet"/>


           <div class="topImg">
                <div class="img">
                    <img src="${pageContext.request.contextPath}/dist/goWith/img/04.jpg" />
                </div>
                <div class="content">
                    <div class="badge">
                        <div class="inside">
                        
                        
                        	진행중
                        
                        
                        
                        </div>
                    </div>
                    <h1 style="word-break:break-all;white-space:pre-line">2022년 08월 28일 ~ 2022년 09월 04일 예정(실투어8/29~9/3 5박6일)</h1>
                </div>
            </div>
            <form action="" id="viewForm" method="post" encType="multipart/form-data">
            <input type="hidden" id="a" name="a" value="vo">
            <div class="postDetail">
                <div class="detailInfo">
                    <div class="inside">
                        <div class="head">
                            <h1 style="word-break:break-all;white-space:pre-line">2022년 08월 28일 ~ 2022년 09월 04일 예정(실투어8/29~9/3 5박6일)</h1>
                        </div>
                        <div class="subInfo">
                            <ul>
                                <li class="noPaddingTopMobile">
                                    <h1>여행국가.</h1>
                                    <p>몽골</p>
                                </li>
                                <li>
                                    <h1>여행지.</h1>
                                    <p>고비사막</p>
                                </li>
                                <li>
                                    <h1>모집인원.</h1>
                                    <p>5</p>
                                </li>
                            </ul>
                            <ul>
                                <li>
                                    <h1>연령대.</h1>
                                    
                                    <p>20대 . 30대 . 40대</p>
                                </li>
                                <li>
                                    <h1>성별.</h1>
                                    <p>혼성이요</p>
                                </li>
                                <li class="pc">&nbsp;</li>
                            </ul>
                            <ul>
                                <li>
                                    <h1>여행상품.</h1>
                                    <p>(오다투어)고비사막 5박6일</p>
                                </li>
                            </ul>
                            <ul>
                                <li>
                                    <h1>일정.</h1>
                                    <p>2022-08-28 ~ 2022-09-04 (7박8일)</p>
                                </li>
                            </ul>
                        </div>
                        <div class="text" style="" >
                        	<p style="word-break:break-all;white-space:pre-line">몽골의 초원과 자연을 만끽하러 가고 싶네요 제 나이는 이제 40이구요


동행자들은 20대30대부터 40대까지 상관없으니 몽골의 초원과 은하수 보러 갔으면 하네요


아직 정한건 없으니 동행 다 모인후 서로 도우면서 알아보고 결정해요..

인원은 남3 여3으로 가서 조은추억남겨요


저는 사진이랑 영상찍는게 취미라 여행가면 인생샷 여행영상 만들어드릴께요..


항공 발권은 동행 구한후 상의후 결정했으면 하네요..</p>
                        </div>
                        <div class="buttonContainer">
                            <ul>
                                <li>
                                    <div id="btnBoardModify" class="buttonType3">수정하기</div>
                                </li>
                                <li>
                                    <div id="btnDelete" class="buttonType3">삭제하기</div>
                                </li>
                            </ul>
                        </div>
                        <div class="divider marginTopXxl marginBottomXxl"></div>
                        <div class="commentContainer">
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
                                <h1>시흥갈매기</h1>
                            </div>
                            <div class="right">
                                <p>2022-06-16</p>
                                <p><img src='img/view_ico.svg'/>조회수. 14</p>
                            </div>
                        </div>
                        <div class="img">
                        			<img id="thumbnailImg" src="img/no_thumbnail_ex.jpg"/>
                        </div>
                       
                        <div class="tagsContainer">
                            <ul>
                            <li>
                                            <div class="inside">#혼성이요</div>
                                        </li>
                               		<li>
                                       	<div class="inside">#20대</div>
                                   	</li>
                               		<li>
                                       	<div class="inside">#30대</div>
                                   	</li>
                               		<li>
                                       	<div class="inside">#40대</div>
                                   	</li>
                                   		<li>
                                            <div class="inside">#술 상관없어요</div>
                                        </li>
                                   		<li>
                                            <div class="inside">#담배 상관없어요</div>
                                        </li>
                                   		<li>
                                            <div class="inside">#활동적인</div>
                                        </li>
                                   		<li>
                                            <div class="inside">#랜드마크형</div>
                                        </li>
                                   		<li>
                                            <div class="inside">#모혐형</div>
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
            


	            