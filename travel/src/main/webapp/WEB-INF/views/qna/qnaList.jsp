<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<link rel="stylesheet"
   href="${pageContext.request.contextPath}/dist/QNA/QNA1.css"   type="text/css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/dist/QNA/QNA2.css"  type="text/css">

<div class="container-sm mb-2 pt-3 title3" style="width:960px; min-height: 1000px;">
	<div class="customer counsel">
					<h3 class="title">Q&amp;A</h3>
					
	<p class="fs14 fc-lightgray">상품 및 서비스에 대해 궁금하신 사항을 친절하게 안내해드리겠습니다.<br>
	문의 하시기 전 '자주묻는질문' 을 찾아 보시면 신속하게 궁금증을 해소하실 수 있습니다</p>
	<div class="align-right">
		<a  style="margin-bottom: 10px;" href="/help/consulting/con_write.html?agt=jeju&amp;return_url=%2Fhelp%2Fconsulting%2Fcon_list.html%3Fagt%3Djeju" class="btn_comm">글쓰기</a>
	</div>
	
	<table class="data-table board-list" id="board_list">
		<caption>여행상담 내역으로 번호, 제목, 작성자, 등록일, 답변 유무로 구성</caption>
		<colgroup>
			<col style="">
			<col style="width:50%">
			<col style="">
			<col style="">
			<col style="">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th scope="col">작성자</th>
				<th scope="col">등록일</th>
				<th scope="col">답변유무</th>
			</tr>
		</thead>
		<tbody>
			<tr class="notice">
				<td>공지</td>
				<td class="align-left">
					
					
					<a href="/help/consulting/con_view.html?agt=jeju&amp;return_url=%2Fhelp%2Fconsulting%2Fcon_list.html%3Fagt%3Djeju&amp;idx=141029" class="title " jc-user-id="breadchoco" jc-parent-id="">
	                    2022년 4월18일(월) 거리두기 정책 해제 안내의 건&nbsp;
	                </a> 
					
					
					
					
					
				</td>
				<td>
					<a href="javascript:;">
					
							제주닷컴
						
						
					</a>
				</td>
				<td>
					<span>
						2022.04.15
					</span>
				</td>
				<td>
				</td>
			</tr>
				
			<tr class="notice">
				<td>공지</td>
				<td class="align-left">
					
					
					<a href="/help/consulting/con_view.html?agt=jeju&amp;return_url=%2Fhelp%2Fconsulting%2Fcon_list.html%3Fagt%3Djeju&amp;idx=140942" class="title " jc-user-id="breadchoco" jc-parent-id="">
	                    4월3일(금) 발표된 새로운 거리두기 정책 안내&nbsp;
	                </a> 
					
					
					
					
					
				</td>
				<td>
					<a href="javascript:;">
					
							제주닷컴
						
						
					</a>
				</td>
				<td>
					<span>
						2022.04.01
					</span>
				</td>
				<td>
				</td>
			</tr>
				
			<tr class="notice">
				<td>공지</td>
				<td class="align-left">
					
					
					<a href="/help/consulting/con_view.html?agt=jeju&amp;return_url=%2Fhelp%2Fconsulting%2Fcon_list.html%3Fagt%3Djeju&amp;idx=129906" class="title " jc-user-id="" jc-parent-id="">
	<strong>[결항]</strong>                    항공 결항시 대처방법&nbsp;
	                </a> 
					
					
					
					
					
				</td>
				<td>
					<a href="javascript:;">
					
							고객님
						
						
					</a>
				</td>
				<td>
					<span>
						2018.10.05
					</span>
				</td>
				<td>
				</td>
			</tr>
				
			<tr>
				<td>66750</td>
				<td class="align-left">
					
					
					<a href="/help/consulting/con_view.html?agt=jeju&amp;return_url=%2Fhelp%2Fconsulting%2Fcon_list.html%3Fagt%3Djeju&amp;idx=141430" class="title dumy_move_view" jc-user-id="naver4212613" jc-parent-id="">
	<strong>[상품문의]</strong>                    탈퇴&nbsp;
	                </a> 
					
	 <img src="${pageContext.request.contextPath}/resources/img/qna/ico_new.gif" alt="새글">
	 <img src="${pageContext.request.contextPath}/resources/img/qna/ico_lock.gif" alt="잠김글">				
					
					
					
				</td>
				<td>
					<a href="javascript:;">
					
							최경*
							
						
						
					</a>
				</td>
				<td>
					<span>
						<em>22:56:23</em>
					</span>
				</td>
				<td>
					<em>답변대기</em>
				</td>
			</tr>
				
			<tr>
				<td>66749</td>
				<td class="align-left">
					
					
					<a href="/help/consulting/con_view.html?agt=jeju&amp;return_url=%2Fhelp%2Fconsulting%2Fcon_list.html%3Fagt%3Djeju&amp;idx=141429" class="title dumy_move_view" jc-user-id="naver36424637" jc-parent-id="">
	<strong>[기타문의]</strong>                    렌트카&nbsp;
	                </a> 
					
	 <img src="${pageContext.request.contextPath}/resources/img/qna/ico_new.gif" alt="새글">
	 	 <img src="${pageContext.request.contextPath}/resources/img/qna/ico_lock.gif" alt="잠김글">				
				
					
					
					
				</td>
				<td>
					<a href="javascript:;">
					
							김명*
							
						
						
					</a>
				</td>
				<td>
					<span>
						<em>21:23:10</em>
					</span>
				</td>
				<td>
					<em>답변대기</em>
				</td>
			</tr>
				
			<tr>
				<td>66748</td>
				<td class="align-left">
					
					
					<a href="/help/consulting/con_view.html?agt=jeju&amp;return_url=%2Fhelp%2Fconsulting%2Fcon_list.html%3Fagt%3Djeju&amp;idx=141426" class="title dumy_move_view" jc-user-id="" jc-parent-id="">
	<strong>[기타문의]</strong>                    영수증 및 전표확인&nbsp;
	                </a> 
					
		 <img src="${pageContext.request.contextPath}/resources/img/qna/ico_lock.gif" alt="잠김글">				
			
					
					
					
				</td>
				<td>
					<a href="javascript:;">
					
							조상*
							
						
						
					</a>
				</td>
				<td>
					<span>
						2022.06.14
					</span>
				</td>
				<td>
					답변완료
				</td>
			</tr>
				
			<tr>
				<td>-</td>
				<td class="align-left">
		 <img src="${pageContext.request.contextPath}/resources/img/qna/ico_reply.gif" alt="답변">				
			
					
					<a href="/help/consulting/con_view.html?agt=jeju&amp;return_url=%2Fhelp%2Fconsulting%2Fcon_list.html%3Fagt%3Djeju&amp;idx=141427" class="title dumy_move_view" jc-user-id="jihye-91" jc-parent-id="" jc-ref="141426">
	                    조상**님 답변드립니다.&nbsp;
	                </a> 
					
		 <img src="${pageContext.request.contextPath}/resources/img/qna/ico_lock.gif" alt="잠김글">				
			
					
					
					
				</td>
				<td>
					<a href="javascript:;">
					
							여행매니저_윤지혜
					</a>
				</td>
				<td>
					<span>
						2022.06.14
					</span>
				</td>
				<td>
				</td>
			</tr>
				
			<tr>
				<td>66747</td>
				<td class="align-left">
					
					
					<a href="/help/consulting/con_view.html?agt=jeju&amp;return_url=%2Fhelp%2Fconsulting%2Fcon_list.html%3Fagt%3Djeju&amp;idx=141423" class="title dumy_move_view" jc-user-id="naver27200781" jc-parent-id="">
	<strong>[상품문의]</strong>                    렌트카 쿠폰 다운을 어디서 할 수 있을지요&nbsp;
	                </a> 
					
		 <img src="${pageContext.request.contextPath}/resources/img/qna/ico_lock.gif" alt="잠김글">				
			
					
					
					
				</td>
				<td>
					<a href="javascript:;">
					
							임범*
							
						
						
					</a>
				</td>
				<td>
					<span>
						2022.06.14
					</span>
				</td>
				<td>
					답변완료
				</td>
			</tr>
				
			<tr>
				<td>-</td>
				<td class="align-left">
	<img src="${pageContext.request.contextPath}/resources/img/qna/ico_reply.gif" alt="답변">				
					
					<a href="/help/consulting/con_view.html?agt=jeju&amp;return_url=%2Fhelp%2Fconsulting%2Fcon_list.html%3Fagt%3Djeju&amp;idx=141425" class="title dumy_move_view" jc-user-id="jhmg7982" jc-parent-id="naver27200781" jc-ref="141423">
	                    임범**님 답변입니다.&nbsp;
	                </a> 
					
		 <img src="${pageContext.request.contextPath}/resources/img/qna/ico_lock.gif" alt="잠김글">				
				
					
					
					
				</td>
				<td>
					<a href="javascript:;">
					
							여행매니저_이미진
					</a>
				</td>
				<td>
					<span>
						2022.06.14
					</span>
				</td>
				<td>
				</td>
			</tr>
				
			<tr>
				<td>66746</td>
				<td class="align-left">
					
					
					<a href="/help/consulting/con_view.html?agt=jeju&amp;return_url=%2Fhelp%2Fconsulting%2Fcon_list.html%3Fagt%3Djeju&amp;idx=141421" class="title dumy_move_view" jc-user-id="naver78200638" jc-parent-id="">
	<strong>[결제]</strong>                    현금결제시 현금영수증 발급&nbsp;
	                </a> 
					
		 <img src="${pageContext.request.contextPath}/resources/img/qna/ico_lock.gif" alt="잠김글">				
				
					
					
					
				</td>
				<td>
					<a href="javascript:;">
					
							이혜*
							
						
						
					</a>
				</td>
				<td>
					<span>
						2022.06.14
					</span>
				</td>
				<td>
					답변완료
				</td>
			</tr>
				
			<tr>
				<td>-</td>
				<td class="align-left">
	<img src="${pageContext.request.contextPath}/resources/img/qna/ico_reply.gif" alt="답변">				
					
					<a href="/help/consulting/con_view.html?agt=jeju&amp;return_url=%2Fhelp%2Fconsulting%2Fcon_list.html%3Fagt%3Djeju&amp;idx=141422" class="title dumy_move_view" jc-user-id="wjsals486" jc-parent-id="naver78200638" jc-ref="141421">
	                    이**님 답변입니다&nbsp;
	                </a> 
					
		 <img src="${pageContext.request.contextPath}/resources/img/qna/ico_lock.gif" alt="잠김글">				
				
					
					
					
				</td>
				<td>
					<a href="javascript:;">
					
							여행매니저_전민경
					</a>
				</td>
				<td>
					<span>
						2022.06.14
					</span>
				</td>
				<td>
				</td>
			</tr>
				
		
		<!--
			<tr>
			<td>1</td>
			<td class="align-left"><a href="#none" class="title">2월 롯데호텔 숙박 문의</a> <img src="/images/ico_new.gif" alt="새글"></td>
			<td>홍**</td>
			<td>
				<span class="fc-lightgray">2016.01.01</span>
			</td>
			<td>
				<em>답변대기</em>
			</td>
		</tr>
		<tr>
			<td>2</td>
			<td class="align-left"><a href="#none" class="title">숙소변경 가능 여부 문의 <img src="/images/ico_lock.gif" alt="잠김글"></a> </td>
			<td>홍**</td>
			<td>
				<span class="fc-lightgray">2016.01.01</span>
			</td>
			<td>
				답변완료
			</td>
		</tr>
		<tr>
			<td>3</td>
			<td class="align-left"><img src="/images/ico_reply.gif" alt="답변"> <a href="#none" class="title">손**고객님 답변입니다. <img src="/images/ico_lock.gif" alt="잠김글"></a> <img src="/images/ico_new.gif" alt="새글"></td>
			<td>홍**</td>
			<td>
				<span class="fc-lightgray">2016.01.01</span>
			</td>
			<td></td>
		</tr>
	
	-->
		
		
		</tbody>
	</table>
	<div class="pagination align-center" style="display: flex;  justify-content: center;">
		<span style="display:none"><img src="/images/btn_navi_first.gif" alt="처음으로"></span>
		<span style="display:none"><img src="/images/btn_navi_prev.gif" alt="이전 목록"></span>
		 <span class="current">1</span>  <a href="/help/consulting/con_list.html?agt=jeju&amp;page=2">2</a>  <a href="/help/consulting/con_list.html?agt=jeju&amp;page=3">3</a>  <a href="/help/consulting/con_list.html?agt=jeju&amp;page=4">4</a>  <a href="/help/consulting/con_list.html?agt=jeju&amp;page=5">5</a>  <a href="/help/consulting/con_list.html?agt=jeju&amp;page=6">6</a>  <a href="/help/consulting/con_list.html?agt=jeju&amp;page=7">7</a>  <a href="/help/consulting/con_list.html?agt=jeju&amp;page=8">8</a>  <a href="/help/consulting/con_list.html?agt=jeju&amp;page=9">9</a>  <a href="/help/consulting/con_list.html?agt=jeju&amp;page=10">10</a> 
		
		<a href="/help/consulting/con_list.html?agt=jeju&amp;page=11"><img src="/images/btn_navi_next.gif" alt="다음 목록"></a>
		<a href="/help/consulting/con_list.html?agt=jeju&amp;page=13350"><img src="/images/btn_navi_end.gif" alt="마지막으로"></a>
	</div>
	<!-- 게시물 검색 start -->
	<fieldset class="board-search">
		<form method="get" action="/help/consulting/con_list.html">	
			<input type="hidden" name="agt" value="jeju">
			<legend class="sr-only">게시판 검색</legend>
			<span class="box_slt">
				<select name="KF" class="inp_slt" title="검색 분류 선택">
					<option value="TITLE">제목</option>
					<option value="CONTENT">내용</option>
					<option value="NAME">작성자</option>
				</select>
			</span>
			<span class="box_text">
				<input type="text" name="KW" class="inp_text" title="검색어 입력" placeholder="검색어 입력" value="">
			</span>
			<button class="btn_comm">검색</button>
		</form>
	</fieldset>
	<!-- 게시물 검색 end -->
	
	<!-- 비밀번호 입력 레이어 -->
	
	
					<!-- 게시물 검색 end -->
				</div>
</div>			   
