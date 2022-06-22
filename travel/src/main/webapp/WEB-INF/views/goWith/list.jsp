<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="${pageContext.request.contextPath}/dist/goWith/css/style.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/dist/goWith/css/pretendard.css" rel="stylesheet"/>

            <div id="topImgDiv" class="topImg" style="padding:0px; padding-top:30px;">
                <div class="overlay"></div>
                <div class="content">
                    <h1 style="margin-top: 20px;">동행을 구해보세요</h1>
                    <p>
                        지금까지 총 <span>120팀</span>의 동행 모집이 성공적으로 매칭되었어요!
                    </p>
                </div>
                <div class="buttonContainer marginTopXxl">
                    <ul>
                        <li>
                            <div id="btnRegister" class="buttonType1" onclick="location.href='${pageContext.request.contextPath}/gowith/write'">
                                동행모집하기
                               <i class="bi bi-cursor"></i>
                            </div>
                        </li>
                        <li>
                            <div id="btnJoin" class="buttonType1">
                                타팀 합류하기
                                <i class="bi bi-cursor"></i>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="buttonContainer marginTopXxl">
                	<div id="btnMoveList" class="buttonType1" style="border:0px; width:180px; height:50px;">
                	<ul>
                        <li>
                            <p>전체 동행모집 보기</p>
                        </li>
                        <li>
                        	<p style="text-align:center;">V</p>
                        </li>
                    </ul>
                    </div>
                </div>
            </div>
            <div class="contentWrapperType1 marginTopXxl">
                <div id="searchDiv1" class="searchBox">
                    <ul>
                        <li>
                            <div class="contentBoxType1">
                                <div class="headType1">
                                    <h1>어느 곳으로 떠나시겠어요?</h1>
                                    <p>
                                        방문하시고 싶은 혹은 예정 중인 곳을
                                        선택해주세요.
                                    </p>
                                </div>
                                <div class="contentContainer">
                                	<input type="hidden" id="product_code" name="product_code" value="">
                                    <div class="menu marginTopMd marginBottomMd">
                                        <ul>
                                        	<li>
                                                	<div id="productTab0" class="tabButtonType1 tabButtonType1Active">
                                                	서울
                                                    <input type="hidden" name="product_name" value="M01">
                                                    </div>                                       
                                                    <div id="productTab1" class="tabButtonType1 tabButtonType1Active">
                                                	경기
                                                    <input type="hidden" name="product_name" value="M01">
                                                    </div>
                                                    <div id="productTab2" class="tabButtonType1 tabButtonType1Active">
                                                	인천
                                                    <input type="hidden" name="product_name" value="M01">
                                                    </div>  
                                            </li>
                                        </ul>
                                    </div>	
                                    	<div id="divProduct0" class="contentInsideType" style="display:block">
	                                        <ul>  	
	                                            <li>
	                                                <div class="checkRadioBoxCircleType">
	                                                	<input type="checkbox" id="placeSelect0" name="place" value="M0101" onclick="checkProduct(this)">
	                                                    <label for="placeSelect0">
	                                                        <div class="circle">
	                                                            <div class="inside"></div>
	                                                        </div>
	                                                        <p>종로구</p>
	                                                    </label>
	                                                </div>
	                                            </li>   	
	                                            <li>
	                                                <div class="checkRadioBoxCircleType">
	                                                	<input type="checkbox" id="placeSelect1" name="place" value="M0102" onclick="checkProduct(this)">
	                                                    <label for="placeSelect1">
	                                                        <div class="circle">
	                                                            <div class="inside"></div>
	                                                        </div>
	                                                        <p>중구</p>
	                                                    </label>
	                                                </div>
	                                            </li>              	
	                                            <li>
	                                                <div class="checkRadioBoxCircleType">
	                                                	<input type="checkbox" id="placeSelect2" name="place" value="M0103" onclick="checkProduct(this)">
	                                                    <label for="placeSelect2">
	                                                        <div class="circle">
	                                                            <div class="inside"></div>
	                                                        </div>
	                                                        <p>동대문구</p>
	                                                    </label>
	                                                </div>
	                                            </li>             
	                                        </ul>
	                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <ul>  
                         <li>
                            <div class="contentBoxType1">
                            <input type="hidden" id="y_10" name="y_10" value="">
							<input type="hidden" id="y_20" name="y_20" value="">
							<input type="hidden" id="y_30" name="y_30" value="">
							<input type="hidden" id="y_40" name="y_40" value="">
							<input type="hidden" id="y_50" name="y_50" value="">
                                <div class="headType2">
                                    <h1>함께하고 싶은 분들의 연령대를 알려주세요</h1>
                                    <p>
                                        같이 동행하고 싶은 연령대를
                                        선택해주세요.
                                    </p>
                                </div>
                                <div class="contentContainer">
                                    <div class="rangeContainer marginTopMd marginBottomMd">
								            <div class="slider-track" style="background-image: linear-gradient(to right, rgb(218, 218, 229) 0%, rgb(77, 183, 255) 0%, rgb(77, 183, 255) 100%, rgb(218, 218, 229) 100%);"></div>
								            <input type="range" min="10" max="50" value="10" id="slider-1" step="10" oninput="slideOne()">
								            <input type="range" min="10" max="50" value="50" id="slider-2" step="10" oninput="slideTwo()">
								            <p class="start">10대 이하</p>
                                       		<p class="end">50대 이상</p>
                                    </div>
							        <div class="contentInsideType1 marginTopLg">
                                        <div class="text">
                                            <span id="range1">10</span>대 이하 - <span id="range2">50</span>대를 선택
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="contentBoxType1">
                            <input type="hidden" id="tourType" name="tourType" value="">
                                <div class="headType2">
                                    <h1>
                                        함께하고 싶은 분들의 성별을 알려주세요
                                    </h1>
                                    <p>
                                        동행하고 싶은 분들의 성별을
                                        선택해주세요.
                                    </p>
                                </div>
                                <div class="contentContainer marginTopMd">
                                    <div class="contentInsideType1">
                                        <ul>
                                            <li>
                                                <div class="checkRadioBoxCircleType1">
                                                    <input type="radio" id="all" name="gender" value="0" onclick="checkGender(this)" checked="">                                     
                                                    <label for="all">
                                                        <div class="circle">
                                                            <div class="inside"></div>
                                                        </div>
                                                        <p>혼성이요</p>
                                                    </label>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul>
                                            <li>
                                                <div class="checkRadioBoxCircleType1">
                                                    <input type="radio" id="male" value="1" name="gender" onclick="checkGender(this)">
                                                    <label for="male">
                                                        <div class="circle">
                                                            <div class="inside"></div>
                                                        </div>
                                                        <p>남성만요</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxCircleType1">
                                                    <input type="radio" id="female" value="2" name="gender" onclick="checkGender(this)">
                                                    <label for="female">
                                                        <div class="circle">
                                                            <div class="inside"></div>
                                                        </div>
                                                        <p>여성만요</p>
                                                    </label>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="contentBoxType1">
                            <input type="hidden" id="tourStart" name="tourStart" value="">
							<input type="hidden" id="tourEnd" name="tourEnd" value="">
                                <div class="headType2">
                                    <h1>언제 떠나실 예정인가요?</h1>
                                    <p>
                                        선택하신 일정을 보고 동행들이 모일거에요
                                    </p>
                                </div>
                                <div class="contentContainer">
                                    <div class="dateContainer marginTopMd marginBottomMd">
                                        <ul>
                                            <li>
                                                <div class="box">            	
                                                	<input type="text" id="startDate" name="startDate" style="width:75px" placeholder="일정 선택" class="hasDatepicker" readonly="readonly"><img class="ui-datepicker-trigger" src="img/calendar_ico.svg" alt="..." title="..." align="absmiddle" style="cursor: pointer; margin-bottom: -5px;">
                                                </div>
                                            </li>
                                            <li><i class="bi bi-dash-lg"></i></li>
                                            <li>
                                                <div class="box">                              	
                                                	<input type="text" id="endDate" name="endDate" style="width:75px" placeholder="일정 선택" class="hasDatepicker" readonly="readonly"><img class="ui-datepicker-trigger" src="img/calendar_ico.svg" alt="..." title="..." align="absmiddle" style="cursor: pointer; margin-bottom: -5px;">  	
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="contentInsideType1 contentInsideType2">
                                    <input type="hidden" id="dateType" name="dateType" value="">
                                        <ul>
                                            <li>
                                                <div class="checkRadioBoxCircleType1">
                                                    <input type="radio" id="yes" value="0" name="negotiation" onclick="checkDate(this)" checked="">       
                                                    <label for="yes">
                                                        <div class="circle">
                                                            <div class="inside"></div>
                                                        </div>
                                                        <p>협의가능</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxCircleType1">
                                                    <input type="radio" id="no" value="1" name="negotiation" onclick="checkDate(this)">
                                                    <label for="no">
                                                        <div class="circle">
                                                            <div class="inside"></div>
                                                        </div>
                                                        <p>협의불가</p>
                                                    </label>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="buttonContainer">
                        <p>현재 125 개의 동행 리스트가 있어요 :D</p>
                        <div id="btnNext" class="buttonType2">
                            검색하기&nbsp;
                            <i class="bi bi-search"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div id="divider" class="divider marginTopXxl marginBottomXxl"></div>
            <div id="boardListDiv" class="postList">
                <div class="head">
                    <h1>
                        사람들이 팀을 꾸리고 있어요! 댓글로 소통해 보세요:D
                    </h1>
                </div>
                <div id="searchPcDiv" class="subHead marginTopMd marginBottomMd pc" style="display: block;">
                <input type="hidden" id="dateStatus" name="dateStatus" value="">
                <input type="hidden" id="searchType" name="searchType" value="">
                <input type="hidden" id="keyword" name="keyword" value="">
                <input type="hidden" id="orderType" name="orderType" value="">
                    <div class="left">
                        <div id="btnStatus1" class="tabButtonType1">진행중만 보기</div>
                    </div>
                    <div class="right">
                        <div class="searchBox searchInput">
                            <ul>
                                <li>
                                    <select id="searchGubun" class="selectBoxType1" name="gubun">
		                                <option value="0" selected="">제목</option>
		                                <option value="1">글쓴이</option>
		                                </select>
                                </li>
                                <li>
                                    <input id="searchText" type="text" class="textBoxType1" placeholder="검색어 입력" onkeypress="javascript:if(event.keyCode==13){fn_searchText()}" value="">
                                </li>
                            </ul>
                        </div>
                        <div class="sortBox">
                            <select class="selectBoxType2" id="sort" name="sort" onchange="onchange_sort()">
                                <option value="0" selected="">최신순</option>
                                <option value="1">매칭점수순</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div id="searchMobileDiv" class="subHead marginTopMd marginBottomMd mobile" style="display: none;">
                    <div class="left">
                        <div class="searchBox searchInput">
                            <ul>
                                <li>
                                	<select id="searchGubun2" class="selectBoxType1" name="gubun2">
		                                <option value="0" selected="">제목</option>
		                                <option value="1">글쓴이</option>
                                    </select>
                                </li>
                                <li>
                                    <input id="searchText2" type="text" class="textBoxType1" placeholder="검색어 입력" onkeypress="javascript:if(event.keyCode==13){fn_searchText()}" value="">
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="right">
                        <div id="btnStatus2" class="tabButtonType1 tabButtonType2">진행중만 보기</div>
                        <div class="sortBox">
                            <select class="selectBoxType2" id="sort2" name="sort2" onchange="onchange_sort2()">
                                <option value="0" selected="">최신순</option>
                                <option value="1">매칭점수순</option>
                            </select>
                        </div>
                    </div>
                </div>
                <ul>
                			<li>
                				<a onclick="fn_detail(202)" style="cursor:pointer;">
		                        <div class="contentBoxType3">
		                            <div class="postContent">
		                                <div class="top">
		                                    <div class="thumbnail">
		                                    			<img src="/odawith/upload/3639dbbc-b074-4eb2-be36-72eb9e82275e.png" alt="사진">
		                                    </div>
		                                    <div class="text">
		                                        <div class="score">
		                                        			<i class="bi bi-activity"></i>
		                                            <h2>AI 매칭점수</h2>
		                                            <h1 class="type1">0</h1>
		                                        </div>
		                                        <h1 style="word-break:break-all;white-space:pre-line">[8.14-8.23] 인물 사진 작가와 동행할 분들 구해요! 현재 2명!</h1>
		                                        <h2>서울 . 광화문 . 4명</h2>
		                                        <h3>(하나투어)서울여행 1박2일</h3>
		                                        <h4>문인과</h4>
		                                        <p>2022-08-14 - 2022-08-15 <span class="type1">협의가능</span></p>
		                                    </div>
		                                </div>
		                                <div class="tagsContainer marginTopMd marginBottomSm " >
		                                    <ul>
			                                    		<li>
				                                            <div class="inside">#혼성이요</div>
				                                        </li>
		                                    		<li>
		                                            	<div class="inside">#30대</div>
		                                        	</li>
			                                    		<li>
				                                            <div class="inside">#술 상관없어요</div>
				                                        </li>
			                                    		<li>
				                                            <div class="inside">#비흡연자 선호</div>
				                                        </li>
			                                    		<li>
				                                            <div class="inside">#활동적인</div>
				                                        </li>
			                                    		<li>
				                                            <div class="inside">#로컬형</div>
				                                        </li>
			                                    		<li>
				                                            <div class="inside">#모혐형</div>
				                                        </li>
		                                    </ul>
		                                </div>
		                                <div class="bottom">
		                                    <div class="left">
		                                        <p>게시일. 2022-06-15</p>
		                                    </div>
		                                    <div class="right">
		                                        <ul>
		                                            <li>
		                                                <i class="bi bi-chat-left-dots"></i>&nbsp;
		                                                <p>0</p>
		                                            </li>
		                                            <li>
		                                                <i class="bi bi-eye"></i>
		                                                <p>28</p>
		                                            </li>
		                                        </ul>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        </a>
		                    </li>
                			<li>
                				<a onclick="fn_detail(201)" style="cursor:pointer;">
		                        <div class="contentBoxType3">
		                            <div class="postContent">
		                                <div class="top">
		                                    <div class="thumbnail">
		                                    <img src="/odawith/upload/8afb984c-5cc4-4c24-97ab-265106e7c8ce.jpeg" alt="사진">
		                                    </div>
		                                    <div class="text">
		                                        <div class="score">
		                                        <i class="bi bi-activity"></i>
		                                            <h2>AI 매칭점수</h2>
		                                            <h1 class="type1">0</h1>
		                                        </div>
		                                        <h1 style="word-break:break-all;white-space:pre-line">절거운 몽골여행 5박6일 고비사막 투어 동행 구합니다🤗</h1>
		                                        <h2>몽골 . 고비사막 . 4명</h2>
		                                        <h3>(오다투어)고비사막 5박6일</h3>
		                                        <h4>silvia baek</h4>
		                                        <p>2022-07-20 - 2022-08-07 <span class="type1">협의가능</span></p>
		                                    </div>
		                                </div>
		                                <div class="tagsContainer marginTopMd marginBottomSm " >
		                                    <ul>
			                                    		<li>
				                                            <div class="inside">#여성만요</div>
				                                        </li>
		                                    		<li>
		                                            	<div class="inside">#30대</div>
		                                        	</li>
		                                        	<li>
				                                            <div class="inside">#여행은 술이죠</div>
				                                        </li>
			                                    		<li>
				                                            <div class="inside">#담배 상관없어요</div>
				                                        </li>
			                                    		<li>
				                                            <div class="inside">#여행 상관없어요</div>
				                                        </li>
		                                    </ul>
		                                </div>
		                                <div class="bottom">
		                                    <div class="left">
		                                        <p>게시일. 2022-06-15</p>
		                                    </div>
		                                    <div class="right">
		                                        <ul>
		                                            <li>
		                                                <i class="bi bi-chat-left-dots"></i>&nbsp;
		                                                <p>0</p>
		                                            </li>
		                                            <li>
		                                                <i class="bi bi-eye"></i>
		                                                <p>20</p>
		                                            </li>
		                                        </ul>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        </a>
		                    </li>
                			<li>
                				<a onclick="fn_detail(200)" style="cursor:pointer;">
		                        <div class="contentBoxType3">
		                            <div class="postContent">
		                                <div class="top">
		                                    <div class="thumbnail">
		                                    			<img src="/odawith/upload/625b31b1-96fd-4d07-845c-d1daf69bd198.jpg" alt="사진">
		                                    </div>
		                                    <div class="text">
		                                        <div class="score">
		                                        			<i class="bi bi-activity"></i>
		                                            <h2>AI 매칭점수</h2>
		                                            <h1 class="type1">0</h1>
		                                        </div>
		                                        <h1 style="word-break:break-all;white-space:pre-line">[6박7일 비행8/20-28, 투어8/21-8/27] 동행 6명(4명 모집 중)</h1>
		                                        <h2>몽골 . 고비사막 . 1명</h2>
		                                        <h3>(오다투어)고비사막 7박8일</h3>
		                                        <h4>몽골몽골</h4>
		                                        <p>2022-08-21 - 2022-08-27 <span class="type1">협의가능</span></p>
		                                    </div>
		                                </div>
		                                <div class="tagsContainer marginTopMd marginBottomSm " >
		                                    <ul>
			                                    		<li>
				                                            <div class="inside">#혼성이요</div>
				                                        </li>
				                                        <li>
		                                            	<div class="inside">#20대</div>
		                                        	</li>
			                                    		<li>
				                                            <div class="inside">#술 상관없어요</div>
				                                        </li>
			                                    		<li>
				                                            <div class="inside">#비흡연자 선호</div>
				                                        </li>
			                                    		<li>
				                                            <div class="inside">#여행 상관없어요</div>
				                                        </li>
		                                    </ul>
		                                </div>
		                                <div class="bottom">
		                                    <div class="left">
		                                        <p>게시일. 2022-06-15</p>
		                                    </div>
		                                    <div class="right">
		                                        <ul>
		                                            <li>
		                                                <i class="bi bi-chat-left-dots"></i> &nbsp;
		                                                <p>0</p>
		                                            </li>
		                                            <li>
		                                                <i class="bi bi-eye"></i>
		                                                <p>29</p>
		                                            </li>
		                                        </ul>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        </a>
		                    </li>
                			<li>
                				<a onclick="fn_detail(199)" style="cursor:pointer;">
		                        <div class="contentBoxType3">
		                            <div class="postContent">
		                                <div class="top">
		                                    <div class="thumbnail">
		                                    			<img src="img/no_thumbnail_ex.jpg" alt="사진">
		                                    </div>
		                                    <div class="text">
		                                        <div class="score">
		                                        			<i class="bi bi-activity"></i>
		                                            <h2>AI 매칭점수</h2>
		                                            <h1 class="type1">0</h1>
		                                        </div>
		                                        <h1 style="word-break:break-all;white-space:pre-line">9월 4일 - 9월 10일 홉스골 투어 동행구합니다</h1>
		                                        <h2>몽골 . 홉스골 . 4명</h2>
		                                        <h3>(오다투어) 홉스골 6박7일</h3>
		                                        <h4>돌돌이</h4>
		                                        <p>2022-09-04 - 2022-09-10 <span class="type1">협의가능</span></p>
		                                    </div>
		                                </div>
		                                <div class="tagsContainer marginTopMd marginBottomSm " >
		                                    <ul>
			                                    		<li>
				                                            <div class="inside">#혼성이요</div>
				                                        </li>
		                                    		<li>
		                                            	<div class="inside">#30대</div>
		                                        	</li>
			                                    		<li>
				                                            <div class="inside">#술 상관없어요</div>
				                                        </li>
			                                    		<li>
				                                            <div class="inside">#비흡연자 선호</div>
				                                        </li>
			                                    		<li>
				                                            <div class="inside">#느긋한</div>
				                                        </li>
			                                    		<li>
				                                            <div class="inside">#로컬형</div>
				                                        </li>
			                                    		<li>
				                                            <div class="inside">#모혐형</div>
				                                        </li>
		                                    </ul>
		                                </div>
		                                <div class="bottom">
		                                    <div class="left">
		                                        <p>게시일. 2022-06-15</p>
		                                    </div>
		                                    <div class="right">
		                                        <ul>
		                                            <li>
		                                                <i class="bi bi-chat-left-dots"></i>&nbsp;
		                                                <p>0</p>
		                                            </li>
		                                            <li>
		                                                <i class="bi bi-eye"></i>
		                                                <p>12</p>
		                                            </li>
		                                        </ul>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        </a>
		                    </li>
                </ul>
            </div>
            <div class="loading">
                <div id="btnNextPage" class="icon" onclick="fn_nextPage()">
                    <img src="img/loading_ico.svg">
                </div>
            </div>