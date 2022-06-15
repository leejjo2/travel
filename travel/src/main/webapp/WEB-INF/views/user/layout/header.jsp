<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css" type="text/css">
<div class="container-fluid mb-0 p-2 text-white" style="background-color: #0dcaf0;">
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="col-7" style="font-size: 40px;">
					<a href="${pageContext.request.contextPath}/" style="text-decoration: none; color: white;">6traptrip</a>
				</div>
			</div>
			<div class="col">
				<div class="d-flex justify-content-end">
					<c:choose>
						<c:when test="${empty sessionScope.member}">
							<div class="p-2">
								<a href="javascript:dialogLogin();" title="로그인"><i
									class="bi bi-box-arrow-in-right"></i></a>
							</div>
							<div class="p-2">
								<a href="${pageContext.request.contextPath}/member/member"
									title="회원가입"><i class="bi bi-person-plus"></i></a>
							</div>
						</c:when>
						<c:otherwise>
							<div class="p-2">
								<a href="${pageContext.request.contextPath}/member/logout"
									title="로그아웃"><i class="bi bi-box-arrow-left"></i></a>
							</div>
							<div class="p-2">
								<a href="#" title="알림"><i class="bi bi-bell"></i></a>
							</div>
							<c:if test="${sessionScope.member.membership>50}">
								<div class="p-2">
									<a href="${pageContext.request.contextPath}/admin" title="관리자"><i
										class="bi bi-gear"></i></a>
								</div>
							</c:if>
							<c:if
								test="${sessionScope.member.membership>30 && sessionScope.member.membership<50}">
								<div class="p-2">
									<a href="${pageContext.request.contextPath}/partner" title="파트너"><i class="bi bi-shop"></i></a>
								</div>
							</c:if>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container-fluid mb-0 p-4 text-white " style="background-color: #0dcaf0; font-weight: bold;" >
			<div class="row">
				<div class="col p-1" style="text-align: center; font-size: 17px;"><a href="#" style="text-decoration: none; color: white;"></a></div>
				<div class="col p-2" style="text-align: center; font-size: 17px;"><a href="#" style="text-decoration: none; color: white;">홈</a></div>
				<div class="col wrap">
					<ul class="navbar-nav mx-auto flex-nowrap"> 
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: white; font-size: 17px; text-align: center;">
								여행지추천
							</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: #0dcaf0; border: none; text-align: center;">
								<li><a class="dropdown-item" href="${pageContext.request.contextPath}/city/list" >지역별추천</a></li>
								<li><a class="dropdown-item" href="${pageContext.request.contextPath}/theme/list" >테마별추천</a></li>
								<li><a class="dropdown-item" href="${pageContext.request.contextPath}/festival/list" >축제 이벤트</a></li>
								<li><a class="dropdown-item" href="${pageContext.request.contextPath}/food/list" >맛집</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="col wrap">
					<ul class="navbar-nav mx-auto flex-nowrap"> 
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: white; font-size: 17px; text-align: center;">
								예약
							</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: #0dcaf0; color: white; border: none; text-align: center;">
								<li><a class="dropdown-item" href="${pageContext.request.contextPath}/hotel/list">숙소예약</a></li>
								<li><a class="dropdown-item" href="${pageContext.request.contextPath}/activity/list">액티비티예약</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="col wrap">
					<ul class="navbar-nav mx-auto flex-nowrap"> 
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: white; font-size: 17px; text-align: center;">
								커뮤니티
							</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: #0dcaf0; color: white; border: none; text-align: center;">
								<li><a class="dropdown-item" href="${pageContext.request.contextPath}/travelCourse/list">여행코스공유</a></li>
								<li><a class="dropdown-item" href="#">같이가요</a></li>
								<li><a class="dropdown-item" href="#">자유게시판</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="col wrap">
					<ul class="navbar-nav mx-auto flex-nowrap"> 
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: white; font-size: 17px; text-align: center;">
								고객센터
							</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: #0dcaf0; color: white; border: none; text-align: center;">
								<li><a class="dropdown-item" href="#">챗봇</a></li>
								<li><a class="dropdown-item" href="#">자주 물어보는 질문</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="col p-1" style="text-align: center; font-size: 17px;"><a href="#" style="text-decoration: none; color: white;"></a></div>
			</div>
	</div>
</div>


