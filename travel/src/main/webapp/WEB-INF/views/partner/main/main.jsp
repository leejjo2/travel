<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/dist/partner/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/dist/partner/css/partnerStyle.css" rel="stylesheet">

<style>
table tr {
	color: #757575;
	text-align: center;
	padd
}

.table td, .table th {
    padding: 0.75rem;
    vertical-align: middle;
    border-top: 1px solid #dee2e6;
}

.table td { 
    font-size:15px; 
}
</style>


<div class="right_col" role="main" style="min-height: 1758px; background: white; padding-left: 200px; padding-right: 200px;">
	<div class="container pt-4 px-4 mt-5">
       <div class="row g-4 mt-5">
           <div class="col-sm-6 col-xl-3">
               <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                   <i class="fa fa-chart-line fa-3x text-primary"></i>
                   <div class="ms-3">
                       <p class="mb-2">금일 판매액</p>
                       <h6 class="mb-0">354,652 원</h6>
                   </div>
               </div>
           </div>
           <div class="col-sm-6 col-xl-3">
               <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                   <i class="fa fa-chart-bar fa-3x text-primary"></i>
                   <div class="ms-3">
                       <p class="mb-2">총 누적 판매액</p>
                       <h6 class="mb-0">2,584,762 원</h6>
                   </div>
               </div>
           </div>
           <div class="col-sm-6 col-xl-3">
               <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                   <i class="fa fa-chart-area fa-3x text-primary"></i>
                   <div class="ms-3">
                       <p class="mb-2">금일 문의</p>
                       <h6 class="mb-0">총 21 건</h6>
                   </div>
               </div>
           </div>
           <div class="col-sm-6 col-xl-3">
               <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                   <i class="fa fa-chart-pie fa-3x text-primary"></i>
                   <div class="ms-3">
                       <p class="mb-2">새로운 리뷰</p>
                       <h6 class="mb-0">총 14 건</h6>
                   </div>
               </div>
           </div>
      </div>
   </div>
   
   <div class="container-fluid pt-4 px-4">
	    <div class="bg-light text-center rounded p-4">
	        <div class="d-flex align-items-center justify-content-between mb-4">
	            <h6 class="mb-0">최근 주문 건</h6>
	            <a href="">더보기</a>
	        </div>
	        <div class="table-responsive">
	            <table class="table text-start align-middle table-bordered table-hover mb-0">
	                <thead>
	                    <tr class="text-dark">
	                        <th scope="col">구분</th>
	                        <th scope="col">결제방법</th>
	                        <th scope="col">결제금액</th>
	                        <th scope="col">주문자명</th>
	                        <th scope="col">전화번호</th>
	                        <th scope="col">주문일시</th>
	                        <th scope="col">상태</th>
	                    </tr>
	                </thead>
	                <tbody>
	                    <tr>
	                        <td>액티비티</td>
	                        <td>카카오 페이</td>
	                        <td>84,000원</td>
	                        <td>홍길동</td>
	                        <td>010-0000-0000</td>
	                        <td>2022.06.24</td>
	                        <td><a class="btn btn-sm btn-primary" href="">결제완료</a></td>
	                    </tr>
	                    <tr>
	                        <td>숙소</td>
	                        <td>신용카드</td>
	                        <td>322,000원</td>
	                        <td>신은정</td>
	                        <td>010-1111-1111</td>
	                        <td>2022.06.24</td>
	                        <td><a class="btn btn-sm btn-primary" href="">결제완료</a></td>
	                    </tr>
	                    <tr>
	                        <td>숙소</td>
	                        <td>신용카드</td>
	                        <td>170,500원</td>
	                        <td>김삿갓</td>
	                        <td>010-1111-1111</td>
	                        <td>2022.06.24</td>
	                        <td><a class="btn btn-sm btn-primary" href="">결제완료</a></td>
	                    </tr>
	                    <tr>
	                        <td>액티비티</td>
	                        <td>신용카드</td>
	                        <td>21,000원</td>
	                        <td>이자바</td>
	                        <td>010-3333-3333</td>
	                        <td>2022.06.24</td>
	                        <td><a class="btn btn-sm btn-primary" href="">결제완료</a></td>
	                    </tr>
	                </tbody>
	            </table>
	        </div>
	    </div>
	</div>
   
   <div class="container-fluid pt-4 px-4">
        <div class="row g-4">
            <div class="col-sm-12 col-md-6 col-xl-4">
                <div class="h-100 bg-light rounded p-4">
                    <div class="d-flex align-items-center justify-content-between mb-2">
                        <h6 class="mb-0">알림</h6>
                        <a href="">더보기</a>
                    </div>
                    <div class="d-flex align-items-center border-bottom py-3">
                        <div class="w-100 ms-3">
                            <div class="d-flex w-100 justify-content-between">
                                <h6 class="mb-0">숙소 주문 알림</h6>
                                <small>3분 전</small>
                            </div>
                            <span>'[강원도 강릉] 세인트존스 호텔' 주문이 완료되었습니다. </span>
                        </div>
                    </div>
                    <div class="d-flex align-items-center border-bottom py-3">
                        <div class="w-100 ms-3">
                            <div class="d-flex w-100 justify-content-between">
                                <h6 class="mb-0">액티비티 주문 알림</h6>
                                <small>15분 전</small>
                            </div>
                            <span>'[서울 용인] 캐리비안베이 종일권 ~' 주문이 완료되었습니다.</span>
                        </div>
                    </div>
                    <div class="d-flex align-items-center border-bottom py-3">
                        <div class="w-100 ms-3">
                            <div class="d-flex w-100 justify-content-between">
                                <h6 class="mb-0">숙소 주문 알림</h6>
                                <small>1시간 전</small>
                            </div>
                            <span>'[강원도 강릉] 세인트존스 호텔' 주문이 완료되었습니다. </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-xl-4">
                <div class="h-100 bg-light rounded p-4">
                    <div class="d-flex align-items-center justify-content-between mb-4">
                        <h6 class="mb-0">캘린더</h6>
                        <a href="">더보기</a>
                    </div>
                    <div id="calender"><div class="bootstrap-datetimepicker-widget usetwentyfour"><ul class="list-unstyled"><li class="show"><div class="datepicker"><div class="datepicker-days" style=""><table class="table table-sm"><thead><tr><th class="prev" data-action="previous"><span class="fa fa-chevron-left" title="Previous Month"></span></th><th class="picker-switch" data-action="pickerSwitch" colspan="5" title="Select Month">June 2022</th><th class="next" data-action="next"><span class="fa fa-chevron-right" title="Next Month"></span></th></tr><tr><th class="dow">Su</th><th class="dow">Mo</th><th class="dow">Tu</th><th class="dow">We</th><th class="dow">Th</th><th class="dow">Fr</th><th class="dow">Sa</th></tr></thead><tbody><tr><td data-action="selectDay" data-day="05/29/2022" class="day old weekend">29</td><td data-action="selectDay" data-day="05/30/2022" class="day old">30</td><td data-action="selectDay" data-day="05/31/2022" class="day old">31</td><td data-action="selectDay" data-day="06/01/2022" class="day">1</td><td data-action="selectDay" data-day="06/02/2022" class="day">2</td><td data-action="selectDay" data-day="06/03/2022" class="day">3</td><td data-action="selectDay" data-day="06/04/2022" class="day weekend">4</td></tr><tr><td data-action="selectDay" data-day="06/05/2022" class="day weekend">5</td><td data-action="selectDay" data-day="06/06/2022" class="day">6</td><td data-action="selectDay" data-day="06/07/2022" class="day">7</td><td data-action="selectDay" data-day="06/08/2022" class="day">8</td><td data-action="selectDay" data-day="06/09/2022" class="day">9</td><td data-action="selectDay" data-day="06/10/2022" class="day">10</td><td data-action="selectDay" data-day="06/11/2022" class="day weekend">11</td></tr><tr><td data-action="selectDay" data-day="06/12/2022" class="day weekend">12</td><td data-action="selectDay" data-day="06/13/2022" class="day">13</td><td data-action="selectDay" data-day="06/14/2022" class="day">14</td><td data-action="selectDay" data-day="06/15/2022" class="day">15</td><td data-action="selectDay" data-day="06/16/2022" class="day">16</td><td data-action="selectDay" data-day="06/17/2022" class="day">17</td><td data-action="selectDay" data-day="06/18/2022" class="day weekend">18</td></tr><tr><td data-action="selectDay" data-day="06/19/2022" class="day weekend">19</td><td data-action="selectDay" data-day="06/20/2022" class="day">20</td><td data-action="selectDay" data-day="06/21/2022" class="day">21</td><td data-action="selectDay" data-day="06/22/2022" class="day">22</td><td data-action="selectDay" data-day="06/23/2022" class="day active today">23</td><td data-action="selectDay" data-day="06/24/2022" class="day">24</td><td data-action="selectDay" data-day="06/25/2022" class="day weekend">25</td></tr><tr><td data-action="selectDay" data-day="06/26/2022" class="day weekend">26</td><td data-action="selectDay" data-day="06/27/2022" class="day">27</td><td data-action="selectDay" data-day="06/28/2022" class="day">28</td><td data-action="selectDay" data-day="06/29/2022" class="day">29</td><td data-action="selectDay" data-day="06/30/2022" class="day">30</td><td data-action="selectDay" data-day="07/01/2022" class="day new">1</td><td data-action="selectDay" data-day="07/02/2022" class="day new weekend">2</td></tr><tr><td data-action="selectDay" data-day="07/03/2022" class="day new weekend">3</td><td data-action="selectDay" data-day="07/04/2022" class="day new">4</td><td data-action="selectDay" data-day="07/05/2022" class="day new">5</td><td data-action="selectDay" data-day="07/06/2022" class="day new">6</td><td data-action="selectDay" data-day="07/07/2022" class="day new">7</td><td data-action="selectDay" data-day="07/08/2022" class="day new">8</td><td data-action="selectDay" data-day="07/09/2022" class="day new weekend">9</td></tr></tbody></table></div><div class="datepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" data-action="previous"><span class="fa fa-chevron-left" title="Previous Year"></span></th><th class="picker-switch" data-action="pickerSwitch" colspan="5" title="Select Year">2022</th><th class="next" data-action="next"><span class="fa fa-chevron-right" title="Next Year"></span></th></tr></thead><tbody><tr><td colspan="7"><span data-action="selectMonth" class="month">Jan</span><span data-action="selectMonth" class="month">Feb</span><span data-action="selectMonth" class="month">Mar</span><span data-action="selectMonth" class="month">Apr</span><span data-action="selectMonth" class="month">May</span><span data-action="selectMonth" class="month active">Jun</span><span data-action="selectMonth" class="month">Jul</span><span data-action="selectMonth" class="month">Aug</span><span data-action="selectMonth" class="month">Sep</span><span data-action="selectMonth" class="month">Oct</span><span data-action="selectMonth" class="month">Nov</span><span data-action="selectMonth" class="month">Dec</span></td></tr></tbody></table></div><div class="datepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" data-action="previous"><span class="fa fa-chevron-left" title="Previous Decade"></span></th><th class="picker-switch" data-action="pickerSwitch" colspan="5" title="Select Decade">2020-2029</th><th class="next" data-action="next"><span class="fa fa-chevron-right" title="Next Decade"></span></th></tr></thead><tbody><tr><td colspan="7"><span data-action="selectYear" class="year old">2019</span><span data-action="selectYear" class="year">2020</span><span data-action="selectYear" class="year">2021</span><span data-action="selectYear" class="year active">2022</span><span data-action="selectYear" class="year">2023</span><span data-action="selectYear" class="year">2024</span><span data-action="selectYear" class="year">2025</span><span data-action="selectYear" class="year">2026</span><span data-action="selectYear" class="year">2027</span><span data-action="selectYear" class="year">2028</span><span data-action="selectYear" class="year">2029</span><span data-action="selectYear" class="year old">2030</span></td></tr></tbody></table></div><div class="datepicker-decades" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" data-action="previous"><span class="fa fa-chevron-left" title="Previous Century"></span></th><th class="picker-switch" data-action="pickerSwitch" colspan="5">2000-2090</th><th class="next" data-action="next"><span class="fa fa-chevron-right" title="Next Century"></span></th></tr></thead><tbody><tr><td colspan="7"><span data-action="selectDecade" class="decade old" data-selection="2006">1990</span><span data-action="selectDecade" class="decade" data-selection="2006">2000</span><span data-action="selectDecade" class="decade" data-selection="2016">2010</span><span data-action="selectDecade" class="decade active" data-selection="2026">2020</span><span data-action="selectDecade" class="decade" data-selection="2036">2030</span><span data-action="selectDecade" class="decade" data-selection="2046">2040</span><span data-action="selectDecade" class="decade" data-selection="2056">2050</span><span data-action="selectDecade" class="decade" data-selection="2066">2060</span><span data-action="selectDecade" class="decade" data-selection="2076">2070</span><span data-action="selectDecade" class="decade" data-selection="2086">2080</span><span data-action="selectDecade" class="decade" data-selection="2096">2090</span><span data-action="selectDecade" class="decade old" data-selection="2106">2100</span></td></tr></tbody></table></div></div></li><li class="picker-switch accordion-toggle"></li></ul></div></div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-xl-4">
                <div class="h-100 bg-light rounded p-4">
                    <div class="d-flex align-items-center justify-content-between mb-4">
                        <h6 class="mb-0">체크 리스트</h6>
                        <a href="">더보기</a>
                    </div>
                    <div class="d-flex mb-2">
                        <input class="form-control bg-transparent" type="text" placeholder="체크리스트 입력...">
                        <button type="button" class="btn btn-primary ms-2">add</button>
                    </div>
                    <div class="d-flex align-items-center border-bottom py-2">
                        <input class="form-check-input m-0" type="checkbox">
                        <div class="w-100 ms-3">
                            <div class="d-flex w-100 align-items-center justify-content-between">
                                <span>6월 23일 문의사항 답변 달기</span>
                                <button class="btn btn-sm"><i class="fa fa-times"></i></button>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex align-items-center border-bottom py-2">
                        <input class="form-check-input m-0" type="checkbox" checked="">
                        <div class="w-100 ms-3">
                            <div class="d-flex w-100 align-items-center justify-content-between">
                                <span><del>주문/취소 내역 정산요금과 비교</del></span>
                                <button class="btn btn-sm text-primary"><i class="fa fa-times"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

