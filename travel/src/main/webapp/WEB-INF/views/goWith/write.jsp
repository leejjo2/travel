<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="${pageContext.request.contextPath}/dist/goWith/css/style.css" rel="stylesheet"/>

<script>   	
	       $(document).on('click', '#productTab0', function(e){
	        		
	        	document.getElementById("productTab0").className = "tabButtonType tabButtonType1Active";
	        	document.getElementById("divProduct0").style.display = "block";
	        		
	        	});
	        
	        function setThumbnail(event,el){
	        	var file = el.files;
	        	
	        	if(file[0].size > 1024*1024*5){
	        		alert("5MB 이하 사진으로 업로드 해주세요.");
	        		
	        		if(document.querySelector("#thumbnail").childElementCount > 0){
	    				document.getElementById("thumbnailImg").src = "img/no_thumbnail_ex.jpg";
	    			}
	        		document.getElementById("uploadFile").value = "";
	        		return;
	        	}
	    		var reader = new FileReader();
	    		
	    		reader.onload = function(event){
	    			document.getElementById("thumbnailImg").src = event.target.result;
	    		};
	    		
	    		reader.readAsDataURL(event.target.files[0]);
	    	}
	        
	        $(document).on('click', '#btnRegister', function(e) {
	        	const f = document.goWithForm;
	        	
	            f.action = "${pageContext.request.contextPath}/gowith/${mode}";
	            
	            f.submit();
	        });
	        
</script>


<script type="text/javascript">
function ajaxFun(url, method, query, dataType, fn) {
	$.ajax({
		type:method,
		url:url,
		data:query,
		dataType:dataType,
		success:function(data){
			fn(data);
		},
		error:function(e) {
			console.log(e.responseText);
		}
	});
}

$(function(){
	$(".tabButtonType").click(function(){
		var cityNum = $(this).attr("data-cityNum");
				
		let url = "${pageContext.request.contextPath}/gowith/cityList";
		let query = "cityNum="+cityNum;
		var out="";
				
		const fn = function(data){
			for(var i=0; i<data.list.length; i++) {
				var item = data.list[i];
				console.log(data.list[i]);
				var spotName = item.spotName;
				var spotNum = item.spotNum;
				
               	out += "<div class='checkRadioBoxCircleType'>";	
               	out += "<input type='radio' id='placeSelect"+ spotNum + "' name='spotNum' value='"+ spotNum + "'/>";
               	out += "<label for='placeSelect"+ spotNum + "'>"; 
               	out += "<div class='circle'>";
               	out += "<div class='inside' ></div>";
               	out += "</div>";
               	out += "<p>"+spotName+"</p>";
               	out += "</label>";
               	out += "</div>";
			}
				
			$(".spotList").html(out);
		}; 
		
		ajaxFun(url, "post", query, "json", fn);
	});
});
</script>

            <div class="topImg">
                <div class="overlay"></div>
                 <div class="img">
                    <img src="${pageContext.request.contextPath}/dist/goWith/img/03.jpg" />
                </div>
                <div class="content">
                    <h1>동행 모집 글 게시하기</h1>
                </div>
            </div>
            <form name="goWithForm" action="" method="post" encType="multipart/form-data">
			
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
                                                <c:forEach var="vo" items="${listCity}">
                                                	<div id="productTab0" class="tabButtonType tabButtonType1Active" data-cityNum="${vo.cityNum}">
                                                	<input type="hidden" name="product_name" class="cityNum" value="${vo.cityNum}" ${vo.cityNum==dto.cityNum ? "selected='selected'":""} onclick="clickCity();">	
                                                		${vo.cityName}
                                             		</div>
													</c:forEach>
												
                                            </li>
                                        </ul>
                                    </div>
                                    	<div id="divProduct0" class="contentInsideType1" style="display:block">
	                                        <ul>
	                                            <li class="spotList">
	                                            	<c:forEach var="vo" items="${listSpot}">
	                                                <div class="checkRadioBoxCircleType">
	                                                	<input type="radio" id="placeSelect${vo.spotNum}" name="spotNum" value="${vo.spotNum}" ${vo.spotNum==dto.spotNum ? "checked='checked'":""}/>
	                                                    <label for="placeSelect${vo.spotNum}">
	                                                        <div class="circle">
	                                                            <div class="inside"></div>
	                                                        </div>
	                                                        <p>${vo.spotName}</p>
	                                                    </label>
	                                                </div>
	                                                </c:forEach>
	                                            </li>
	                                        </ul>
	                                    </div>
                                </div>
                    <ul>
                        <li>
                            <div class="contentBoxType1">
                                <div class="headType2">
                                    <h1>현재 팀의 연령대는요?</h1>
                                    <p>
                                        현재 함께하고 있는 구성원의 연령대를
                                        선택해 주세요
                                    </p>
                                </div>
                                <div class="contentContainer marginTopMd" >
                                    <div class="contentInsideType1">
                                        <ul>
                                            <li>
                                                <div class="checkRadioBoxCircleType" >
                                                    <input type="radio" id="10s" name="age" value="10대" ${dto.age=="10대"? "checked='checked'":""}/>
                                
                                                    <label for="10s">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>10대</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxCircleType" >
                                                    <input type="radio" id="20s" name="age" value="20대" ${dto.age=="20대"? "checked='checked'":""} />
                                                    <label for="20s">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>20대</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxCircleType" >
                                                    <input type="radio" id="30s" name="age" value="30대" ${dto.age=="30대"? "checked='checked'":""} />
                                                    <label for="30s">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>30대</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxCircleType" >
                                                    <input type="radio" id="40s" name="age" value="40대" ${dto.age=="40대"? "checked='checked'":""} />
                                                    <label for="40s">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>40대</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxCircleType" >
                                                    <input type="radio" id="50s" name="age" value="50대" ${dto.age=="50대"? "checked='checked'":""}/>
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
                                                <div class="checkRadioBoxCircleType" >
                                                    <input type="radio" id="all" name="gender" value="0" ${dto.gender=="0"? "checked='checked'":""} />
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
                                                <div class="checkRadioBoxCircleType" >
                                                    <input type="radio" id="male" name="gender" value="1" ${dto.gender=="1"? "checked='checked'":""} />
                                                    <label for="male">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>남성만요</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxCircleType" >
                                                    <input type="radio" id="female" name="gender" value="2" ${dto.gender=="2"? "checked='checked'":""} />
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
                                                    <input type="date" id="tour_start" name="startDate" ${dto.startDate=="0"? "selected='selected'":""}>
                                                </div>
                                            </li>
                                             <li><i class="bi bi-dash-lg"></i></li>
                                            <li>
                                                <div class="box">
                                                    <input type="date" id="tour_end" name="endDate" ${dto.endDate=="0"? "selected='selected'":""}>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="contentInsideType1 contentInsideType2 contentInsideType4" >
                                        <ul>
                                            <li>
                                                <div class="checkRadioBoxCircleType" >
                                                    <input type="radio" id="yes" name="discussion" value="0" ${dto.discussion=="0"? "checked='checked'":""} />
                                                    <label for="yes">
                                                        <div class="circle">
                                                            <div class="inside" ></div>
                                                        </div>
                                                        <p>협의가능</p>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkRadioBoxCircleType" >
                                                    <input type="radio" id="no" name="discussion" value="1"  ${dto.discussion=="1"? "checked='checked'":""}/>
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
                                                    <input type="radio" id="alcoholselect1" name="drink" value="0" ${dto.drink=="0"? "checked='checked'":""} />
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
                                                    <input type="radio" id="alcoholselect2" name="drink" value="1" ${dto.drink=="1"? "checked='checked'":""} />
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
                                                    <input type="radio" id="alcoholselect3" name="drink" value="2" ${dto.drink=="2"? "checked='checked'":""} />
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
                                                    <input type="radio" id="tabaccoselect1" name="cigar" value="0" ${dto.cigar=="0"? "checked='checked'":""} />
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
                                                    <input type="radio" id="tabaccoselect2" name="cigar" value="1" ${dto.cigar=="1"? "checked='checked'":""} />
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
                                                    <input type="radio" id="tabaccoselect3" name="cigar" value="2" ${dto.cigar=="2"? "checked='checked'":""} />
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
                                                    <input type="radio" id="tripselect2" name="tripType1" value="1" ${dto.tripType1=="1"? "checked='checked'":""}/>
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
                                                    <input type="radio" id="tripselect3" name="tripType1" value="2" ${dto.tripType1=="2"? "checked='checked'":""}/>
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
                                                    <input type="radio" id="trip2select1" name="tripType2" value="1" ${dto.tripType2=="1"? "checked='checked'":""} />
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
                                                    <input type="radio" id="trip2select2" name="tripType2" value="2" ${dto.tripType2=="2"? "checked='checked'":""} />
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
                                                    <input type="radio" id="trip3select1" name="tripType3" value="1" ${dto.tripType3=="1"? "checked='checked'":""}/>
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
                                                    <input type="radio" id="trip3select2" name="tripType3" value="2" ${dto.tripType3=="2"? "checked='checked'":""}/>
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
                                    	<input class="bar" type="range" id="headcount" name="recruit_cnt" min="1" max="8" step="1" value="1"
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
                                           <c:if test="${mode=='update'}">
                                           	<img id="thumbnailImg" name="imageFilename" src="${pageContext.request.contextPath}/uploads/photo/${dto.imageFilename}" alt="사진"/>
                                           </c:if>
                                           <c:if test="${mode!='update'}">
                                           	<img id="thumbnailImg" name="imageFilename" src="${pageContext.request.contextPath}/dist/goWith/img/01.png" alt="사진"/>
                                           </c:if>
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
                                            <div class="checkRadioBoxCircleType" >
                                                <input type="radio" id="completeN" name="recruit_status" value="N" onclick='checkComplete(this)' checked />
                                                <label for="completeN">
                                                    <div class="circle">
                                                        <div class="inside" ></div>
                                                    </div>
                                                    <p>모집 중</p>
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="checkRadioBoxCircleType" >
                                                <input type="radio" id="completeY" name="recruit_status" value="Y" onclick='checkComplete(this)' />
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
                            <input type="text" id="title" name="subject" placeholder="제목을 입력해주세요" value="${dto.subject}"/>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <h1>내용</h1>
                            <textarea id="content" name="content" placeholder="자유롭게 입력해주세요" >${dto.content}</textarea>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <h1>비밀번호</h1>
                            <input type="text" id="doc_pwd" name="pwd" placeholder="암호를 쓰시오!" />
                        </li>
                    </ul>
                    
                    <div class="buttonContainer marginTopLg">
                        <button type="button" id="btnRegister" class="buttonType2">${mode=='update'?'모집글 수정':'모집글 업로드'}</button>
                        <p>&nbsp;</p>
                        <button type="button" class="buttonType2" onclick="location.href='${pageContext.request.contextPath}/gowith/list';">${mode=='update'?'수정취소':'등록취소'}</button>
                    	<c:if test="${mode=='update'}">
								<input type="hidden" name="goWithNum" value="${dto.goWithNum}">
								<input type="hidden" name="imageFilename" value="${dto.imageFilename}">
								<input type="hidden" name="page" value="${page}">
						</c:if>
                    </div>
                </div>
            </div>
            </form>
            
          