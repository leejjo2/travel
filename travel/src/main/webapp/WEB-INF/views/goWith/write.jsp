<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="${pageContext.request.contextPath}/dist/goWith/css/style.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/dist/goWith/css/pretendard.css" rel="stylesheet"/>

<script type="text/javascript">
function sendOk() {
    const f = document.boardForm;
	
    f.action = "${pageContext.request.contextPath}/goWith/write";
    
    f.submit();
}

</script>

            <div class="topImg">
                <div class="overlay"></div>
                <div class="content">
                    <h1>동행 모집 글 게시하기</h1>
                </div>
            </div>
            <form id="boardForm" action="" method="post" encType="multipart/form-data">
			
            <div class="contentWrapperType1 marginTopXxl">
                <div class="searchBox">
                    <ul>
                        <li>
                            <div class="contentBoxType1">
                                <div class="headType1">
                                    <h1>지역 선택</h1>
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
                                                    <div id="productTab0" class="tabButtonType1 tabButtonType1Active">
                                                	경기
                                                    <input type="hidden" name="product_name" value="M01">
                                                    </div>
                                                    <div id="productTab0" class="tabButtonType1 tabButtonType1Active">
                                                	인천
                                                    <input type="hidden" name="product_name" value="M01">
                                                    </div>
                                            </li>
                                        </ul>
                                    </div>
                                    	<div id="divProduct0" class="contentInsideType1" style="display:block">
	                                        <ul>
	                                            <li>
	                                                <div class="checkRadioBoxCircleType1">
	                                                	<input type="checkbox" id="placeSelect0" name="place" value="M0101" onclick='checkProduct(this)' />
	                                                    <label for="placeSelect0">
	                                                        <div class="circle">
	                                                            <div class="inside"></div>
	                                                        </div>
	                                                        <p>청와대</p>
	                                                    </label>
	                                                </div>
	                                            </li>
	                                            <li>
	                                                <div class="checkRadioBoxCircleType1">
	                                                	<input type="checkbox" id="placeSelect1" name="place" value="M0102" onclick='checkProduct(this)' />
	                                                    <label for="placeSelect1">
	                                                        <div class="circle">
	                                                            <div class="inside"></div>
	                                                        </div>
	                                                        <p>광화문</p>
	                                                    </label>
	                                                </div>
	                                            </li>
	                                            <li>
	                                                <div class="checkRadioBoxCircleType1">
	                                                	<input type="checkbox" id="placeSelect2" name="place" value="M0103" onclick='checkProduct(this)' />
	                                                    <label for="placeSelect2">
	                                                        <div class="circle">
	                                                            <div class="inside"></div>
	                                                        </div>
	                                                        <p>남산</p>
	                                                    </label>
	                                                </div>
	                                            </li>
	                                        </ul>
	                                    </div>
                                </div>
                                
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <div class="contentBoxType1">
                                <div class="headType2">
                                    <h1>현재 팀의 연령대는요?</h1>
                                    <p>
                                        현재 함께하고 있는 구성원의 연령대를
                                        모두 선택해 주세요
                                    </p>
                                </div>
                                <div class="contentContainer marginTopMd">
                                    <div class="contentInsideType1">
                                        <ul>
                                            <li>
                                                <div class="checkRadioBoxCircleType1" >
                                                    <input type="checkbox" id="10s" name="age_10" value="Y" onclick='checkAge(this)' />
                                                    <label for="10s">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>10대</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxCircleType1" >
                                                    <input type="checkbox" id="20s" name="age_20" value="Y" onclick='checkAge(this)' />
                                                    <label for="20s">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>20대</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxCircleType1" >
                                                    <input type="checkbox" id="30s" name="age_30" value="Y" onclick='checkAge(this)' />
                                                    <label for="30s">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>30대</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxCircleType1" >
                                                    <input type="checkbox" id="40s" name="age_40" value="Y" onclick='checkAge(this)' />
                                                    <label for="40s">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>40대</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxCircleType1" >
                                                    <input type="checkbox" id="50s" name="age_50" value="Y" onclick='checkAge(this)' />
                                                    <label for="50s">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>50대 이상</p>
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
                                <div class="headType2">
                                    <h1>현재 팀의 성별 구성은요?</h1>
                                    <p>
                                        현재 함께하고 있는 구성원의 성별을 선택해 주세요
                                    </p>
                                </div>
                                <div class="contentContainer marginTopMd">
                                    <div class="contentInsideType1">
                                        <ul>
                                            <li>
                                                <div class="checkRadioBoxCircleType1" >
                                                    <input type="radio" id="all" name="gender" value="0" onclick='checkGender(this)' checked />
                                                    <label for="all">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>혼성이요</p>
                                                    </label>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul>
                                            <li>
                                                <div class="checkRadioBoxCircleType1" >
                                                    <input type="radio" id="male" name="gender" value="1" onclick='checkGender(this)' />
                                                    <label for="male">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>남성만요</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxCircleType1" >
                                                    <input type="radio" id="female" name="gender" value="2" onclick='checkGender(this)' />
                                                    <label for="female">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
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
                                <div class="headType2">
                                    <h1>날짜 선택</h1>
                                    <p>
                                        여행을 계획하고 계신 날짜를
                                        선택해주세요.
                                    </p>
                                </div>
                                <div class="contentContainer">
                                    <div class="dateContainer marginTopMd marginBottomMd" >
                                        <ul>
                                            <li>
                                                <div class="box">
                                                    <input type="date" id="tour_start" name="tour_start">
                                                </div>
                                            </li>
                                             <li><i class="bi bi-dash-lg"></i></li>
                                            <li>
                                                <div class="box">
                                                    <input type="date" id="tour_end" name="tour_end">
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="contentInsideType1 contentInsideType2 contentInsideType4" >
                                        <ul>
                                            <li>
                                                <div class="checkRadioBoxCircleType1" >
                                                    <input type="radio" id="yes" name="consultationType" value="0" onclick='checkDate(this)' checked />
                                                    <label for="yes">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>협의가능</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxCircleType1" >
                                                    <input type="radio" id="no" name="consultationType" value="1"  onclick='checkDate(this)'/>
                                                    <label for="no">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
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
                    <ul>
                        <li>
                            <div class="contentBoxType1">
                                <div class="headType2">
                                    <h1>현재 멤버의 술 성향</h1>
                                </div>
                                <!-- 옵션 -->
                                <div class="contentContainer marginTopMd">
                                    <div class="menu">
                                        <ul>
                                            <li>
                                                <div class="checkRadioBoxType2">
                                                    <input type="radio" id="alcoholselect1" name="drinkType" value="0" onclick='checkDrinkType(this)' checked />
                                                    <label for="alcoholselect1">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>#상관없어요</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxType2">
                                                    <input type="radio" id="alcoholselect2" name="drinkType" value="1" onclick='checkDrinkType(this)' />
                                                    <label for="alcoholselect2">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>#여행은 술이죠</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxType2">
                                                    <input type="radio" id="alcoholselect3" name="drinkType" value="2" onclick='checkDrinkType(this)' />
                                                    <label for="alcoholselect3">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>#술은 싫어요</p>
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
                                <div class="headType2">
                                    <h1>현재 멤버의 담배 성향</h1>
                                </div>
                                <div class="contentContainer marginTopMd">
                                    <div class="menu">
                                        <ul>
                                            <li>
                                                <div class="checkRadioBoxType2">
                                                    <input type="radio" id="tabaccoselect1" name="smokingType" value="0" onclick='checkSmokingType(this)' checked />
                                                    <label for="tabaccoselect1">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>#상관없어요</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxType2">
                                                    <input type="radio" id="tabaccoselect2" name="smokingType" value="1" onclick='checkSmokingType(this)' />
                                                    <label for="tabaccoselect2">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>#흡연자 선호</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxType2">
                                                    <input type="radio" id="tabaccoselect3" name="smokingType" value="2" onclick='checkSmokingType(this)' />
                                                    <label for="tabaccoselect3">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>#비흡연자 선호</p>
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
                                <div class="headType2">
                                    <h1>현재 멤버의 여행 성향은?</h1>
                                </div>
                                <div class="contentContainer marginTopMd">
                                    <div class="menu">
                                        
                                    </div>
                                    <div class="contentInsideType1 contentInsideType3 marginTopSm" >
                                        <ul>
                                            <li>
                                                <div class="checkRadioBoxType2">
                                                    <input type="radio" id="tripselect2" name="trip1" value="1" onclick="checkTourType1(this)"/>
                                                    <label for="tripselect2">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>#느긋한</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <p>VS.</p>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxType2">
                                                    <input type="radio" id="tripselect3" name="trip1" value="2" onclick="checkTourType1(this)"/>
                                                    <label for="tripselect3">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>#활동적인</p>
                                                    </label>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div
                                        class="contentInsideType1 contentInsideType3 marginTopSm"
                                    >
                                        <ul>
                                            <li>
                                                <div class="checkRadioBoxType2">
                                                    <input type="radio" id="trip2select1" name="trip2" value="1" onclick="checkTourType2(this)" />
                                                    <label for="trip2select1">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>#로컬형</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <p>VS.</p>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxType2">
                                                    <input type="radio" id="trip2select2" name="trip2" value="2" onclick="checkTourType2(this)" />
                                                    <label for="trip2select2">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>#랜드마크형</p>
                                                    </label>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="contentInsideType1 contentInsideType3 marginTopSm" >
                                        <ul>
                                            <li>
                                                <div class="checkRadioBoxType2">
                                                    <input type="radio" id="trip3select1" name="trip3" value="1" onclick="checkTourType3(this)"/>
                                                    <label for="trip3select1">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>#모험형</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <p>VS.</p>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxType2">
                                                    <input type="radio" id="trip3select2" name="trip3" value="2" onclick="checkTourType3(this)"/>
                                                    <label for="trip3select2">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>#휴양형</p>
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
                                <div class="headType2">
                                    <h1>몇 명을 더 만나고 싶으세요?</h1>
                                    <p>최대 8명까지 가능합니다.</p>
                                </div>
                                <!-- 옵션 -->
                                <div class="contentContainer">
                                    <div class="rangeContainer marginTopMd marginBottomMd" >
                                    	<input class="bar" type="range" id="headcount" name="headcount" min="1" max="8" step="1" value="1"
                                    	oninput="document.getElementById('pplval').innerHTML=this.value+'명을 선택했습니다';"/>
                                    	<p class="start">1명</p>
                                    	<p class="end">8명</p>
                                    </div>
                                    <div class="contentInsideType1 marginTopLg">
                                        <div id="pplval" class="text">
                                        1명을 선택했습니다
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="contentBoxType2">
                                <div class="headType2">
                                    <h1>여행 스타일 업로드</h1>
                                    <p>
                                        당신의 여행 스타일이 잘 드러나는 사진 한
                                        장을 업로드 해주세요!
                                    </p>
                                </div>
                                <div class="contentContainer marginTopMd">
                                    <div class="photoUploadContainer">
                                        <div id="thumbnail" class="thumbnail">
                                            <img id="thumbnailImg" src="img/no_thumbnail_ex.jpg" alt="사진"/>
                                        </div>
                                        <div class="content">
                                            <p></p>
                                            <div class="buttonType5" onclick="document.all.uploadFile.click();">
                                            <input type="file" name="uploadFile" id="uploadFile" accept=".jpg, .png" style="display: none;"
                                            onchange="setThumbnail(event,this);"/> 
                                                사진 업로드&nbsp;
                                                <i class="bi bi-upload"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="divider marginTopXxl marginBottomXxl"></div>
            <div class="contentWrapperType2 marginBottomLg">
                <ul>
                    <li>
                        <div class="contentBoxType3">
                            <div class="headType2">
                                <h1>진행 여부</h1>
                                <p>
                                    추후 동행이 다 모이면 모집 완료로 변경해주세요
                                </p>
                            </div>
                            <div class="contentContainer marginTopMd">
                                <div class="contentInsideType1 contentInsideType2 contentInsideType4" >
                                    <ul>
                                        <li>
                                            <div class="checkRadioBoxCircleType1" >
                                                <input type="radio" id="completeN" name="regCompletionFlag" value="N" onclick='checkComplete(this)' checked />
                                                <label for="completeN">
                                                    <div class="circle">
                                                        <div class="inside" ></div>
                                                    </div>
                                                    <p>모집 중</p>
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="checkRadioBoxCircleType1" >
                                                <input type="radio" id="completeY" name="regCompletionFlag" value="Y" onclick='checkComplete(this)' />
                                                <label for="completeY">
                                                    <div class="circle">
                                                        <div class="inside" ></div>
                                                    </div>
                                                    <p>모집 완료</p>
                                                </label>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="contentWrapperType2">
                <div class="textInputContainer">
                    <ul>
                        <li>
                            <h1>제목</h1>
                            <input type="text" id="title" name="title" placeholder="제목을 입력해주세요" />
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <h1>내용</h1>
                            <textarea id="content" name="content" placeholder="자유롭게 입력해주세요" ></textarea>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <h1>비밀번호</h1>
                            <input type="text" id="doc_pwd" name="doc_pwd" placeholder="암호를 쓰시오!" />
                        </li>
                    </ul>
                    
                    <div class="buttonContainer marginTopLg">
                        <div id="btnRegister" class="buttonType2" onclick="sendOk();">모집글 업로드</div>
                    </div>
                </div>
            </div>
            </form>
          