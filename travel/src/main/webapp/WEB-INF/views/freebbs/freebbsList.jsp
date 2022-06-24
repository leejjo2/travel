<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<style type="text/css">
.freebbstop{
	text-align: center;
	font-size: 45px;
	height: 300px;
	font-family: -apple-system, BlinkMacSystemFont, "Malgun Gothic", "맑은 고딕", Roboto, Helvetica, Arial, sans-serif;
	font-weight: bold;
	display: flex;
	justify-content: center;
	align-items: center;	
	border-radius: 5px;
	
}

.catego {
	max-width: 360px;
	border: none;
	border-radius: 5px;
	
}

.catego button:hover {
	background-color: #132948;
	color: white;
}

.btnSearch {
	background-color: light;
	border-radius: 9px;
	width: 100%;
	height: 45px;
	border: none;
}


.share > button {
    min-width: 58px;
    height: 44px;
    padding: 0 20px;
    margin: 0 4px;
    color: #6a6a6a;
    border: 1px solid #d1d1d1;
    border-radius: 22px;
}

.share .btn-like::before {
    position: absolute;
    left: 15px;
    top: 25%;
    width: 22px;
    height: 22px;
    background-image: url(https://dszw1qtcnsa5e.cloudfront.net/bin/live/console-community-view/assets/web/pc/icon-like.png);
    content: "";
}

:after, :before {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

.share .btn-like {
    position: relative;
}

</style>

<script type="text/javascript">
function searchList() {
	const f = document.searchForm;
	f.submit();
}
</script>



		<div style="padding: 10px;"></div>
		<div class="container mb-0 p-0 text-white freebbstop" style="background: url('${pageContext.request.contextPath}/resources/img/freebbs/유우니사막.png');">
			<p>자유게시판 </p>
			<br>
			<div style="font-size: 20px; line-height: 10px; padding: 10px;"> 당신만의 여행관련 지식들을 자유롭게 공유하세요 </div>
		</div>
		
		<div style="padding: 10px;"></div>
		
		<div class="container mb-3">
			<div class="catego">
					<div class="row row-cols text-dark" style="border: none;">
						<div class="col p-1">
							<button type="button" class="btnSearch">전체보기</button>
						</div>
						<div class="col p-1">
							<button type="button" class="btnSearch">여행 꿀팁</button>
						</div>
						<div class="col p-1">
							<button type="button" class="btnSearch">맛집 추천</button>
						</div>
						<div class="col p-1">
							<button type="button" class="btnSearch">여행 갤러리</button>
						</div>
					</div>
			</div>
		</div>
		
	<div class="container mb-3">
	<c:forEach var="dto" items="${list}">
		<div class="box">
			<div class="row gx-5">
				<div class="col">
					<div class="border p-0" style="height: 200px;">
						<img src="${pageContext.request.contextPath}/uploads/Board/${dto.saveFilename}" width="100%" height="100%">
					</div>
					<div class="border p-2" style="height: 200px;">
						<p><a href="#" style="font-weight: bold; font-size: 17px; line-height: 3px;">${dto.subject}</a></p>
							<div class="share">
							<button type="button" class="btn-like thread-likes">
								
								
							</button>
							</div>
							
						<p style="line-height: 10px;">작성자 : ${dto.userName}</p>
						<p style="line-height: 0px;">조회수 : ${dto.hitCount}</p>
						<p style="line-height: 0px;">${dto.reg_date}</p>
					</div>
				</div>
			</div>
		</div>	
	  	</c:forEach>
	  <div style="padding: 10px;"></div>
	  	
	  
	  	
	  <div style="padding: 10px;"></div>
	  	
	  	<div class="row board-list-footer">
				<div class="col">
				</div>
				<div class="col-6 text-center">
					<form class="row" name="searchForm" action="${pageContext.request.contextPath}/freebbs/list" method="post">
						<div class="col-auto p-1">
							<select name="condition" class="form-select">
								<option value="all" ${condition=="all"?"selected='selected'":""}>제목+내용</option>
								<option value="userName" ${condition=="userName"?"selected='selected'":""}>작성자</option>
								<option value="reg_date" ${condition=="reg_date"?"selected='selected'":""}>등록일</option>
								<option value="subject" ${condition=="subject"?"selected='selected'":""}>제목</option>
								<option value="content" ${condition=="content"?"selected='selected'":""}>내용</option>
							</select>
						</div>
						<div class="col-7 p-1">
							<input type="text" name="keyword" value="${keyword}" class="form-control">
						</div>
						<div class="col-auto p-1">
							<button type="button" class="btn btn-light" onclick="searchList()"> <i class="bi bi-search"></i> </button>
						</div>
					</form>
				</div>
				<div class="col text-end">
					<button type="button" class="btn btn-light" onclick="location.href='${pageContext.request.contextPath}/freebbs/write';">글올리기</button>
				</div>
			</div>
	  			
	</div>
			
