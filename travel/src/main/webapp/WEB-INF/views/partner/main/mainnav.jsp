<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="top_nav">
	<div class="nav_menu">
		<div class="nav toggle">
			<a id="menu_toggle"><i class="fa fa-bars"></i></a>
		</div>
		<nav class="nav navbar-nav">
			<ul class=" navbar-right">
				<li class="nav-item dropdown open" style="padding-left: 15px;">
					<a href="javascript:;" class="user-profile dropdown-toggle"
					aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown"
					aria-expanded="false"> <img
						src="${pageContext.request.contextPath}/resources/images/theme/뽀짝.jpg"
						alt="">파트너 상호명
					</a>
					<div class="dropdown-menu dropdown-usermenu pull-right"
						aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href=""> 프로필</a> 
						<a class="dropdown-item" href="login.html">
							<i class="fa fa-sign-out pull-right"></i> 로그아웃
						</a>
					</div>
				</li>

				<li role="presentation" class="nav-item dropdown open">
					<a href="" class="dropdown-toggle info-number" id="navbarDropdown1" data-toggle="dropdown" aria-expanded="false">
						<i class="fa fa-envelope-o"></i><span class="badge bg-green">6</span>
					</a>
					<ul class="dropdown-menu list-unstyled msg_list" role="menu" aria-labelledby="navbarDropdown1">
						<li class="nav-item">
							<a class="dropdown-item">
								<span class="image">
									<img src="${pageContext.request.contextPath}/resources/images/theme/뽀짝.jpg"
										alt="Profile Image">
								</span>
								<span>
									<span>John Smith</span>
									<span class="time">3 분전</span>
								</span>
								<span class="message"> Film festivals used to be do-or-die moments for movie makers. They were where... </span>
							</a>
						</li>
						<li class="nav-item">
							<div class="text-center">
								<a class="dropdown-item">
									<strong>See All Alerts</strong>
									<i class="fa fa-angle-right"></i>
								</a>
							</div>
						</li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
</div>