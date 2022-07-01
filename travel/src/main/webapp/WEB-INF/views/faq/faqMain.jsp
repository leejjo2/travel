<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/faq/css/common.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/faq/css/layout.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/faq/css/nanumgothic.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/faq/css/sub.css" type="text/css">

<script>
jQuery(function($){
	
	/* gnb */
	$("#gnb li > a:first-child").bind("mouseenter", function(){
		var IsRes_pc = $( document ).width();
		if ( IsRes_pc > 640){
			$("div.gnbback").slideDown(500);
			$("#gnb > li").each(function(index){
				$(this).find(".sublist").fadeIn("500");
			});
		}
		return false;
	});
	$("#gnb").bind("mouseleave", function(){
		var IsRes_pc = $( document ).width();
		if ( IsRes_pc > 640){
			$("div.gnbback").slideUp(500);
			$("#gnb > li").each(function(index){
				$(this).find(".sublist").fadeOut("500");
			});				

		}
		return false;
	});
	$("#gnb li > a:first-child").focusin(function(){//tabkey이동
		var IsRes_pc = $( document ).width();
		if ( IsRes_pc > 640){
			$("div.gnbback").css("display","block");
			$("#gnb > li").each(function(index){
				$(this).find(".sublist").css("display","block");
			});
		}
	});
	$("#gnb > li:last-child > .sublist > a:last-child").focusout(function(){//tabkey 제일 마지막 메뉴 이동
		var IsRes_pc = $( document ).width();
		if ( IsRes_pc > 640){
			$("div.gnbback").css("display","none");
			$("#gnb > li").each(function(index){
				$(this).find(".sublist").css("display","none");
			});
		}
	});

	/* gnb mobile ver */	
	$("header#toparea .mopen > button").click(function(){
		var IsRes_sm = $( document ).width();
		if ( IsRes_sm <= 640){			
			$(".gnbback").fadeOut("fast");
			$(".mopen").fadeOut("fast");
			$(".mnav_gnbback").addClass("navopen");//모바일용 메뉴 class선언
			$(".mnav_gnbback.navopen").css("display","block");
			$(".mnav_gnbback.navopen .mnav_inner").animate({"left": "+=230px", "opacity": 1}, "500");
			$(".mnav_gnbback.navopen #gnb > li").each(function(index){
				$(this).find(".sublist").css("display","none");
			});
			$(".mnav_gnbback.navopen #gnb").fadeIn("slow");
			$(".mnav_gnbback.navopen .close").fadeIn("slow");
		}
	});
	$("header#toparea .close > button").click(function(){
		var IsRes_sm = $( document ).width();
		if ( IsRes_sm <= 640){			
			$(".mnav_gnbback.navopen .mnav_inner").animate({"left": "-=230px"}, "500");
			$(".mnav_gnbback.navopen").css("display","none");
			$(".mnav_gnbback.navopen #gnb > li").each(function(index){
				$(this).find(".sublist").css("display","none");
			});
			$(".mnav_gnbback").removeClass("navopen");
			$(".mopen").fadeIn("slow");
		}
	});
	$(document).ready(function (){
		var IsRes_sm = $( document ).width();
		if ( IsRes_sm <= 640){
			$("#gnb > li > a:first-child").click(function(event){				
				event.preventDefault();
				$(this).parent().find(".sublist").toggle();
			});
		}
	});

	/* eng 사이트 준비중 메세지 */
	$("#toplink .inlink > a:last-child").click(function(event){				
		event.preventDefault();
		//alert("영문홈페이지를 준비중입니다.");
		window.open("http://chilgok.fowi.or.kr/en/introduction/about.do","_blank");
		return false;
	});

	/* main: topbanner close */
	$("#topbanner .bannerClose").click(function(event){				
		event.preventDefault();
		$("#topbanner").slideUp("slow");
	});

	/* helpdest faq */	
	$(".faq .ques_area .text button").click(function(event){
		event.preventDefault();
		$(".faq > li").each(function(index){
			$(this).find(".answer_area").css("display","none");
		});
		$($(this).attr("value")).fadeToggle( "500", "linear" );
	});	

	/* lodgephoto over photo chanage */	
	$("div.lodgephoto .smphoto > li img").mouseover(function(){
		var thisimghref = $(this).attr("src");
		$(this).parent().parent().parent().parent().find("div.bigview > img").attr("src", thisimghref);
	});
	
	$(document).ready(function() {

		$(".lnkPortal").bind({
			click: function () {
				return false;
			}
		});
		
		$("A").bind({
			click : function () {
				///console.log($(this).attr("CLASS"));
				var thisAttr = $(this).attr("CLASS");
				thisAttr+="";
				if(thisAttr=="undefined"){
					
				}else
				if($(this).attr("CLASS").indexOf("lnkPortal")>-1) {
					/*alert(
							"온라인 예약은 준비중입니다.\n"+
							"시설 및 예약문의\n"+
							"054-977-8773\n"
						);*/
					///return;///접속 시도 로그는 남긴다.
					window.open("https://portal.fowi.or.kr");
				}
				///console.log($(this).attr("REL"));
				if($(this).attr("REL")+""=="undefined"){
					
				}else
					if(typeof($(this).attr("REL")) !== 'undefined' && null !== $(this).attr("REL") && $(this).attr("REL").indexOf("external")>-1) {
					///console.log("link click:"+$(this).attr("HREF"));
					var trgetUrl = $(this).attr("HREF");
					var trget = "";
					if(trgetUrl.indexOf("portal.fowi.or.kr")>-1) {
						trget="Portal";
					}else if(trgetUrl.indexOf("www.fowi.or.kr")>-1) {
						trget="Fowi";
					}else if(trgetUrl.indexOf("hoengseong.fowi.or.kr")>-1) {
						trget="Heong";
					}else if(trgetUrl.indexOf("chilgok.fowi.or.kr")>-1) {
						trget="Chil";
					}else if(trgetUrl.indexOf("www.gov30.go.kr")>-1) {
						trget="Gov";
					}else{
						trget="Etc";
					}
					var tLnkUrl = '/main/lnk'+trget+'.do';
					$(window).unbind('scroll');
					$.ajax({
						type: 'post'
						, async : false
						, url: tLnkUrl
						, data: {}
						, success: function(data, server_response) {
							if(server_response == 'success'){
							}
						}
						, error: function() {
							console.log('ajax request fail.');
						}
						, complete: function(s) {
						}
					});
				}
			}
		});
		
	});

});
</script>
<div id="contents">

			<!--타이틀 시작-->
			<div class="subtitle">
				<h3>자주하는 질문</h3>
				<ul class="navi">
					<li class="home">home</li>
					<li>고객센터</li>
					<li>자주하는 질문</li>					
				</ul>
			</div>
			<!--타이틀 끝//-->

			<!--실제콘텐츠 시작-->
			<div class="realcon">

				<p>질문을 클릭하시면 답변을 보실 수 있습니다.</p>
				<ol class="faq">
					<li>
						<div class="ques_area">
							<div class="icon"><span class="colornum_gray">Q</span></div>
							<div class="text"><button type="button" value="#faq01">결제 후 영수증은 어떻게 받나요?</button></div>
						</div>
						<div class="answer_area" id="faq01">
							<div class="icon"><span class="colornum_green">A</span></div>
							<div class="text">결제 완료 후 영수증은 예약시  남기신 메일주소로 발송이 됩니다.<br><span class="txt_notice_sm">* 메일 미수신시 연락 주시기 바랍니다.</span></div>							
						</div>
					</li>
					<li>
						<div class="ques_area">
							<div class="icon"><span class="colornum_gray">Q</span></div>
							<div class="text"><button type="button" value="#faq02">애완동물도 입실이 가능한지요?</button></div>
						</div>
						<div class="answer_area" id="faq02">
							<div class="icon"><span class="colornum_green">A</span></div>
							<div class="text">숙박시설은 애완동물과 함께 이용할 수 없습니다. </div>
						</div>
					</li>
					<li>
						<div class="ques_area">
							<div class="icon"><span class="colornum_gray">Q</span></div>
							<div class="text"><button type="button" value="#faq03">숙박시설의 입실 및 퇴실 시간은 어떻게 되나요?</button></div>
						</div>
						<div class="answer_area" id="faq03">
							<div class="icon"><span class="colornum_green">A</span></div>
							<div class="text">입실은 당일 오후2시부터 9시, 퇴실은 익일 오전 11시까지 입니다.</div>							
						</div>
					</li>
					<li>
						<div class="ques_area">
							<div class="icon"><span class="colornum_gray">Q</span></div>
							<div class="text"><button type="button" value="#faq04">숙박시설의 비치용품을 알려주세요?</button></div>
						</div>
						<div class="answer_area" id="faq04">
							<div class="icon"><span class="colornum_green">A</span></div>
							<div class="text">홈페이지 메인 화면에서 시설이용안내의 숙박시설을 참고하시기 바랍니다. <br><span class="txt_notice_sm">* 시설이용안내 - 숙박동 – 비고란</span></div>
						</div>
					</li>
					<li>
						<div class="ques_area">
							<div class="icon"><span class="colornum_gray">Q</span></div>
							<div class="text"><button type="button" value="#faq05">야영장 이용은 어떻게 하나요?</button></div>
						</div>
						<div class="answer_area" id="faq05">
							<div class="icon"><span class="colornum_green">A</span></div>
							<div class="text">추가 공사로 인해 운영이 보류되었으며, 향후 홈페이지 공지사항을 통해 통보해 드리도록 하겠습니다.</div>							
						</div>
					</li>
					<li>
						<div class="ques_area">
							<div class="icon"><span class="colornum_gray">Q</span></div>
							<div class="text"><button type="button" value="#faq06">신용카드 결제후 취소시 환불은 어떻게 되나요?</button></div>
						</div>
						<div class="answer_area" id="faq06">
							<div class="icon"><span class="colornum_green">A</span></div>
							<div class="text">
								신용카드 결제후 취소시
								<ul class="listtype03">
									<li>1. 위약금이 없을경우 바로 신용카드 결제취소가 이루어집니다.</li>
									<li>2. 만약 위약금이 있을경우 취소시 기재한 은행계좌로 3~5일이내(주말제외) 입금 됩니다. </li>
								</ul>
							</div>							
						</div>
					</li>
					<li>
						<div class="ques_area">
							<div class="icon"><span class="colornum_gray">Q</span></div>
							<div class="text"><button type="button" value="#faq07">예약자와 숙박(입실)자가 틀려도 되나요?</button></div>
						</div>
						<div class="answer_area" id="faq07">
							<div class="icon"><span class="colornum_green">A</span></div>
							<div class="text">예약자와 숙박(입실)자가 동일인이어야 입실이 가능함을 알려드리며, 동일인이 아닐 경우 사전연락 바랍니다. </div>							
						</div>
					</li>
					<li>
						<div class="ques_area">
							<div class="icon"><span class="colornum_gray">Q</span></div>
							<div class="text"><button type="button" value="#faq08">이용료 환불은 어떻게 되나요?</button></div>
						</div>
						<div class="answer_area" id="faq08">
							<div class="icon"><span class="colornum_green">A</span></div>
							<div class="text">홈페이지 예약 시스템은 실시간으로 예약 및 취소가 가능합니다. <br>그리고 홈페이지 예약 시스템은 국립칠곡숲체원 입장료 및 시설사용료 운영규정에 의해 자동 계산됨을 알려드립니다. <br><a href="/reservation/guide.do" class="golink">예약안내 바로가기</a></div>							
						</div>
					</li>
					<li>
						<div class="ques_area">
							<div class="icon"><span class="colornum_gray">Q</span></div>
							<div class="text"><button type="button" value="#faq09">예약 가능 일자와 시간은 어떻게 되나요?</button></div>
						</div>
						<div class="answer_area" id="faq09">
							<div class="icon"><span class="colornum_green">A</span></div>
							<div class="text">사용예정일 4주 전 09시부터 예약이 가능합니다. 다음달 예약이 시작되는 시점 순간 접속하는 회원분들이 많아 다소 서버가 느려질 수 있음을 알려드립니다. <br><span class="txt_notice_sm">예) 2015년 10월 예약은 9월 1일 9시부터, 2015년 11월 예약은 10월 1일 9시부터</span></div>
						</div>
					</li>
					<li>
						<div class="ques_area">
							<div class="icon"><span class="colornum_gray">Q</span></div>
							<div class="text"><button type="button" value="#faq10">예약 대기자 및 연락해 줄 수 있나요?</button></div>
						</div>
						<div class="answer_area" id="faq10">
							<div class="icon"><span class="colornum_green">A</span></div>
							<div class="text">프로그램 및 시설 예약은 홈페이지 예약시스템으로 실시간 예약 및 취소가 가능합니다.  현재 대기자 시스템과 추가로 전화나 문자 통보는 불가합니다. </div>
						</div>
					</li>
					<li>
						<div class="ques_area">
							<div class="icon"><span class="colornum_gray">Q</span></div>
							<div class="text"><button type="button" value="#faq11">외부 취사행위는 가능한가요?</button></div>
						</div>
						<div class="answer_area" id="faq11">
							<div class="icon"><span class="colornum_green">A</span></div>
							<div class="text">국립칠곡숲체원내에서는 수목보호 및 산불예방을 위하여 숯불사용, 육류 및 생선을 굽는 행위를 금하고 있습니다. 또한 별도식당도 운영되고 있으니 참고하세요.</div>
						</div>
					</li>
					<li>
						<div class="ques_area">
							<div class="icon"><span class="colornum_gray">Q</span></div>
							<div class="text"><button type="button" value="#faq12">예약시 꼭 회원가입을 해야 하나요?</button></div>
						</div>
						<div class="answer_area" id="faq12">
							<div class="icon"><span class="colornum_green">A</span></div>
							<div class="text">현재&nbsp;국립칠곡숲체원&nbsp;홈페이지 예약 시스템은 개인정보보호를 위해 실명인증만으로 예약할 수 있습니다. </div>
						</div>
					</li>
				</ol>

			</div>
			<!--실제콘텐츠 끝//-->		
			
		</div>