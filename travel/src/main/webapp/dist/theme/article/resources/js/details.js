function DetailsGo(){
	if(getParameter('cotid') != 'c67a7d54-43c0-49b7-9590-1db176277ccb')
		mbticheck();

	// setTimeout(function() {
	// 	curationProc(locationx, locationy);
	// }, 1000)


}



function mbticheck(){
	
	var today = new Date();
	var end_date = new Date(2020, 11, 11);
	if (today < end_date) {
		if(getCookie("forecast_1") != "Y"){
			var gaCookie2 = getCookie('_ga');
			$.ajax({
				url: mainurl+'/call',
				dataType: 'json',
				type: "POST",
				data: {
					cmd : 'GA_INFO_CHK',
					ga : gaCookie2
				},
				success: function(data) {
					if(data.header.process == 'success') {
						if(data.body.GaInfo == 'N'){
							var mbtihtml = '';
							mbtihtml += '<div class="event_quick ">';
							mbtihtml += '<div class="inner">';
							mbtihtml += '<a href="https://korean.visitkorea.or.kr/detail/event_detail.do?cotid=e605937d-c663-445a-b12c-da6805741efd" class="btn_go">국내여행 MBTI 이벤트로 이동</a>';
							mbtihtml += '<button type="button" onclick="closebutton(1);" class="close">닫기</button>';
							mbtihtml += '</div>';
							mbtihtml += '</div>';
							$('#contents').before(mbtihtml);
							mbtiBtnScroll();
						} else{
							var today = new Date();
							var end_date = new Date(2020, 10, 27);
							if (today < end_date) {
								var mbtihtml = '';
								mbtihtml += '<div class="event_quick type1">';
								mbtihtml += '<div class="inner">';
						        mbtihtml += '<a href="https://korean.visitkorea.or.kr/detail/event_detail.do?cotid=5b2a451a-a8f0-4551-a0fb-b117380fa133" class="btn_go">흥확행 이벤트로 이동</a>';
								mbtihtml += '<button type="button" onclick="closebutton();" class="close">닫기</button>';
								mbtihtml += '</div>';
								mbtihtml += '</div>';
								$('#contents').before(mbtihtml);
								mbtiBtnScroll();
							}
						}
					}
				},
				complete: function() {
				},
				error: function(xhr, textStatus, errorThrown) {
				}
			});
		}
	}
}

function closebutton(kind){
	switch(kind){
		case 1 : setCookie('forecast_1', 'Y' , 1); $('.mbti_quick').remove();
			break;
	}	
}

function mbtiBtnScroll(){
	$('.event_quick a').click(function(){
		$('html, body').animate({
		scrollTop: $( $.attr(this, 'href') ).offset().top
		}, 500);
		return false;
	});
	var btnW = $('.event_quick')
	,btnTop = btnW.find('.close');

	var $w = $(window),
		footerHei = $('#footer').outerHeight(),
		$banner = $('.event_quick');

	$w.on('scroll', function() {

		var sT = $w.scrollTop();
		var val = $(document).height() - $w.height() - footerHei;

		if (sT >= val)
			$banner.addClass('on')
		else
				$banner.removeClass('on')

	});

	btnTop.click(function(){
		btnW.addClass('none');
	});
}