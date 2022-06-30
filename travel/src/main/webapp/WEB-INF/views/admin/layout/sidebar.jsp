<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="col-md-3 left_col">
	<div class="left_col scroll-view">
		<div class="navbar nav_title" style="border: 0;">
			<a href="${pageContext.request.contextPath }/" class="site_title"><i
				class="fa fa-paw"></i> <span> OURTRIP </span></a>
		</div>

		<div class="clearfix"></div>

		<!-- menu profile quick info -->
		<div class="profile clearfix">
			<div class="profile_pic">
				<img
					src="${pageContext.request.contextPath }/resources/images/theme/뽀짝.jpg"
					alt="..." class="img-circle profile_img">
			</div>
			<div class="profile_info">
				<span>환영합니다,</span>
				<h2>
					<strong>${sessionScope.member.userName}</strong>
				</h2>
			</div>
		</div>
		<!-- /menu profile quick info -->

		<br>

		<!-- sidebar menu -->
		<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
			<div class="menu_section active">
				<h3>관리자 페이지</h3>
				<ul class="nav side-menu" style="">
					<li class=""><a
						href="${pageContext.request.contextPath}/admin"><i
							class="fa fa-home"></i> 대쉬보드 </a></li>
					<li><a><i class="fa fa-edit"></i> 회원정보관리 <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a
								href="${pageContext.request.contextPath}/admin/memberManage/list">일반회원관리</a></li>
							<li><a
								href="${pageContext.request.contextPath}/admin/memberManage/partnerList">판매자회원관리</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/a">관리자회원관리</a></li>
						</ul></li>
					<li><a><i class="fa fa-desktop"></i> 여행지 추천 관리 <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="${pageContext.request.contextPath}/admin/a">지역별</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/a">테마별</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/a">축제</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/a">맛집</a></li>
						</ul></li>
					<li><a><i class="fa fa-table"></i> 커뮤니티 관리 <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="${pageContext.request.contextPath}/admin/a">여행코스</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/a">같이가요</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/a">자유소통공간</a></li>
						</ul></li>
					<li><a><i class="fa fa-bar-chart-o"></i> 고객센터 관리 <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="${pageContext.request.contextPath}/admin/a">챗봇</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/a">자주물어보는질문</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/a">Q&A</a></li>
						</ul></li>
					<li><a><i class="fa fa-clone"></i>매출관리 <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="${pageContext.request.contextPath}/admin/a">숙소</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/a">액티비티</a></li>
						</ul></li>
				</ul>
			</div>

		</div>
		<!-- /sidebar menu -->

		<!-- /menu footer buttons -->
		<div class="sidebar-footer hidden-small">
			<a data-toggle="tooltip" data-placement="top" title=""
				data-original-title="Settings"> <span
				class="glyphicon glyphicon-cog" aria-hidden="true"></span>
			</a> <a data-toggle="tooltip" data-placement="top" title=""
				data-original-title="FullScreen"> <span
				class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
			</a> <a data-toggle="tooltip" data-placement="top" title=""
				data-original-title="Lock"> <span
				class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
			</a> <a data-toggle="tooltip" data-placement="top" title=""
				href="login.html" data-original-title="Logout"> <span
				class="glyphicon glyphicon-off" aria-hidden="true"></span>
			</a>
		</div>
		<!-- /menu footer buttons -->
	</div>
</div>

