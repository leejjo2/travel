<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="sidebar-start">
	<div class="sidebar-head">
		<a href="${contextPath.request.pageContext}/trip"><i class="fa-solid fa-house"></i> 홈페이지</a>
		<a href="/" class="logo-wrapper" title="Home"> <span
			class="sr-only">Home</span> <span class="icon logo"
			aria-hidden="true"></span> <span class="logo-text"> <span
				class="logo-title">관리자페이지</span> <span class="logo-subtitle">메인</span>
		</span>

		</a>
		<button class="sidebar-toggle transparent-btn" title="Menu"
			type="button">
			<span class="sr-only">Toggle menu</span> <span
				class="icon menu-toggle" aria-hidden="true"></span>
		</button>
	</div>
	<div class="sidebar-body">
		<ul class="sidebar-body-menu">
			<li><a class="show-cat-btn active" href="/"><span class="icon home"
					aria-hidden="true"></span>메인</a></li>
			<li><a class="show-cat-btn" href="##"> <span
					class="icon document" aria-hidden="true"></span>회원정보관리 <span
					class="category__btn transparent-btn" title="Open list"> <span
						class="sr-only">Open list</span> <span class="icon arrow-down"
						aria-hidden="true"></span>
				</span>
			</a>
				<ul class="cat-sub-menu">
					<li><a href="posts.html"> &nbsp;&nbsp;- 회원 통계</a></li>
					<li><a href="new-post.html"> &nbsp;&nbsp;- 개인 회원 관리</a></li>
					<li><a href="new-post.html"> &nbsp;&nbsp;- 판매자 관리</a></li>
					<li><a href="new-post.html"> &nbsp;&nbsp;- 관리자 관리</a></li>
				</ul></li>
			<li><a class="show-cat-btn" href="##"> <span
					class="icon folder" aria-hidden="true"></span>여행지추천 관리 <span
					class="category__btn transparent-btn" title="Open list"> <span
						class="sr-only">Open list</span> <span class="icon arrow-down"
						aria-hidden="true"></span>
				</span>
			</a>
				<ul class="cat-sub-menu">
					<li><a href="categories.html"> &nbsp;&nbsp;- 지역별 추천관리</a></li>
					<li><a href="categories.html"> &nbsp;&nbsp;- 테마별 추천관리</a></li>
				</ul></li>
			<li><a class="show-cat-btn" href="##"> <span
					class="icon image" aria-hidden="true"></span>커뮤니티 관리 <span
					class="category__btn transparent-btn" title="Open list"> <span
						class="sr-only">Open list</span> <span class="icon arrow-down"
						aria-hidden="true"></span>
				</span>
			</a>
				<ul class="cat-sub-menu">
					<li><a href="media-01.html"> &nbsp;&nbsp;- Media-01</a></li>
					<li><a href="media-02.html"> &nbsp;&nbsp;- Media-02</a></li>
				</ul></li>
			<li><a class="show-cat-btn" href="##"> <span
					class="icon paper" aria-hidden="true"></span>고객센터 관리 <span
					class="category__btn transparent-btn" title="Open list"> <span
						class="sr-only">Open list</span> <span class="icon arrow-down"
						aria-hidden="true"></span>
				</span>
			</a>
				<ul class="cat-sub-menu">
					<li><a href="pages.html"> &nbsp;&nbsp;- All pages</a></li>
					<li><a href="new-page.html"> &nbsp;&nbsp;- Add new page</a></li>
				</ul></li>
			<li><a href="comments.html"> <span class="icon message"
					aria-hidden="true"></span>매출현황 관리
			</a> <span class="msg-counter">7</span></li>
			<li><a href="comments.html"> <span class="icon message"
					aria-hidden="true"></span>숙박업체 관리
			</a> <span class="msg-counter">7</span></li>
		</ul>
		
		
		
		
		<!-- <span class="system-menu__title">system</span>
		<ul class="sidebar-body-menu">
			<li><a href="appearance.html"><span class="icon edit"
					aria-hidden="true"></span>Appearance</a></li>
			<li><a class="show-cat-btn" href="##"> <span
					class="icon category" aria-hidden="true"></span>Extentions <span
					class="category__btn transparent-btn" title="Open list"> <span
						class="sr-only">Open list</span> <span class="icon arrow-down"
						aria-hidden="true"></span>
				</span>
			</a>
				<ul class="cat-sub-menu">
					<li><a href="extention-01.html">Extentions-01</a></li>
					<li><a href="extention-02.html">Extentions-02</a></li>
				</ul></li>
			<li><a class="show-cat-btn" href="##"> <span
					class="icon user-3" aria-hidden="true"></span>Users <span
					class="category__btn transparent-btn" title="Open list"> <span
						class="sr-only">Open list</span> <span class="icon arrow-down"
						aria-hidden="true"></span>
				</span>
			</a>
				<ul class="cat-sub-menu">
					<li><a href="users-01.html">Users-01</a></li>
					<li><a href="users-02.html">Users-02</a></li>
				</ul></li>
			<li><a href="##"><span class="icon setting"
					aria-hidden="true"></span>Settings</a></li>
		</ul> -->
	</div>
</div>

<script type="text/javascript">
$(function() {
	$('.show-cat-btn').click(function() {
		if (!$(this).hasClass('active')) {
			$('.show-cat-btn').removeClass('active');
			$('.cat-sub-menu').removeClass('visible');
			$(this).addClass('active');
			$(this).next('.cat-sub-menu').addClass('visible');
		} else {
			$(this).removeClass('active');
		}
	});
})
</script>

