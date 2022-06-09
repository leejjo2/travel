<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/festival/css/swiper.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/festival/css/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/festival/css/festivalcommon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/festival/css/festivalcontent.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/festival/css/service.css">


<div id="contents" class="wideType">
	<div class="tit_cont tit_service"><!-- 0831 클래스 tit_service 추가 -->
		<div class="tit_pos">
			<h2 class="logo_culture_tour"><a href="/other/otherService.do?otdid=4e706603-293b-11eb-b8bd-020027310001"><img src="../../resources/images/sub/logo_culture_tour.gif" alt="문화관광축제"></a></h2>
		</div>
	</div>

	<div class="festival_calendar">
		<div class="inr">
			<h3>축제캘린더</h3>
			<div class="month_btn">
				<button type="button" class="prev" onclick="fetchPrevMonth();">이전</button>
				<strong id="current_month">6</strong>
				<button type="button" class="next" onclick="fetchNextMonth();">다음</button>
				<span id="current_year_month">2022 JUNE</span>
			</div>
			<div class="calendar">
				<table>
					<caption>문화관광축제 - 축제 캘린더</caption>
					<tbody>
					<tr>
						<td>
							<div class="thead">
								<table>
									<colgroup>
										<col style="width:14.5%;">
										<col style="width:14.2%;">
										<col style="width:14.2%;">
										<col style="width:14.2%;">
										<col style="width:14.2%;">
										<col style="width:14.2%;">
										<col style="width:14.5%;">
									</colgroup>
									<tbody>
									<tr>
										<th scope="col" class="holiday">日<span>SUN</span></th>
										<th scope="col">月<span>MON</span></th>
										<th scope="col">火<span>TUE</span></th>
										<th scope="col">水<span>WED</span></th>
										<th scope="col">木<span>THU</span></th>
										<th scope="col">金<span>FRI</span></th>
										<th scope="col" class="saturday">土<span>SAT</span></th>
									</tr>
									</tbody>
								</table>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="date">
								<table>
									<colgroup>
										<col style="width:14.5%;">
										<col style="width:14.2%;">
										<col style="width:14.2%;">
										<col style="width:14.2%;">
										<col style="width:14.2%;">
										<col style="width:14.2%;">
										<col style="width:14.5%;">
									</colgroup>
									<tbody id="calendar"><tr>  <td>&nbsp;</td>  <td>&nbsp;</td>  <td>&nbsp;</td>  <td class="calendar_day" data-day="1">		<a href="javascript:;">			<strong>1</strong>			<span><em>61개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="2">		<a href="javascript:;">			<strong>2</strong>			<span><em>61개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="3">		<a href="javascript:;">			<strong>3</strong>			<span><em>63개</em> <span>축제</span></span>		</a>  </td>  <td class="saturday calendar_day" data-day="4">		<a href="javascript:;">			<strong>4</strong>			<span><em>68개</em> <span>축제</span></span>		</a>  </td></tr><tr>  <td class="holiday calendar_day" data-day="5">		<a href="javascript:;">			<strong>5</strong>			<span><em>69개</em> <span>축제</span></span>		</a>  </td>  <td class="holiday calendar_day" data-day="6">		<a href="javascript:;">			<strong>6</strong>			<span><em>69개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="7">		<a href="javascript:;">			<strong>7</strong>			<span><em>69개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="8">		<a href="javascript:;">			<strong>8</strong>			<span><em>70개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="9">		<a href="javascript:;">			<strong>9</strong>			<span><em>74개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="10">		<a href="javascript:;">			<strong>10</strong>			<span><em>81개</em> <span>축제</span></span>		</a>  </td>  <td class="saturday calendar_day" data-day="11">		<a href="javascript:;">			<strong>11</strong>			<span><em>84개</em> <span>축제</span></span>		</a>  </td></tr><tr>  <td class="holiday calendar_day" data-day="12">		<a href="javascript:;">			<strong>12</strong>			<span><em>81개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="13">		<a href="javascript:;">			<strong>13</strong>			<span><em>66개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="14">		<a href="javascript:;">			<strong>14</strong>			<span><em>66개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="15">		<a href="javascript:;">			<strong>15</strong>			<span><em>66개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="16">		<a href="javascript:;">			<strong>16</strong>			<span><em>67개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="17">		<a href="javascript:;">			<strong>17</strong>			<span><em>77개</em> <span>축제</span></span>		</a>  </td>  <td class="saturday calendar_day" data-day="18">		<a href="javascript:;">			<strong>18</strong>			<span><em>78개</em> <span>축제</span></span>		</a>  </td></tr><tr>  <td class="holiday calendar_day" data-day="19">		<a href="javascript:;">			<strong>19</strong>			<span><em>72개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="20">		<a href="javascript:;">			<strong>20</strong>			<span><em>61개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="21">		<a href="javascript:;">			<strong>21</strong>			<span><em>60개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="22">		<a href="javascript:;">			<strong>22</strong>			<span><em>60개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="23">		<a href="javascript:;">			<strong>23</strong>			<span><em>62개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="24">		<a href="javascript:;">			<strong>24</strong>			<span><em>67개</em> <span>축제</span></span>		</a>  </td>  <td class="saturday calendar_day" data-day="25">		<a href="javascript:;">			<strong>25</strong>			<span><em>68개</em> <span>축제</span></span>		</a>  </td></tr><tr>  <td class="holiday calendar_day" data-day="26">		<a href="javascript:;">			<strong>26</strong>			<span><em>66개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="27">		<a href="javascript:;">			<strong>27</strong>			<span><em>59개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="28">		<a href="javascript:;">			<strong>28</strong>			<span><em>59개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="29">		<a href="javascript:;">			<strong>29</strong>			<span><em>60개</em> <span>축제</span></span>		</a>  </td>  <td class="calendar_day" data-day="30">		<a href="javascript:;">			<strong>30</strong>			<span><em>61개</em> <span>축제</span></span>		</a>  </td>  <td>&nbsp;</td>  <td>&nbsp;</td></tr></tbody>
								</table>
							</div>
						</td>
					</tr>
					</tbody>
				</table>
			</div>

			<div class="list_default" id="list_default" style="display: block;">
				<h4>축제리스트</h4>
				<strong>카렌다에서 날짜를 선택해주세요.</strong>
				<p>선택한 날짜에 개최 중인 축제 정보를 보여드립니다.</p>
				<div class="btn"><a href="${pageContext.request.contextPath}/festival/list">월별·지역별 축제 보러가기</a></div>
			</div>
			<div class="list_default type1" id="list_empty" style="display: none;">
				<h4>축제리스트</h4>
				<strong>선택한 일자에 진행하는 축제가 없습니다.</strong>
				<p>다른 일자를 선택해주세요. </p>
				<div class="btn">
					<a href="${pageContext.request.contextPath}/festival/list">월별·지역별 축제 보러가기</a>
				</div>
			</div>
			<div class="list" id="list_container" style="display: none;">
				<h4>축제리스트</h4>
				<ul class="list_thumType flnon" id="list"></ul>
				<!-- paging -->
				<div class="page_box">
					<a href="#" class="btn_first ico">처음</a><a href="#" class="btn_prev ico">이전</a>
					<a href="#">1</a>
					<a href="#">2</a>
					<a href="#" class="on"><!-- <span class="blind">현재 위치</span> -->3<span class="blind">현재 위치</span></a><!-- 0604 수정 -->
					<a href="#">4</a>
					<a href="#">5</a>
					<a href="#" class="btn_next ico">다음</a><a href="#" class="btn_last ico">끝</a>
				</div>
				<!-- //paging -->
				<div class="btn"><a href="${pageContext.request.contextPath}/festival/list">월별·지역별 축제 보러가기</a></div>
			</div>
		</div>
	</div>
</div>