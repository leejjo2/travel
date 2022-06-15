<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="col-md-3 left_col">
	<div class="left_col scroll-view">
		<div class="navbar nav_title" style="border: 0;">
			<a href="${pageContext.request.contextPath }/" class="site_title">
				<i class="fa fa-plane"></i><span> OURTRIP </span>
			</a>
		</div>

		<div class="clearfix"></div>

		<!-- 프로필 -->
		<div class="profile clearfix">
			<div class="profile_pic">
				<img src="${pageContext.request.contextPath}/resources/images/theme/뽀짝.jpg"
					alt="..." class="img-circle profile_img"/>
			</div>
			<div class="profile_info">
				<span>안녕하십니까,</span>
				<h2>사업자 상호명</h2>
			</div>
		</div>
		<!-- // 프로필 -->

		<br>

		<!-- sidebar menu -->
		<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
			<div class="menu_section active">
				<h3>파트너 페이지</h3>
				<ul class="nav side-menu" style="">
					<li class="active"><a href="${pageContext.request.contextPath}/partner"><i class="fa fa-home"></i> 대쉬보드 </a></li>
					<li>
						<a>
							<i class="fa fa-desktop"></i> 숙박업소 관리 <span class="fa fa-chevron-down"></span>
						</a>
						<ul class="nav child_menu">
							<li><a href="${pageContext.request.contextPath}/partner/lodgingManage/lodgingList">숙소 리스트</a></li>
							<li><a href="${pageContext.request.contextPath}/partner/lodgingManage/roomList">숙소별 객실</a></li>
						</ul>
					</li>
					
					<li>
						<a>
							<i class="fa fa-desktop"></i> 액티비티 관리 <span class="fa fa-chevron-down"></span>
						</a>
						<ul class="nav child_menu">
							<li><a href="${pageContext.request.contextPath}/partner/activityManage/activityList">액티비티 리스트</a></li>
						</ul>
					</li>
					
					<li>
						<a>
							<i class="fa fa-edit"></i> 리뷰 관리 <span class="fa fa-chevron-down"></span>
						</a>
						<ul class="nav child_menu">
							<li><a href="#">숙소 리뷰 관리</a></li>
							<li><a href="#">액티비티 리뷰 관리</a></li>

						</ul>
					</li>
					
					<li>
						<a>
							<i class="fa fa-bar-chart-o"></i> 매출현황 관리 <span class="fa fa-chevron-down"></span>
						</a>
						<ul class="nav child_menu">
							<li><a href="#">숙소 매출현황</a></li>
							<li><a href="#">액티비티 매출현황</a></li>
						</ul>
					</li>
					
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

