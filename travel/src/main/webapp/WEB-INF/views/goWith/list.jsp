<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="${pageContext.request.contextPath}/dist/goWith/css/style.css" rel="stylesheet"/>


            <div id="topImgDiv" class="topImg">
                <div class="overlay"></div>
                <div class="img">
                    <img src="${pageContext.request.contextPath}/dist/goWith/img/02.jpg" />
                </div>
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
                                                	<div id="productTab0" class="tabButtonType tabButtonType1Active">
                                                	서울
                                                    <input type="hidden" name="product_name" value="M01">
                                                    </div>                                       
                                                    <div id="productTab1" class="tabButtonType tabButtonType1Active">
                                                	경기
                                                    <input type="hidden" name="product_name" value="M01">
                                                    </div>
                                                    <div id="productTab2" class="tabButtonType tabButtonType1Active">
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
                                                <div class="checkRadioBoxCircleType">
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
                                                <div class="checkRadioBoxCircleType">
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
                                                <div class="checkRadioBoxCircleType">
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
                                                	<input type="date" id="startDate" name="startDate" class="hasDatepicker">
                                                </div>
                                            </li>
                                            <li><i class="bi bi-dash-lg"></i></li>
                                            <li>
                                                <div class="box">                              	
                                                	<input type="date" id="endDate" name="endDate" class="hasDatepicker">
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="contentInsideType1 contentInsideType2">
                                    <input type="hidden" id="dateType" name="dateType" value="">
                                        <ul>
                                            <li>
                                                <div class="checkRadioBoxCircleType">
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
                                                <div class="checkRadioBoxCircleType">
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
                        <p>현재 ${dataCount} 개의 동행 리스트가 있어요 :D</p>
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
                        <div id="btnStatus1" class="tabButtonType">모집중만 보기</div>
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
                                <option value="0" selected="">최신순 </option>
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
                <c:forEach var="vo" items="${list}">
                <ul>
                <li>
                	<a href="${articleUrl}&num=${vo.goWithNum}" style="cursor:pointer;">
		                        <div class="contentBoxType3">
		                            <div class="postContent">
		                                <div class="top">
		                                    <div class="thumbnail">
		                                    			<img src="${pageContext.request.contextPath}/uploads/photo/${vo.imageFilename}" alt="사진">
		                                    </div>
		                                    <div class="text">
		                                        <div class="score">
		                                        			<i class="bi bi-activity"></i>
		                                            <h2>${vo.recruit_status=='N'?'모집중':'모집완료'}</h2>
		                                        </div>
		                                        <h1 style="word-break:break-all;white-space:pre-line">${vo.subject}</h1>
		                                        <h2>${vo.cityName} . ${vo.spotName} . ${vo.recruit_cnt}명</h2>
		                                        <h4>${vo.userName}</h4>
		                                        <p>${vo.startDate} - ${vo.endDate} <span class="type1">${discussion}</span></p>
		                                    </div>
		                                </div>
		                                <div class="tagsContainer marginTopMd marginBottomSm " >
		                                    <ul>
			                                    		<li>
				                                            <div class="inside">#${vo.gender==0?'혼성이요':(vo.gender==1?'남성만요':'여성만요')}</div>
				                                        </li>
		                                    		<li>
		                                            	<div class="inside">#${vo.age}</div>
		                                        	</li>
			                                    		<li>
				                                            <div class="inside">#${vo.drink==0?'상관없어요':(vo.drink==1?'여행은술이죠':'술은싫어요')}</div>
				                                        </li>
			                                    		<li>
				                                            <div class="inside">#${vo.cigar==0?'상관없어요':(vo.cigar==1?'흡연자 선호':'비흡연자 선호')}</div>
				                                        </li>
			                                    		<li>
				                                            <div class="inside">#${vo.tripType1==1?'느긋한':'활동적인'}</div>
				                                        </li>
			                                    		<li>
				                                            <div class="inside">#${vo.tripType2==1?'로컬형':'랜드마크형'}</div>
				                                        </li>
			                                    		<li>
				                                            <div class="inside">#${vo.tripType3==1?'모험형':'휴양형'}</div>
				                                        </li>
		                                    </ul>
		                                </div>
		                                <div class="bottom">
		                                    <div class="left">
		                                        <p>게시일. ${vo.reg_date}</p>
		                                    </div>
		                                    <div class="right">
		                                        <ul>
		                                            <li>
		                                                <i class="bi bi-chat-left-dots"></i>&nbsp;
		                                                <p>${vo.replyCount}</p>
		                                            </li>
		                                            <li>
		                                                <i class="bi bi-eye"></i>
		                                                <p>${vo.hitCount}</p>
		                                            </li>
		                                        </ul>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        </a>
		                    </li>
		                    </ul>
		                    </c:forEach>
            </div>
		                 
		                         
               <div class="page-box">
				${dataCount == 0 ? "등록된 게시물이 없습니다." : paging}
			</div>
