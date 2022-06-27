<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<link rel="stylesheet"
   href="${pageContext.request.contextPath}/dist/mypage/mypage.css" type="text/css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/dist/mypage/content.css" type="text/css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/dist/mypage/common.css" type="text/css">


<div id="contents">
		<div class="tit_cont tit_my">
		   <!-- 0703 클래스 ico 태그 추가 -->
			<h2><span class="ico">My</span>마이페이지</h2>
			<!-- // 0703 클래스 ico 태그 추가 -->
			<button type="button" title="열기" class="btn_titview">더보기</button>
			<!-- 팝업 메뉴 -->
			<div class="pop_subMenu pop_myPage" tabindex="0">
				<ul>
					<li class="btn_logout"><a href="javascript:showLogin(1);">로그아웃</a></li>
					<li class="btn_out"><a href="javascript:memberLeave();">회원탈퇴</a></li>
<!-- 					<li class="btn_info"><a href="/common/more_info_mod.do">추가정보 수정</a></li> -->
				</ul>
			</div>
			<!-- //팝업 메뉴 -->
		</div>

		<div class="subscription_banner" style="display: block;">
			<a href="javascript:goTravelSubscribe();">
				<img src="${pageContext.request.contextPath}/resources/img/mypage/img_subscription_banner.gif" class="pc" alt="가볼래~터 - 매월 15일 당신의 눈 앞에 여행을 배송합니다. 지금, 여행을 구독하세요! 구독하기">
				<img src="/resources/images/travelsubscribe/img_subscription_mbanner.gif" class="mo" alt="가볼래~터 - 매월 15일 당신의 눈 앞에 여행을 배송합니다. 지금, 여행을 구독하세요! 구독하기">
			</a>
		</div>
		<!-- 배너 -->
		<div class="subscription_current" style="display : none;">
			<div class="title">
				<h3></h3>
				<div class="txt">
					<p>※ 기존 미션 및 이벤트 참여 이력은 각 버튼을 클릭하시면 확인하실 수 있습니다.</p>
					<p>※ 레벨 2. 사용자의 경우 장기간 미션 미 참여시 불시에 레벨이 강등될 수 있습니다.</p>
				</div>
			</div>
			<ul>
				<li id="subscribeli">
					<strong>구독 정보</strong>
					<ul>
						<li id="nameli"></li>
						<li id="phoneli"></li>
						<li id="levelli"></li>
					</ul>
					<em class="type1">구독중</em>
					<button class="modify" type="button" onclick="gotrsswrite();">수정</button>
				</li>
				<li>
					<strong>레터 모아보기</strong>
					<a href="/trss/more_view.do">읽기</a>
				</li>
				<li id="missionli">
					<strong>미션 참여</strong>
					<em class="type2"></em>
					<a href="/mypage/mypage_mission_trss.do"></a>
				</li>
				<li id="ticketli" class="lottery">
					<strong>여행 복권</strong>
					<a href="/mypage/mypage_lottery_trss.do" class="star"></a>
				</li>
			</ul>
		</div>
		<h3 class="box_tit" style="display: none;">MY 회원 정보</h3>
		<ul class="mypage_banner">
			
			<li class="btn_myList">
				<a href="${pageContext.request.contextPath}/member/pwd">
				
					<div class="profile">
						<div class="photo">
							<img src="https://ssl.pstatic.net/static/pwe/address/img_profile.png" alt="프로필 사진">
						</div>
						<strong class="userName">김수인</strong>
					</div>
				</a>
			</li>
			
			<li class="btn_myList" id="kstayMenu" style="display : none;">
				<a class="lodge" href="../kstay/ks_main.do">
					<strong>‘숙박대전’ 특집</strong>
					<p>내 숙소 주변 <br>추천 여행지는?</p>
				</a>
			</li>
			<li class="btn_myList">
				<a href="../mypage/mypage_list_fav.do">
					<strong>스크랩</strong>
					<p class="number" id="favoCnt">0</p>
				</a>
			</li>
			<li class="btn_myList">
				<a href="../mypage/mypage_list_cos.do">
					<strong>좋아요</strong>
					<p class="number" id="cosCnt">1</p>
				</a>
			</li>
			<li class="btn_myList">
				<a href="../mypage/mypage_list_reply.do">
					<strong>주문내역</strong>
					<p class="number" id="commentCnt">0</p>
				</a>
			</li>
			<li class="btn_myList">
				<a href="${pageContext.request.contextPath}/withpartner/join">
					<strong>파트너 신청</strong>
					<p class="number" id="jikimiCnt">0</p>
				</a>
			</li>
			<li class="btn_myList">
				<a href="../mypage/mypage_list_qna.do">
					<strong>Q&amp;A</strong>
					<p class="number" id="qnaCnt">0</p>
				</a>
			</li>
			<!--
			<li class="btn_myList">
				<a href="/mypage/mypage_list_coupon.do">
					<strong>여행가는 달</strong>
					<p class="number" id="cpCnt"></p>
				</a>
			</li>

			<li class="btn_myList">
				<a href="">
					<strong>쿠폰</strong>
					<p class="number">0</p>
				</a>
			</li>

	 			<li class="btn_myList"> 
	 				<a href="/mypage/mypage_list_event.do"> 
	 					<strong>이벤트</strong> 
	 					<p class="number" id="eventCnt"></p> 
	 				</a> 
	 			</li> 
 			 -->
	 			<li class="btn_myList" id="stamp"> 
	 				<a href="/mypage/mypage_list_stamp.do"> 
	 					<strong>발도장</strong> 
	 					<p class="number" id="stampCnt">0</p> 
	 				</a> 
	 			</li> 
		</ul>
		<!-- //배너 -->

	</div>		
</div>   
