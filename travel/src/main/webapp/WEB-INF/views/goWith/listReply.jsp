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
                                		<h1>댓글 ${replyCount}개</h1>
                                		<span>[목록, ${pageNo}/${total_page} 페이지]</span>
                                	</li>
                                </ul>
                                </div>
                                <c:forEach var="vo" items="${listReply}">
                                <li>
                                    <div class="comment">
                                        <div class="text" style="word-break:break-all;white-space:pre-line">${vo.content}</div>
                                        <div class="user">
                                            <h1>${vo.userName}</h1>
                                            <p>${vo.reg_date}</p>
                                        </div>
                                        <div class="buttonContainer">
                                            <ul>
                                                <li>
                                                    <a onclick="#" class="updateReply" data-replyNum='${vo.goWithReplyNum}' data-pageNo='${pageNo}' style="cursor:pointer;"> 수정 </a>
                                                </li>
                                                <li>
                                                    <a onclick="#" class="deleteReply" data-replyNum='${vo.goWithReplyNum}' data-pageNo='${pageNo}' style="cursor:pointer;"> 삭제 </a>
                                                </li>
                                            </ul>
                                            </div>
                                        </div>
                                        </li>
                                        </c:forEach>
                                        </ul>
                                        
                                        </div>
                                        
                                   <div class="page-box">     
                                   		${paging}
                                	</div>
                               