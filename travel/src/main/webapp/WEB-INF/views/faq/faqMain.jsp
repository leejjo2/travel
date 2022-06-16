<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/faq/css/faq1.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/faq/css/faq2.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/faq/css/faq3.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/faq/css/faq4.css" type="text/css">
<style>
.serchLabel {
	display: inline;
}
</style>

<script>
$(function() {
	$('#searchText').on('keyup', function(e) {
		   // value값 없으면
		   if(!e.target.value){
			   $(this).next('.input-search_clear').hide();
		   }
		   else {
			   $(this).next('.input-search_clear').show();
		   }
	});

	$('.input-search_clear').on('click', function(e) {
		   $(this).hide();
		   $(this).prev('input[type="text"]').val('');
	})
});
</script>
<main class="sub-contents">
<!-- sub-visual-element -->
<div class="sub-visual-element">
	<div class="sub-visual-title">
		<div class="large-text" style="margin-bottom: 98px;">
			<span class="large-text-inner">FAQ</span>
		</div>
	</div>
	<div class="sub-visual-bg" style="background-image: url('${pageContext.request.contextPath}/resources/images/bg.png');"></div>
</div>

<!-- sub-contents-inner -->
<div class="sub-contents-inner wide" id="container">
	<div class="wide-inner">
		<section class="infor-element">
			<h3 class="h3 textcenter">FAQ</h3>
			<div class="text-area textcenter">
				<div class="mb25 cnt-blockquote-blue desc-faq">
					<strong>"FAQ를 통해서 원하시는 답변을 쉽고 빠르게 찾아보세요"</strong>
					<br>
					서울 여행 관련 질문 중 가장 빈도수가 높은 질문들을 모아, 친절한 답변과 함께 제공해드리고 있습니다.
				</div>
			</div>
			<form id="searchFrm1" name="searchFrm" class="form-search" method="get">
				<div class="faq-search-inner mt50">
					<div class="flex-container flex-end">
						<div class="col-2">
						   <div class="select-field">
							   <label class="serchLabel" for="searchKey">
								   <select id="searchKey" name="searchKey">
									   <option value="">전체</option>
									   <option value="sj">제목</option>
									   <option value="cn">내용</option>
								   </select>
							   </label>
						   </div>
					   </div>
						<div class="col-4 flex-container">
							<div class="input-field">
								<label for="searchText" class="hd-element">검색영역</label> <input
									type="text" id="searchText" name="searchText" value=""
									title="검색어를 입력하세요" placeholder="검색어를 입력하세요" autocomplete="off">
								<button type="button" class="input-search_clear">
									<em class="blind">검색 삭제</em>
								</button>
							</div>
							<button type="submit" class="btn-search">
								<span>검색</span>
							</button>
						</div>
					</div>
				</div>
			</form>
			<script>
	   </script>
		</section>
		<!-- content -->
		<form id="form" name="form" method="post">
			<section id="content">
				<div class="tag-element tag-element--faq">
					<a class="active" href="#" onclick="ctgrySearch('');return false;">전체</a>
					<a href="#" onclick="ctgrySearch('1');return false;">서울시티투어버스</a>
					<a href="#" onclick="ctgrySearch('2');return false;">도보관광</a>
					<a href="#" onclick="ctgrySearch('3');return false;">문화행사 예매</a>
					<a href="#" onclick="ctgrySearch('5');return false;">서비스 이용</a>
					<a href="#" onclick="ctgrySearch('7');return false;">기타</a>
				</div>
				<section class="faq-list-element">
					<!-- faq list-->
					<%for(int i=0; i<10; i++) { %>
					<div class="faq-list-cont">
						<div class="faq-q">
							<span class="hd-element">Q.(질문 아이콘)</span>
							<a href="#">
								<div class="vm-box">
									<div class="vm-inner">
										<span class="faq-category">기타</span>
										<span class="text-cont"> Visit Seoul에서 제공하는 데이터를 사용하고 싶습니다.</span>
										<i class="ion-chevron-down"></i>
									</div>
								</div>
							</a>
						</div>
						<div class="faq-a">
							<span class="hd-element">A.(답변 아이콘)</span>
							<p>Visit Seoul에서 외부에 제공 가능한 공공데이터는 '서울열린데이터광장' 홈페이지를 통해 제공하고 있습니다.</p>
						</div>
					</div>
					<%}%>
				</section>
				
				<!-- paging -->
				<div class="paging-lst"><a href="?curPage=1&amp;bbsSvcNo=&amp;useAt=&amp;searchCtgryNo=&amp;searchKey=&amp;searchText=" class="on" aria-label="현재 페이지">1</a><a href="?curPage=2&amp;bbsSvcNo=&amp;useAt=&amp;searchCtgryNo=&amp;searchKey=&amp;searchText=" aria-label="페이지로 이동">2</a><a href="?curPage=3&amp;bbsSvcNo=&amp;useAt=&amp;searchCtgryNo=&amp;searchKey=&amp;searchText=" aria-label="페이지로 이동">3</a><a href="?curPage=4&amp;bbsSvcNo=&amp;useAt=&amp;searchCtgryNo=&amp;searchKey=&amp;searchText=" aria-label="페이지로 이동">4</a><a href="?curPage=5&amp;bbsSvcNo=&amp;useAt=&amp;searchCtgryNo=&amp;searchKey=&amp;searchText=" aria-label="페이지로 이동">5</a></div>
				<!-- //paging -->

			</section>
			<!-- //content -->
		</form>
	</div>
</div>
</main>