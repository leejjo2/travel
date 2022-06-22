// 20200821 메인 추가
function main_TagList(){
	$('.main_taglist .btn_more').click(function(){
		var $this = $(this);
		var $thisP = $this.parent();

		if($thisP.hasClass('on')){
			$thisP.removeClass('on');
			$(this).text('더보기');
		}else{
			$thisP.addClass('on');
			$(this).text('닫기');
		}
	});

	function mmtagMore(){
		var wrap = $('.main_taglist')
		,inner = wrap.find('.inr')
		,innerS = wrap.find('ul')
		,innerSheight = innerS.height()
		,btnMore = wrap.find('.btn_more')
		,windowW = $(window).width();
		/* mobile */
		if(windowW <= 1023){
			if(innerSheight > 70){
				btnMore.css('display', 'block');
				wrap.css('padding-right', '64px');
				inner.css('height', '70px');
			}else if(innerSheight <= 70){
				btnMore.css('display', 'none');
				wrap.css('padding-right', '0px');
				if(innerSheight > 36){
					inner.css('height', '70px');
				}else if(innerSheight <= 36){
					inner.css('height', '30px');
				}
			}
		}

		/* pc */
		if(windowW > 1023){
			inner.css('height', '100px');
			if(innerSheight > 100){
				btnMore.css('display', 'block');
				wrap.css('padding-right', '80px');
			}else if(innerSheight <= 100){
				btnMore.css('display', 'none');
				wrap.css('padding-right', '0px');
				if(innerSheight >50){
					inner.css('height', '100px');
				}else if(innerSheight <= 50){
					inner.css('height', '50px');
				}
			}
		}
	}
	mmtagMore();

	$(window).resize(function(){
		mmtagMore();
	});
}

function sub_TagList(){
	$('.tag_cont .btn_more').click(function(){
		var $this = $(this);
		var $thisP = $this.parent();

		if($thisP.hasClass('on')){
			$thisP.removeClass('on');
			$(this).text('더보기');
		}else{
			$thisP.addClass('on');
			$(this).text('닫기');
		}
	});
	function subtagMore(){
		var wrap = $('.tag_cont')
		,inner = wrap.find('.inr')
		,innerS = wrap.find('ul')
		,innerSheight = innerS.height()
		,btnMore = wrap.find('.btn_more')
		,windowW = $(window).width();
		/* mobile */
		if(windowW < 1023){
			if(innerSheight > 70){
				btnMore.css('display', 'block');
				wrap.css('padding-right', '64px');
				inner.css('height', '70px');
			}else if(innerSheight <= 70){
				btnMore.css('display', 'none');
				wrap.css('padding-right', '0px');
				if(innerSheight > 36){
					inner.css('height', '70px');
				}else if(innerSheight <= 36){
					inner.css('height', '30px');
				}
			}
		}

		/* pc */
		if(windowW > 1023){
			inner.css('height', '100px');
			if(innerSheight > 100){
				btnMore.css('display', 'block');
				wrap.css('padding-right', '80px');
			}else if(innerSheight <= 100){
				btnMore.css('display', 'none');
				wrap.css('padding-right', '0px');
				if(innerSheight >50){
					inner.css('height', '100px');
				}else if(innerSheight <= 50){
					inner.css('height', '50px');
				}
			}
		}
	}
	subtagMore();

	$(window).resize(function(){
		subtagMore();
	});
}

function gnbFixed() {
	var menu = $('#gnbMain').offset();
	$(window).scroll(function() {
		if ($(document).scrollTop() > menu.top) {
			$('#gnbMain').addClass('fixed');
		} else {
			$('#gnbMain').removeClass('fixed');
		}
	});
}

function mainGnbmenu(){

	function gnbClick(){
		var windowW = $(window).width();

		/* mobile */
		if(windowW < 1023){
			$('.all_menu .menu_btn button').on({
				click: function(){
					$(".menu").addClass("active");
					$(this).parent().addClass('dim');
				}
			});
			$('.all_menu .login .close').on({
				click: function(){
					$(".menu").removeClass("active");
					$(this).parents('.all_menu').removeClass('dim');
				}
			});
			$('.all_menu .icon2').on({
				click: function(){
					if(!$(this).hasClass('on')){
						$(this).addClass('on');
						$(".smenu").addClass("active");
					}else{
						$(this).removeClass('on');
						$(".smenu").removeClass("active");
					}
				}
			});
		}
		/* pc */
		if(windowW > 1023){
			// gnb 전체메뉴 
			$('.all_menu').on({
//				mouseover: function(){
//					$(this).addClass('dim');
//					$(".menu").addClass("active");
//				},
//				mouseout: function(){
//					$(this).removeClass('dim');
//					$(".menu").removeClass("active");
//					$(".all_menu .icon2").removeClass('on');
//					$(".smenu").removeClass("active");
//				},
				click: function(){
					$('.menu').toggleClass('active');
					$('.all_menu').toggleClass('dim');
//					$(".menu").addClass("active");
//					$(this).addClass('dim');
				}
			});

			$(".all_menu .icon2").on('click mouseover', function() {
				$(this).addClass('on');
				$(".smenu").addClass("active");
			});
		}
	}

	// gnb 홈메뉴
	$('.main_gnb .btm_menu li.home').on({
		mouseover: function(){
			if(mobileYn == 'N') $(".home_menu").addClass("active");
		},
		mouseout: function(){
			if(mobileYn == 'N') $(".home_menu").removeClass("active");
		},
		click: function(){
			if(mobileYn == 'Y') $(".home_menu").toggleClass("active");
		}
	});

	$('.main_gnb .search .close').on({
		click: function(){
			$(this).parent().parent().removeClass("on");
			$('.area_keyword').css('display','none');
			$('.forecast_go').focus();
		}
	});

	$(".mo_menu_tab .home, .mo_menu_tab .m_home_menu").on('click mouseover', function() {
		$(".m_home_menu").addClass("active");
		$('.mo_menu_tab .home').addClass('on');
	});
	$(".mo_menu_tab .m_home_menu, .mo_menu_tab .home").on('mouseout', function() {
		$(".m_home_menu").removeClass("active");
		$('.mo_menu_tab .home').removeClass('on');
	});
	
	// gnb 메뉴 말고다른곳 클릭시 메뉴 닫히게
	$('body').on('click', function(e){
		
		var target = $(e.target);

		if(!target.parents('.all_menu').hasClass('all_menu') && $('.all_menu .menu').hasClass('active')){
			$('.menu').removeClass('active');
			$('.all_menu').removeClass('dim');
		}
		
		if(!target.parents('#gnb_home').hasClass('home') && $('.home_menu').hasClass('active')){
			$('.home_menu').removeClass('active')
		}
	});

	var menu = $('#gnbMain').offset();
	
	$(window).scroll(function() {
		
		if (! $("body").hasClass("main_mo")) {
			$('.area_keyword').hide();
			$('.words_list').hide();
		}

		if ($(document).scrollTop() > menu.top) {
			$('#gnbMain').addClass('fixed');
			
			$('.logoMain').hide();
			switch (recentMonth) {
			case 3: case 4: case 5:
				$('.logoSpring').show();
				break;
			case 6: case 7: case 8:
				$('.logoSummer').show();
				break;
			case 9: case 10: case 11:
				$('.logoAutumn').show();
				break;
			case 12: case 1: case 2:
				$('.logoWinter').show();
				break;
			}
			
		} else {
			$('#gnbMain').removeClass('fixed');
			
			$('.main_mo .logoMain').show();
			$('.main_mo .logoSpring').hide();
			$('.main_mo .logoSummer').hide();
			$('.main_mo .logoAutumn').hide();
			$('.main_mo .logoWinter').hide();
			
		}
		
		if($('.home_menu').hasClass('active')) $('.home_menu').removeClass('active');
	});
	
//	$(window).resize(function(){
		gnbClick();
//	});
}
// 20200821 메인 추가 끝

function wrapVisual(){
	var windowH = $(window).height()*0.6;
	$('.moVisu').css('height',windowH + 'px');
}

//1228 추가
//공통 - 슬라이더 tabindex
function swiperTabindex(target, activeIndex){
	var slider = $(target),
	sliderActiveIndex = activeIndex,
	activeList = slider.find('.swiper-slide').eq(sliderActiveIndex),
	tabNode, siblingsNode;
	if(activeList.find('a').length){
		tabNode = activeList.find('a'),
		siblingsNode = activeList.siblings().find('a');
	}else{
		tabNode = activeList,
		siblingsNode = activeList.siblings();
	}
	siblingsNode.attr('tabindex', '-1')
	tabNode.attr('tabindex', '0')
}

/* Main Gnb */
function gnbMain(){
	$("#gnbMain").find(".inp_search").focusin(function() {
		$("#gnbMain").removeClass("off");
	});

	var lastScrollPos = 0
	,delta = 15; // 0913 추가
	var downYn = 'N';

	$(window).scroll(function (event) {
		var st = $(this).scrollTop();

		if (Math.abs(lastScrollPos - st) <= delta) return; // 0913 추가

		if ((st > lastScrollPos) && (lastScrollPos > 0)) {
			$("#gnbMain").addClass('off');
			//$('.btn_list button').removeClass('on');
			downYn = 'Y';
			setTimeout(function() {
				if (downYn == 'Y') $("#gnbMain").hide();
			}, 200)
		} else {
			downYn = 'N';
			$("#gnbMain").show();
			setTimeout(function() {
				if (downYn == 'N') $("#gnbMain").removeClass('off');
			}, 100)
		}
		lastScrollPos = st;
	});
	$(document).on("click","#gnbMain .btn_list > button",function(){
	//$('#gnbMain .btn_list > button').click(function(){
		var itemObj = $(this).attr('id');

		if(itemObj == 'btnSearch'){
			// 1224 삭제
			// $(this).toggleClass('on');

			/* 1224 추가 */
			if($(this).hasClass('on')){
				$(this).removeClass('on');
				$(this).text('검색 열기');
				$('.area_keyword').css('display','block');
				setCookie('GnbSearchCloseMain', 'Y' , 1);
			}else{
				$(this).addClass('on');
				$(this).text('검색 닫기');
			}
			/* // 1224 추가 */
			$('#gnbMain #btnMenu').removeClass('on');
		}
		else if(itemObj == 'btnMenu'){
			// 1211 삭제
			// $(this).toggleClass('on');

			/* 1224 수정 */
			if($(this).hasClass('on')){
				$(this).removeClass('on');
				$(this).text('메뉴 열기');
			}else{
				$(this).addClass('on');
				$(this).text('메뉴 닫기');
			}
			/* // 1224 수정 */
			$('#gnbMain #btnSearch').removeClass('on');
			$('#gnbMain .gnb_search').removeClass('on');
		}
	});

	$(document).on("click","#gnbMain .searchBar .btn_del",function(){
	//$('#gnbMain .searchBar .btn_del').click(function(){
		$('#gnbMain .searchBar .inp_search').val('');
		$(this).removeClass('on');
	});
}

/* Sub Gnb */
function gnb(){
	$("#gnb").find(".inp_search").focusin(function() {
		$("#gnb").removeClass("off");
	});

	var lastScrollPos = 0
	,delta = 15; // 0913 추가
	var downYn = 'N';

	$(window).scroll(function (event) {
		if(!$('.detail_tab').hasClass('menuFixed')){
			var st = $(this).scrollTop();

			if (Math.abs(lastScrollPos - st) <= delta) return; // 0913 추가

			if ((st > lastScrollPos) && (lastScrollPos > 0)) {
				$("#gnb").addClass('off');
				//$('.btn_list button').removeClass('on');
				//$('.btn_list button').text('검색 닫기');
				//$('.area_keyword').css('display','block');
				downYn = 'Y';
				setTimeout(function() {
					if (downYn == 'Y') $("#gnb").hide();
				}, 200)
			} else {
				downYn = 'N';
				$("#gnb").show();
				setTimeout(function() {
					if (downYn == 'N') $("#gnb").removeClass('off');
				}, 100)
			}
			lastScrollPos = st;
		} else {
			$("#gnb").addClass('off');
			//$('.btn_list button').removeClass('on');
			//$('.btn_list button').text('검색 닫기');
			//$('.area_keyword').css('display','block');
			downYn = 'Y';
			setTimeout(function() {
				if (downYn == 'Y') $("#gnb").hide();
			}, 200)
		}
	});

	$(document).on("click","#gnb .btn_list > button",function(){
	//$('#gnb .btn_list > button').click(function(){
		var itemObj = $(this).attr('id');

		if(itemObj == 'btnSearch'){
			// 1224 삭제
			// $(this).toggleClass('on');

			if(getParameter('otdid')!="456a84d1-84c4-11e8-8165-020027310001"
			&& getParameter('otdid')!="81f62fd1-8939-11e8-8165-020027310001"){
				/* 1224 추가 */
				if($(this).hasClass('on')){
					$(this).removeClass('on');
					$(this).text('검색 열기');
					$('.area_keyword').css('display','block');
					setCookie('GnbSearchClose', 'Y' , 1);
				}else{
					$(this).addClass('on');
					$(this).text('검색 닫기');
				}
			}
			/* // 1224 추가 */

			$('#gnb #btnMenu').removeClass('on');
			$('#gnb #btnPartners').removeClass('on');// 202004 고도화 추가
		}
		else if(itemObj == 'btnMenu'){
			// 1211 삭제
			// $(this).toggleClass('on');

			/* 1224 수정 */
			if($(this).hasClass('on')){
				$(this).removeClass('on');
				$(this).text('메뉴 열기');
			}else{
				$(this).addClass('on');
				$(this).text('메뉴 닫기');
			}
			/* // 1224 수정 */
			$('#gnb #btnSearch').removeClass('on');
			$('#gnb .gnb_search').removeClass('on');
			$('#gnb #btnPartners').removeClass('on');// 202004 고도화 추가
		}
		/* 202004 고도화 추가 시작 */
		else if(itemObj == 'btnPartners'){

			if($(this).hasClass('on')){
				$(this).removeClass('on');
			}else{
				$(this).addClass('on');
				$(this).text('메뉴 닫기');
			}
			$('#gnb #btnMenu').removeClass('on');
			$('#gnb .gnb_search').removeClass('on');
			$('#gnb #btnSearch').removeClass('on');
		}
		/* 202004 고도화 추가 끝 */
	});
	$(document).on("click","#gnb .searchBar .btn_del",function(){
	//$('#gnb .searchBar .btn_del').click(function(){
		$('#gnb .searchBar .inp_search').val('');
		$(this).removeClass('on');
	});

}

$(function(){

//	$(window).resize(function(){
//		wrapVisual();//0729 추가
//	});

	//gnbMain();
	//gnb();
	//clickView();
	//inputFile();
	//tabview();
	//setListImg();
	//setListImgM();
});

//function onLoad(){
//	return false;
//}

var tagMultiChoice = {
		init:function(){
			this.tagWrap2 = $('.area_tagList.typeA'); // 무장애여행 리스트
			this.tagBtn2 = this.tagWrap2.find('.tag_list2 li .btn'); // 무장애여행 상단 메뉴
			this.group1 = this.tagWrap2.find('.act_group'); // 무장애여행 관광정보 영역
			this.group2 = this.tagWrap2.find('.inr.inr03'); // 지역정보 영역
			this.group3 = this.tagWrap2.find('.inr.inr04'); // 하단 태그 영역
			this.groupItem1 = this.tagWrap2.find('.act_group li');
			this.groupItem2 = this.tagWrap2.find('.inr.inr03 li');
			this.groupItem3 = this.tagWrap2.find('.inr.inr04 ul');
			this.tagListEv2();
			this.bfGroupEv(); // 무장애여행 > 상단 메뉴, 태그 영역
			this.bfGroupEv2(); // 무장애여행 > 지역
			this.bfGroupEv3(); // 무장애여행 > 하단 태그 영역
		},
		// 무장애여행 관광 정보 상단 메뉴
		tagListEv2:function(){
			this.tagBtn2.click(function(){
				var $this = $(this);
				var $thisSibilgs = $(this).parent().siblings().children();
				var $thisWrap = $('.tag_list2');

/*				if($this.hasClass('active')){
					$this.removeClass('active');
				}else{
					$this.addClass('active');
				}

				$thisSibilgs.removeClass('active');
*/			})
		},
		// 무장애여행 > 태그 메뉴 클릭시 배경 ON
		bfGroupEv:function(){
			var _this = this;

			this.groupItem1.click(function(){
				_this.group1.addClass('on_bg');
				_this.group2.addClass('on_bg');
				_this.group3.removeClass('on_bg');
			});
		},
		// 무장애여행 > 지역영역 클릭시 배경 ON
		bfGroupEv2:function(){
			var _this = this;

			this.groupItem2.click(function(){
				_this.group2.addClass('on_bg');

				if(_this.group1.hasClass('on_bg')){
					_this.group2.addClass('on_bg');
					_this.group3.removeClass('on_bg');
				}

				if(_this.group3.hasClass('on_bg')){
					_this.group2.addClass('on_bg');
					_this.group1.removeClass('on_bg');
				}
			});
		},
		// 무장애여행 > 하단 태그 영역 클릭시 배경 ON
		bfGroupEv3:function(){
			var _this = this;

			this.groupItem3.click(function(){
				var $thisC = $(this).children();

				_this.group3.addClass('on_bg');
				_this.group2.addClass('on_bg');
				_this.group1.removeClass('on_bg');

				if(_this.group3.hasClass('on_bg') && $thisC.hasClass('active')){
					_this.group2.addClass('on_bg');
					_this.group1.removeClass('on_bg')
				}
			});
		}
}

function clickView(){
	$('.total_check .btn_mPop').click(function(){
		$('.box_rightType1').addClass('on');
		$('body').css('overflow','hidden');
	});

	$('.total_check .btn_txt > button').click(function(e){
		if( $(this).attr('id') == '2' && locationx == 0 ) {
			showLoding();
			getLocation();
			return false;
		} else {
			ssortkind = $(this).attr('id');
			$(this).addClass('on');
			$(this).siblings('button').removeClass('on');
			spage = 1;
			getContentList();
			if( $('#blindsearchtype').length == 1){
				$('#blindsearchtype').text($(this).text());
			}	
		}
	});

	$('.tit_mPop .btn_close').click(function(){
		$('.box_rightType1').removeClass('on');
		$('body').css('overflow','');
	});

	$('.box_rightType1 .btn_allview').click(function(){
		$(this).toggleClass('on');
		$(this).parent().parent().next('.supervisor').toggleClass('on');
		$(this).parent().parents().siblings('.supervisor_mod').removeClass('on');
	});

/*
	$(document).on("click",".list_thumType li .btn_view",function(){

		var idx = $( ".list_thumType li .btn_view" ).index( this );

		$(this).toggleClass('on');

		$(".list_thumType li .btn_view").each(function( index ) {
			if( index == idx ) {
				$(this).addClass('on');
			} else {
				$(this).removeClass('on');
			}

		});
	});

	//0518 추가
	$(document).on("click",".list_reply li .btn_view",function(){

		//$(this).siblings('.pop_subMenu').toggleClass('on');

		var idx = $( ".list_reply li .btn_view" ).index( this );

		$(this).toggleClass('on');

		$(".list_reply li .btn_view").each(function( index ) {
			if( index == idx ) {
				$(this).addClass('on');
			} else {
				$(this).removeClass('on');
			}

		});

	});

	$(document).on("click",".tit_cont .btn_titview",function(){
		$(this).toggleClass('on');
	});

	$(document).on("click",".list_board1 .btn_view",function(){

		var idx = $( ".list_board1 .btn_view" ).index( this );

		$(this).toggleClass('on');

		$(".list_board1 .btn_view").each(function( index ) {
			if( index == idx ) {
				$(this).addClass('on');
			} else {
				$(this).removeClass('on');
			}

		});

	});
*/

	/*
	$('body').on('click', function(e){
		var $tgPoint = $(e.target);
		var $popCallBtn = $tgPoint.hasClass('btn_titview');
		var $popCallBtn2 = $tgPoint.hasClass('btn_view');
		var $popArea = $tgPoint.hasClass('pop_subMenu');

		if(!$popCallBtn && !$popCallBtn2 && !$popArea){
			$('.list_thumType li .btn_view').removeClass('on');
			$('.list_reply li .btn_view').removeClass('on');
			$('.tit_cont .btn_titview').removeClass('on');
			$('.list_board1 li .btn_view').removeClass('on');
		}
	})
*/

	// 0705 삭제
	// $('.box_search .inp_search .btn_del').click(function(){
	// 	$('.inp_search .inp_data').val('');
	// });

	// 0705 추가
	/* Sub 공통 검색 del 버튼 이벤트 */
	$('.box_search .inp_search .btn_del').click(function(){
		var value = $('.box_search .inp_search .inp_data').val('');
		$(this).removeClass('on');
	});

	// 0629 삭제
	// $('.area_tagList .list_areaAll li a').click(function(){
	// 	$(this).attr('href','#none');
	// 	$('.area_listView').slideDown(500);
	// });

	// 0628 삭제
	// $('.write_board1 .uploadfile').click(function(){
	// 	$(this).remove();
	// });

	$('.btn_topMove').click(function(){
		$('body,html').animate({scrollTop: '0'},500);
	});

	// 1002 수정
	/* Footer Close */
	$('.footer_mLogo .logo_btm .btn_footClose').click(function(){
		if($(this).closest('footer').hasClass('active')){
			$(this).closest('footer').removeClass('active')
		}else{
			$(this).closest('footer').addClass('active')
	    }
	});

	/** Popup **/
	/* 코스선택 */
//	$('.btn_makeCos').click(function(){
//		//$('.makecos').show();
//		layerPopup.layerShow('cosMake');
//	});

//	$('.wrap_layerpop .btn_close').click(function(){
//		$('.wrap_layerpop').hide();
//	});

	/* 추천, 여행지 : 이미지 모달 팝업 닫기 */
	$('.wrap_layerpop2 .btn_close2').click(function(){
		$('.wrap_layerpop2').hide();
		$('.wrap_layerpop2').removeClass('active');
		$('.layerpop').removeAttr('style');
		if(openLayerTarget != 'undifined' || openLayerTarget != 'null'){
			openLayerTarget.focus();
		}
	});

	/* 여행지 : (더보기) 이미지 모달 팝업 열기 */
/*	$('.area_imgView .btn_more').click(function(){
		$('.wrap_layerpop2').show();
		$('.wrap_layerpop2').removeClass('view');
		$('.wrap_layerpop2').addClass('active');
		$('.layerpop').css('top', (($(window).height() - $('.layerpop').height())/2) + Number($(window).scrollTop())); // 0823 수정
	});
*/
	/* 여행지 : 이미지 모달 팝업 열기 */
/*	$(document).on("click",".area_imgView ul li button",function(){
		$('.wrap_layerpop2').show();
		$('.wrap_layerpop2').removeClass('view');
		$('.wrap_layerpop2').addClass('active'); // 0712 추가
		$('.layerpop').css('top', (($(window).height() - $('.layerpop').height())/2) + Number($(window).scrollTop())); // 0712 추가
	});
*/
	/* 올해의 관광도시 : 모달 팝업 열기 */
	$('#thisyeartourarea').click(function(){
		layerPopup.layerShow('popTc');
	});

	/* 굿컨텐츠 : 모달 팝업 열기 */
	$('#goodContents').click(function(){
		layerPopup.layerShow('popGoodct');
	});

	$('#goodContentsm').click(function(){
		layerPopup.layerShow('popGoodct');
	});

//	$('.tit_cont .area_tagTop .btn_more').click(function(){
//		var objChk = $(this);

//		if(objChk.hasClass('on')){
//			objChk.children('a').text('더보기');
//			objChk.removeClass('on');
//			if( objChk.attr('kind') == 'Other') {
//				TagAreaResize(othertagareaheight);
//			} else {
//				TagAreaResize(tagareaheight);
//			}

//		}
//		else{
//			objChk.children('a').text('닫기');
//			objChk.addClass('on');
//			if( objChk.attr('kind') == 'Other') {
//				TagAreaResize(othertagheight);
//			} else {
//				TagAreaResize(tagheight);
//			}
//		}
//	});

	$('.wrap_layerpop .btn_close3').click(function(){
		//$('.wrap_layerpop').hide();
		$('#popShare').hide();
	});

//	$('.btn_share').click(function(){
//		$('.pop_share').show();
//	});

	//0521 추가
//	$('.zone_cont .list_sub .btn_more').click(function(){
//		var objChk = $(this);
//		if(objChk.hasClass('on')){
//			objChk.children('a').text('더보기');
//			objChk.removeClass('on');
//		}
//		else{
//			objChk.children('a').text('닫기');
//			objChk.addClass('on');
//		}
//	});

//	$('.list_banner .btn_navi').click(function(){
//		$('.pop_navi').show();
//	});

	$('.btn_mapMore').click(function(){
		$('.layer_mapView').show().addClass('on');
	});

	$('.layer_mapView .btn_close2').click(function(){
		$('.layer_mapView').hide().removeClass('on'); // 0827 수정
	    $('.wrap_layerpop2').removeClass('active'); // 0712 추가
	});

	//0605 추가
	// 객실안내 toogle
	$('.title_btn_toggle button').click(function(){

		var btnParent = $(this).parents();

		if(btnParent.hasClass('active')){
			btnParent.removeClass('active')
		}else{
			btnParent.addClass('active')
		}

	});


}

//0816 수정
/* --------------------------------------------------------------------- */
/* 서브 상세, 목록 페이지 더보기 영역(타이틀 더보기, 댓글 더보기, 썸네일 리스트 더보기)
/* (더보기 버튼 클릭시 레이어팝업 노출)
/* --------------------------------------------------------------------- */
var btnMore = {
	init:function(){
		this.btnMoreEv();
		this.focusOut(); // 1224 추가
		this.bodyAreaEv();
	},
	btnMoreEv:function(){
		$(document).on('click', '.list_thumType > li .btn_view, .list_reply li .btn_view, .tit_cont .btn_titview, .list_board1 .btn_view', function(){
			if($(this).hasClass('on')){
				$(this).removeClass('on')
				$('.dimmed2').remove();
			}else{
				$(this).addClass('on').attr('title', '닫기'); // 1224 title 값 변경
				$('body').append('<div class="dimmed2"></div>');
			}
			// 20210105 추가
			if($(this).hasClass('on')){
				$('.pop_subMenu').attr('tabindex', 0).focus();
			}
		});
	},
	// 1224 추가
	focusOut:function(){
		$(document).on("focusout",".pop_subMenu ul:last-of-type li:last-child", function(){
			$(this).parent().parent().prev().removeClass('on');
			$(this).parent().parent().prev().attr('title', '열기');//20201210 추가
			$('.dimmed2').length && $('.dimmed2').remove();
		});
	},
	bodyAreaEv:function(){
		$(document).on('click touchend', '.dimmed2', function(e){
			e.preventDefault()
			$('.list_thumType li .btn_view').removeClass('on').attr('title', '열기'); // 1224 title 값 변경
			$('.list_reply li .btn_view').removeClass('on').attr('title', '열기'); // 1224 title 값 변경
			$('.tit_cont .btn_titview').removeClass('on').attr('title', '열기'); // 1224 title 값 변경
			$('.list_board1 li .btn_view').removeClass('on').attr('title', '열기'); // 1224 title 값 변경
			$('.guide_book_list .btn_view').removeClass('on').attr('title', '열기'); // 1224 title 값 변경

			$(this).remove();
		})
	}
}


//0905 수정
function tabview(){
	var selectedEl = '<span class="selected_text blind">선택됨</span>';
	$('.list_zone .swiper-slide.on').append(selectedEl)
	$('.list_zone .swiper-slide').click(function(){
		var thisSibilgs = $(this).siblings('.swiper-slide');
		var listSubs = thisSibilgs.find('.list_sub');

		$(this).addClass('on');
		$(this).append(selectedEl);
		thisSibilgs.removeClass('on').find('.selected_text').remove();
		listSubs.removeClass('on');

		var itemChk = $(this).attr('id');
		var itemNum = itemChk.substr('4');

		// 0905 수정
		$('.zone_cont').removeClass('zoneCont1').attr('class', 'zoneCont' + itemNum).addClass('zone_cont').addClass('on');

		var listSub = $('.zone_cont').find('.list_sub');
		var btnMore = listSub.find('.btn_more');

		// 0904 추가
		if(listSub.hasClass('on')){
			listSub.removeClass('on');
			btnMore.text('더보기');
		}
		
        var areaCode = $(this).attr('data-areaCode');
        getAreaTabView(areaCode, MainOtdid);

		mainAreaMore(); // 0904 추가
	});

	var set_zoneTime;
	$('.list_zone .swiper-slide').mouseover(function(){
		var itemObj = $(this);
		var itemChk = $(this).attr('id');
		var itemNum = itemChk.substr('4'); // 0904 수정
		var areacode = $(this).attr('data-areaCode');

		set_zoneTime = setTimeout(function(){
			itemObj.addClass('on');
			itemObj.siblings('.swiper-slide').removeClass('on');
			$('.zone_cont').removeClass('on');
			$('.zoneCont'+itemNum).addClass('on');

			// 0905 추가
			$('.zone_cont').removeClass('zoneCont1').attr('class', 'zoneCont' + itemNum).addClass('zone_cont').addClass('on');

			mainAreaMore(); // 0904 추가
//			getAreaShowcase(areacode, MainOtdid);

		},3000);
	});

	$('.list_zone .swiper-slide').mouseout(function(){
		clearTimeout(set_zoneTime);
	});
}

function setListImg(){
	var itemObj = $('.area_imgView > ul > li');
	var itemNum = itemObj.length;

	for (var i = 0; i < itemNum; i++) {
		var imgObj = itemObj.eq(i).children('img');

		var itemWidth = imgObj.innerWidth();
		var itemWidthEnd = itemWidth/2;
		var itemHeight = imgObj.innerHeight();
		var itemHeightEnd = itemHeight/2;

		imgObj.css('left','50%');
		imgObj.css('margin-left',-itemWidthEnd);
		imgObj.css('top','50%');
		imgObj.css('margin-top',-itemHeightEnd);
	}
}

function setListImgM(){
	var itemObj = $('.area_imgView_m .swiper-slide');
	var itemNum = itemObj.length;

	for (var i = 0; i < itemNum; i++) {
		var imgObj = itemObj.eq(i).children('img');

		var itemWidth = imgObj.innerWidth();
		var itemWidthEnd = itemWidth/2;
		var itemHeight = imgObj.innerHeight();
		var itemHeightEnd = itemHeight/2;

		imgObj.css('left','50%');
		imgObj.css('margin-left',-itemWidthEnd);
		imgObj.css('top','50%');
		imgObj.css('margin-top',-itemHeightEnd);
	}
}

//input file
function inputFile(){

	var fileTarget = $('.file_inp .hidden');

    fileTarget.on('change', function(){
        if(window.FileReader){
            var filename = $(this)[0].files[0].name;
        } else {
            var filename = $(this).val().split('/').pop().split('\\').pop();
        }

        $(this).parent().siblings('.uploadfile').val(filename);
    });
}

/* 0619 추가 */
/* 이미지 슬라이드 비활성화 */
function imgBtnDb(){
	var btnDb = $('.pop_print .img_typeBox > div button');
	var btnDb2 = $('.pop_print .wrap_contView .area_imgView > ul li button');

	btnDb.attr('disabled', 'disabled');
	btnDb2.attr('disabled', 'disabled');
}

/* 0625 추가 */
/* 무장애여행 Tab Menu */
var bFreeTab = {
	init:function(){
		this.menu = $('.bfree_menu li');
		this.addEvent();
	},
	addEvent:function(){
		this.menu.on('click',function(){
			var $this = $(this)
			,$thisIndex = $this.index()
			,$thisP = $this.parent()
			,$thisSB = $thisP.find('li')
			,$thisPP = $thisP.parent()
			,$cont = $thisPP.find('.bfree_cont');

			$thisSB.removeClass('active');
			$this.addClass('active');

			$cont.removeClass('active');
			$cont.eq($thisIndex).addClass('active');
		});
	}
}

/* 0625 추가 */
/* Accordion */
function bFreeAcc(){
	$('.js_bfree_acc .top_c').click(function(){
		if($('+.bot_c',this).css('display')=='none'){
			$('.bot_c').slideUp();
			$('+.bot_c',this).slideDown(300);
			$('.js_bfree_acc .top_c').removeClass('active');
			$(this).addClass('active');
		}else{
			$('+.bot_c',this).slideUp(300);
			$(this).removeClass('active');
		}
	})
}

//0710 추가
/* --------------------------------------------------------------------- */
/* 추천 메인
/* img tag를 background-size:cover 처럼 css 적용 ( IE, Edge 호환 그 외 브라우저는 CSS : div > img{object-fit:cover} 적용)
/* --------------------------------------------------------------------- */
if ('objectFit' in document.documentElement.style === false) {
	// assign HTMLCollection with parents of images with objectFit to variable
	var container = $('.box_remPhoto img');// .box_remPhoto.photo1 .img2
	// Loop through HTMLCollection
	for (var i = 0; i < container.length; i++) {
		// Asign image source to variable
		var imageSource = container[i].querySelector('img').src;
		// Hide image
		container[i].querySelector('img').style.display = 'none';
		// Add background-size: cover
		container[i].style.backgroundSize = 'cover';
		// Add background-image: and put image source here
		container[i].style.backgroundImage = 'url(' + imageSource + ')';
		// Add background-position: center center
		container[i].style.backgroundPosition = 'center center';
	}
}


//1101 수정
/* 공지사항 슬라이더 */
function swiperNotice(){
	var swiper = new Swiper('.notice_slider .swiper-container', {
		loop: true, // 1101 추가
		direction: 'vertical',
		navigation: {
			nextEl: '.notice_slider .swiper-button-next',
			prevEl: '.notice_slider .swiper-button-prev',
		},
		autoplay: {
			delay: 2000,
		},
		keyboard: {
			enabled: true,
			onlyInViewport: true,
		},
		on:{
			init:function(){
				swiperTabindex('.notice_slider', this.activeIndex);
			},
			slideChangeTransitionEnd:function(){
				swiperTabindex('.notice_slider', this.activeIndex);
			}
		}
	});
	//swiper.keyboard.disable();
	$('.notice_slider .swiper-container').on('focusin', function(){
		$(this).closest('.notice_slider').addClass('active');
		swiper.autoplay.stop();
	})
	// (재생, 정지) 버튼 클릭 이벤트
	$(document).on('click', '.notice_slider .paging button', function(){
		if($(this).closest('.notice_slider').hasClass('active')){
			$(this).closest('.notice_slider').removeClass('active');
			swiper.autoplay.start();
		}else{
			$(this).closest('.notice_slider').addClass('active');
			swiper.autoplay.stop();
		}
	});
	// (이전, 다음) 버튼 클릭 이벤트
	$(document).on('click touchend', '.notice_slider .swiper-button-prev, .notice_slider .swiper-button-next', function(){
		if($('.notice_slider').addClass('active')){
			swiper.autoplay.stop();
		}
	});
	// (이전, 다음) 버튼 클릭 이벤트
	$(document).on('click', '.notice_slider .swiper-button-prev, .notice_slider .swiper-button-next', function(){
		if($('.notice_slider').addClass('active')){
			swiper.autoplay.stop();
		}
	});
	// 텍스트 영역 마우스 이벤트 (PC 화면)
	$(document).on('click mouseover', '.notice_slider .swiper-container a', function(){
		if($('.notice_slider').addClass('active')){
			swiper.autoplay.stop();
		}
	});
}

//190329 레이어팝업 수정
/* Layer Popup */

var layerjoin = null;

var layerPopup = {
	init:function(){
		this.dimClickEv();
		this.activeBtn;
	},
	layerShow:function(targetLayer){
		layerjoin = document.activeElement
		this.activeBtn = $(document.activeElement);
		this.wrap = $('#'+ targetLayer);
		if (location.href.indexOf("/main/main.do") == -1 || targetLayer !== "safetyStay1" || this.wrap.filter('.dimmed') != null) {// 2021-09-28, dohyeong. 임시로 수정.. (추후 재수정 예정;;;)
			this.wrap.append('<div class="dimmed"></div>');
		}
		this.popup = this.wrap.find('.layerpop');
//		this.popup.attr('tabindex', -1).focus();

		// (공통)더보기
		if(this.wrap.show()){
			$('.list_thumType li .btn_view').removeClass('on');
			$('.list_reply li .btn_view').removeClass('on');
			$('.tit_cont .btn_titview').removeClass('on');
			$('.list_board1 li .btn_view').removeClass('on');
			this.popup.attr('tabindex', 0).focus();//20210105 수정
		}

		function popResize(){
			this.wrap = $('#'+ targetLayer);
			this.popup = this.wrap.find('.layerpop');

			var winScrollTop = $(window).scrollTop(),
			winWidth = $(window).width(),
			winHeight = $(window).height();

			var popWidthHalf = this.popup.width()/2,
			popHeightHalf = this.popup.height()/2, // 0203추가
			popWidth = this.popup.width(),
			popHeight = this.popup.outerHeight(),
			popupTop = (winScrollTop + (winHeight - popHeight)/2);

			// default x, y
			this.popup.css({ //	0203 수정
				'left' : '50%',
				'top' : '50%',
				'margin-left' : '-' + popWidthHalf + 'px',
				'margin-top' : '-' + popHeightHalf + 'px'
			});

			// window height > popup height
/*			if(winHeight > popHeight){
				$('body').css({
					'overflow' : 'hidden'
				});
			}
*/
			// pc
			if(winWidth > 1023){
				// window height < popup height
				if(winHeight < popHeight){
						this.popup.css({
							'top' : popHeightHalf + 'px'
						});
				}
			}

			// mobile
			if(winWidth <= 1023){
				// window width > popup width
				if(winWidth >= popWidth){
					this.popup.css({
						'left' : '50%',
						'right' : 'inherit',
						'margin-left' : '-' + popWidthHalf + 'px'
					});
				}
				// window height < popup height
				if(winHeight < popHeight){
					if(this.popup.parent().attr("id") != "popMemberLogin") {
						this.popup.css({
							'top' : winScrollTop + 15 + 'px'
						});
					}
					
					if(this.popup.parent().attr("id") == "popCoupon" ||
					this.popup.parent().attr("id") == "infoForm" ||
					this.popup.parent().attr("id") == "missionPop" ||
					this.popup.parent().attr("id") == "restaurant_report" ||
					this.popup.parent().attr("id") == "travel100Detail" ||
					this.popup.parent().attr("id") == "popMemberLogin"){
						this.popup.css({
							'top' : '50%'
						});
					}
				}
			}
		}
		popResize();

		$(window).resize(function(){
			popResize();
		})
		// 마이페이지 > 코스 > 이용가이드 레이어팝업 slider
		popCugSlider();
	},
	layerHide:function(targetLayer){
		if(targetLayer)
			this.wrap = $('#'+ targetLayer);
		this.wrap.removeAttr('tabindex').hide();
		$('.dimmed').remove();
		$('.dimmed2').remove();
		this.activeBtn.focus();
		
		if(targetLayer == 'detailPop')
			$("meta[name=viewport]").attr("content", "width-device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no");
		layerjoin.focus();
		$('body').css({
			'overflow' : 'auto'
		});

		if(beforefocus != undefined){
			if($(beforefocus).closest('.pop_subMenu').attr('tabindex') == 0){
				$(beforefocus).closest('.pop_subMenu').siblings('button').addClass('on').attr('title', '닫기');
				$('body').append('<div class="dimmed2"></div>');
			}
			$(beforefocus).focus();
		}
	},
	dimClickEv:function(){
		$(document).on('click touchend', '.dimmed', function(){
			$('.wrap_layerpop').hide();
			$(this).remove();
			$('.dimmed2').remove();

			$('body').css({
				'overflow' : 'auto'
			});
		})
	},
	layerUpdate:function(targetLayer){
		function popResize(){
			this.wrap = $('#'+ targetLayer);
			this.popup = this.wrap.find('.layerpop');

			var winScrollTop = $(window).scrollTop(),
				winWidth = $(window).width(),
				winHeight = $(window).height();

			var popWidthHalf = this.popup.width()/2,
				popHeightHalf = this.popup.outerHeight()/2, // 0203추가
				popWidth = this.popup.width(),
				popHeight = this.popup.outerHeight(),
				popupTop = (winScrollTop + (winHeight - popHeight)/2);

			// default x, y
			this.popup.css({ //	0203 수정
				'left' : '50%',
				'top' : '50%',
				'margin-left' : '-' + popWidthHalf + 'px',
				'margin-top' : '-' + popHeightHalf + 'px'
			});

			// window height > popup height
			/*			if(winHeight > popHeight){
                            $('body').css({
                                'overflow' : 'hidden'
                            });
                        }
            */
			// pc
			if(winWidth > 1023){
				// window height < popup height
				if(winHeight < popHeight){
					this.popup.css({
						'top' : popHeightHalf + 'px'
					});
				}
			}

			// mobile
			if(winWidth <= 1023){
				// window width > popup width
				if(winWidth >= popWidth){
					this.popup.css({
						'left' : '50%',
						'right' : 'inherit',
						'margin-left' : '-' + popWidthHalf + 'px'
					});
				}
				// window height < popup height
				if(winHeight < popHeight){
					this.popup.css({
						'top' : winScrollTop + 15 + 'px'
					});

					if(this.popup.parent().attr("id") == "popCoupon" ||
						this.popup.parent().attr("id") == "infoForm" ||
						this.popup.parent().attr("id") == "missionPop" ||
						this.popup.parent().attr("id") == "travel100Detail"){
						this.popup.css({
							'top' : '50%'
						});
					}
				}
			}
		}
		popResize();
	}
}

var MainTablayerPopup = {
	init:function(){
		this.dimClickEv();
		this.activeBtn;
	},
	layerShow:function(targetLayer,input){
		this.activeBtn = $(document.activeElement);
		this.wrap = $('#'+ targetLayer);
		if (location.href.indexOf("/main/main.do") == -1 || targetLayer !== "safetyStay1" || this.wrap.filter('.dimmed') != null) {// 2021-09-28, dohyeong. 임시로 수정.. (추후 재수정 예정;;;)
			this.wrap.append('<div class="dimmed"></div>');
		}
		this.popup = this.wrap.find('.layerpop');

		// (공통)더보기
		if(this.wrap.show()){
			$('.list_thumType li .btn_view').removeClass('on');
			$('.list_reply li .btn_view').removeClass('on');
			$('.tit_cont .btn_titview').removeClass('on');
			$('.list_board1 li .btn_view').removeClass('on');
		}

		function popResize(){
			this.wrap = $('#'+ targetLayer);
			this.wrap.css('position','absolute');
			this.wrap2 = $('#'+ input);
			this.popup = this.wrap.find('.layerpop');

			var popupTop = wrap2.offset().top;
			
			var height1 = popupTop+wrap2.height();
			var height2 = height1 /2;
			var height3 = $(".main_mocont").height();
			
			var topValue;
			if ($("body").hasClass("main_mo")) {
				topValue = height3 - 200;
				$("#frmFoc").nextAll().each(function() {
					topValue -= $(this).height();
				});
				topValue;
			} else {
				topValue = popupTop+wrap2.height()+5;
			}
			
			// default x, y 
			this.popup.css({ //	0203 수정
				'left' : '50%',
				'top' : topValue + 'px',
			});
			
		}
		popResize();

		$(window).resize(function(){
			popResize();
		})
		// 마이페이지 > 코스 > 이용가이드 레이어팝업 slider
		popCugSlider();
	},
	layerHide:function(targetLayer){
		this.wrap.removeAttr('tabindex').hide();
		$('.dimmed').remove();
		$('.dimmed2').remove();
		this.activeBtn.focus();
		
		if(targetLayer == 'detailPop')
			$("meta[name=viewport]").attr("content", "width-device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no");
			
		$('body').css({
			'overflow' : 'auto'
		});
	},
	dimClickEv:function(){
		$(document).on('click touchend', '.dimmed', function(){
			$('.wrap_layerpop').hide();
			$(this).remove();
			$('.dimmed2').remove();

			$('body').css({
				'overflow' : 'auto'
			});
		})
	}
}


/*1002 추가 */
/* 상세 페이지 정보 영역 높이 값 */
function detailHeight(){
	$('.area_txtView.top .btn_more').click(function(){
		var $thisP = $(this).parent().parent(); // 202004 고도화 수정

		if($thisP.hasClass('on')){
			$thisP.removeClass('on');
			$(this).children().text('더보기');
		}else{
			$thisP.addClass('on');
			$(this).children().text('닫기');
		}
	});

	$('.area_txtView.bottom .btn_more').click(function(){
		var $thisP = $(this).parent().parent();

		if($thisP.hasClass('on')){
			$thisP.removeClass('on');
			$(this).children().text('더보기');
		}else{
			$thisP.addClass('on');
			$(this).children().text('닫기');
		}
	});

	function detailHeightResize(){
		var windowW = $(window).width(),
		wrapTop = $('.area_txtView.top'),
		wrapBottom = $('.area_txtView.bottom'),
		topInner = wrapTop.find('.inr'),
		bottomInner = wrapBottom.find('.inr'),
		btnTop = wrapTop.find('.cont_more'),
		btnBottom = wrapBottom.find('.cont_more'),
		topInnerH = topInner.height(),
		bottomInnerH = bottomInner.height();
		// pc
		if(windowW >= 1024){
			// 개요 영역
			if(topInnerH > 150){// 202004 고도화 수정
				btnTop.show();
				wrapTop.find('.inr_wrap').css('overflow','hidden').css('height','150px');// 202004 고도화 수정
				wrapTop.css('padding-bottom','54px');
			}else{
				btnTop.hide();
				wrapTop.find('.inr_wrap').css('overflow','visible').css('height','auto');
				wrapTop.css('padding-bottom','0');
			}

			// 상세 정보 영역
			if(bottomInnerH > 150){
				btnBottom.show();
				wrapBottom.find('.inr_wrap').css('overflow','hidden').css('height','150px');
				wrapBottom.css('padding-bottom','54px');
			}else{
				btnBottom.hide();
				wrapBottom.find('.inr_wrap').css('overflow','visible').css('height','auto');
				wrapBottom.css('padding-bottom','0');
			}
		}

		// mobile
		if(windowW <= 1023){
			// 개요 영역
			if(topInnerH > 110){
				btnTop.show();
				wrapTop.find('.inr_wrap').css('overflow','hidden').css('height','110px');
				wrapTop.css('padding-bottom','50px');
				$('.new_popup.pop_print .wrap_contView .area_txtView').css('padding-bottom','0'); // 프린트 페이지
			}else {
				btnTop.hide();
				wrapTop.find('.inr_wrap').css('overflow','visible').css('height','auto');
				wrapTop.css('padding-bottom','0');
			}
			// 상세 정보 영역
			if(bottomInnerH > 200){
				btnBottom.show();
				wrapBottom.find('.inr_wrap').css('overflow','hidden').css('height','195px');//0821 수정
				wrapBottom.css('padding-bottom','50px');
			}else{
				btnBottom.hide();
				wrapBottom.find('.inr_wrap').css('overflow','visible').css('height','auto');
				wrapBottom.css('padding-bottom','0');
			}
		}
	}
	detailHeightResize();

	$(window).resize(function(){
		$('.area_txtView').removeClass('on');
		detailHeightResize();
	});
}

//0830 추가
/* 메인페이지 > 태그 리스트 > 버튼 더보기 이벤트 */
function mainTagMore(){
	$('.top_cont .top_leftCont .area_tag .btn_more').click(function(){
		var $this = $(this);
		var $thisP = $this.parent();

		if($thisP.hasClass('on')){
			$thisP.removeClass('on');
			$(this).text('더보기');
		}else{
			$thisP.addClass('on');
			$(this).text('닫기');
		}
	});

	function tagMore(){
		var wrap = $('.top_cont .area_tag')
		,inner = wrap.find('.inr')
		,innerS = wrap.find('ul')
		,innerSheight = innerS.height()
		,btnMore = wrap.find('.btn_more')
		,windowW = $(window).width();

		if(windowW < 1023){
			if(innerSheight > 45){
				btnMore.css('display', 'block');
				wrap.css('padding-right', '55px');
				inner.css('overflow', 'hidden').css('height', '44px');
			}else if(innerSheight < 45){
				btnMore.css('display', 'none');
				wrap.css('padding-right', '0px');
				inner.css('overflow', 'visible').css('height', 'auto');
			}
		}else if(windowW > 1023){
			btnMore.css('display', 'none');
			wrap.css('padding-right', '0px');
			inner.css('overflow', 'visible').css('height', 'auto');
		}
	}
	tagMore();

	$(window).resize(function(){
		tagMore();
	});
}

function mainAreaMore(){
	var $wrap = $('.zone_cont')
		,$listSub = $wrap.find('.list_sub')
		,$inner = $listSub.find('.inr')
		,$ul = $inner.find('ul')
		,$ulHeight = $ul.height()
		,$thisBtn = $listSub.find('.btn_more')
		,windowW = $(window).width();

	/* mobile */
	if(windowW < 1023){
		$inner.css('overflow', 'hidden').css('height', '40px');
		if($ulHeight > 20){
			$thisBtn.css('display', 'block');
			$listSub.css('padding-right', '70px');
			$inner.css('height', '40px');
		}else if($ulHeight <= 20){
				$thisBtn.css('display', 'none');
				$inner.css('height', '20px'); // 한줄 : height:20px 적용
		}
	}
	/* pc */
	if(windowW > 1023){
		$inner.css('overflow', 'hidden').css('height', '25px');
		if($ulHeight > 25){
			$thisBtn.css('display', 'block');
			$listSub.css('padding-right', '120px');
		}else if($ulHeight <= 25){
			$thisBtn.css('display', 'none');
			$listSub.css('padding-right', '40px');
			$inner.css('overflow', 'hidden').css('height', '25px');
		}
	}

	$thisBtn.off('click'); // 0904 추가

	$thisBtn.on('click',function(){
		var $this = $(this);
		var $Wrap = $this.closest('.zone_cont');
		var $listSub = $Wrap.find('.list_sub');

		if($listSub.hasClass('on')){
			$listSub.removeClass('on')
			$this.text('더보기');
		}else{
			$listSub.addClass('on')
			$this.text('닫기');
		}
		
		if(mobileYn == 'Y') {
			mainSwiper.updateAutoHeight();
		}
	})
}

// 0830 추가
/*
서브 메인 페이지 > 태그 리스트 더보기 이벤트
(추천,여행지,코스,축제,타부서)
*/
function subMainTagMore(){
	$('.area_tagTop .btn_more').click(function(){
		var $this = $(this);
		var $thisP = $this.parent();

		if($thisP.hasClass('on')){
			$thisP.removeClass('on');
			$(this).text('더보기');
		}else{
			$thisP.addClass('on');
			$(this).text('닫기');
		}
	});

	function tagMore(){
		var wrap = $('.area_tagTop')
		,inner = wrap.find('.inr')
		,innerS = wrap.find('ul')
		,innerSheight = innerS.height()
		,btnMore = wrap.find('.btn_more')
		,windowW = $(window).width();

		/* mobile */
		if(windowW < 1023){
			if(innerSheight > 54){
				btnMore.css('display', 'block');
				wrap.css('padding-right', '65px');
				inner.css('height', '54px');
			}else if(innerSheight <= 54){
				btnMore.css('display', 'none');
				wrap.css('padding-right', '0px');
				if(innerSheight > 36){
					inner.css('height', '54px');
				}else if(innerSheight <= 36){
					inner.css('height', '27px');
				}
			}
		}
		/* pc */
		if(windowW > 1023){
			inner.css('height', '72px');
			if(innerSheight > 72){
				btnMore.css('display', 'block');
				wrap.css('padding-right', '93px');
			}else if(innerSheight <= 72){
				btnMore.css('display', 'none');
				wrap.css('padding-right', '0px');
				innerSheight = innerS.height()
				if(innerSheight > 36){
					inner.css('height', '72px');
				}else if(innerSheight <= 36){
					inner.css('height', '36px');
				}
			}
		}
	}
	tagMore();

	$(window).resize(function(){
		tagMore();
	});
}


//1002 추가
/* 추천 상세 - 공공누리 영역 (모바일 화면) */
function areaLic(){
	var wrap = $('.area_lic');
	var btn = wrap.find('.btn_more');

	btn.on('click',function(){
		if(wrap.hasClass('on')){
			wrap.removeClass('on');
			btn.text('더보기');
		}else{
			wrap.addClass('on');
			btn.text('닫기');
		}
	});
}


//1010 추가
/* 서브 상세 - 담당부서 영역 */
function btnTeam(){
	$('.btm_team .btn_onoff').click(function(){
		var $this = $(this);
		var $thisP = $this.parent();

		if($thisP.hasClass('on')){
			$thisP.removeClass('on');
			$(this).children().text('더보기');
		}else{
			$thisP.addClass('on');
			$(this).children().text('닫기');
		}
	});

	function btnTeamResize(){
		var wrap = $('.btm_team')
		,inner = wrap.find('.inr')
		,innerHeight = inner.height()
		,btnOnOff = wrap.find('.btn_onoff')
		,windowW = $(window).width();

		/* mobile */
		if(windowW < 1023){
			if(innerHeight > 60){
				btnOnOff.css('display', 'block');
			}else{
				btnOnOff.css('display', 'none');
			}
		}
		/* pc */
		if(windowW > 1023){
			if(innerHeight > 50){
				btnOnOff.css('display', 'block');
			}else{
				btnOnOff.css('display', 'none');
			}
		}
	}
	btnTeamResize();

	$(window).resize(function(){
		btnTeamResize();
	});
}


//1228 수정
/* pc : 메인 > 홍보 배너 슬라이드 */
function marketingSlider(){
	function mkSwiper(){
		var swiper = new Swiper('.banner_pcTop .swiper-container', {
			loop: true,
			pagination: {
				el: '.banner_pcTop .swiper-pagination',
				type: 'bullets',
				clickable: true,
				renderBullet: function (index, className) {
					return '<button type="button" class="' + className + '"><span class="blind">' + (index + 1) + '번째 슬라이드 보기</span></button>';
				}
			},
			autoplay: {
				delay: 3000,
			},
			on:{
				init:function(){
					swiperTabindex('.banner_pcTop', this.activeIndex);
				},
				slideChangeTransitionEnd:function(){
					swiperTabindex('.banner_pcTop', this.activeIndex);
				} ,
				touchStart:function(){
					var html = '<div class="drag_tag" id="youtubedrag"></div>';
					$('.youtube_area').prepend(html);
				},
				touchEnd:function(){
					$('#youtubedrag').remove();
				}
			},
			lazy : {
				loadPrevNext : true
			},
		});

		$('.banner_pcTop .swiper-wrapper').on('focusin', function(){
			$(this).closest('.banner_pcTop').addClass('active');
			swiper.autoplay.stop();
		})

		$('.banner_pcTop .btn_autoArea button').on('click', function(){
			if($(this).closest('.banner_pcTop').hasClass('active')){
				$(this).closest('.banner_pcTop').removeClass('active');
				swiper.autoplay.start();
			}else{
				$(this).closest('.banner_pcTop').addClass('active');
				swiper.autoplay.stop();
			}
		});

		$('.banner_pcTop .swiper-pagination button').on('click', function(){
			if($('.banner_pcTop').addClass('active')){
				swiper.autoplay.stop();
			}
		});

		$(document).on('click mouseover', '.banner_pcTop .swiper-container', function(){
			if($('.banner_pcTop').addClass('active')){
				swiper.autoplay.stop();
			}
		}); }
		mkSwiper();

		$(window).resize(function(){
			mkSwiper();
		});
	}
// 1211 수정
/* mobile : 메인 > 홍보 배너 슬라이드 */
function marketingSliderM(){
	function mkSwiper(){
		var swiper = new Swiper('.banner_mobileTop.slider.slider .swiper-container', {
			nested: true,
			loop: true,
			pagination: {
				el: '.banner_mobileTop.slider.slider .swiper-pagination',
				type: 'bullets',
				clickable: true,
				renderBullet: function (index, className) {
					return '<button type="button" class="' + className + '"><span class="blind">' + (index + 1) + '번째 슬라이드 보기</span></button>';
				}
			},
			autoplay: {
				delay: 3000,
			},
			on:{
				init:function(){
					swiperTabindex('.banner_mobileTop', this.activeIndex);
				},
				slideChangeTransitionEnd:function(){
					swiperTabindex('.banner_mobileTop', this.activeIndex);
				}
			}
		});

		$('.banner_mobileTop.slider .btn_autoArea button').on('click', function(){
			if($(this).closest('.banner_mobileTop.slider').hasClass('active')){
				$(this).closest('.banner_mobileTop.slider').removeClass('active');
				swiper.autoplay.start();
			}else{
				$(this).closest('.banner_mobileTop.slider').addClass('active');
				swiper.autoplay.stop();
			}
		});

		$(document).on('click touchend', '.banner_mobileTop.slider .swiper-container, .banner_mobileTop.slider .swiper-pagination', function(){
			if($('.banner_mobileTop.slider').addClass('active')){
				swiper.autoplay.stop();
			}
		});
	}
	mkSwiper();

	//0418삭제$(window).resize(function(){
	//	mkSwiper();
	//});
}

// 1228 수정
/* mobile : 메인 > 홍보 배너 슬라이드 */
function marketingSliderM2(){
	function mkSwiper(){
		var swiper = new Swiper('.banner_mobileTop.slider2 .swiper-container', {
			loop: true,
			pagination: {
				el: '.banner_mobileTop.slider2 .swiper-pagination',
				type: 'bullets',
				clickable: true,
				renderBullet: function (index, className) {
					return '<button type="button" class="' + className + '"><span class="blind">' + (index + 1) + '번째 슬라이드 보기</span></button>';
				}
			},
			/* 0701 메인 배너 자동롤링 숨김처리
			autoplay: {
				delay: 3000,
			},*/
			on:{
				init:function(){
					swiperTabindex('.banner_mobileTop', this.activeIndex);
				},
				slideChangeTransitionEnd:function(){
					swiperTabindex('.banner_mobileTop', this.activeIndex);
				}
			}
		});

		$('.banner_mobileTop.slider2 .btn_autoArea button').on('click', function(){
			if($(this).closest('.banner_mobileTop.slider2').hasClass('active')){
				$(this).closest('.banner_mobileTop.slider2').removeClass('active');
				swiper.autoplay.start();
			}else{
				$(this).closest('.banner_mobileTop.slider2').addClass('active');
				swiper.autoplay.stop();
			}
		});

		$(document).on('click touchend', '.banner_mobileTop.slider2 .swiper-container, .banner_mobileTop.slider2 .swiper-pagination', function(){
			if($('.banner_mobileTop.slider2').addClass('active')){
				swiper.autoplay.stop();
			}
		});
	}
	mkSwiper();

	//0418삭제$(window).resize(function(){
	//	mkSwiper();
	//});
}

//1102 추가
/* 파트너 > 회원정보변경 > Tab Menu */
var partnersTabEv = {
		init:function(){
			this.$tabMenu = $('.pt_form_wrap .tab_menu li');
			this.$tabCont = $('.pt_form_wrap .tab_cont');
			this.act();
		},
		act:function(){
			var _this = this;
			this.$tabMenu.on('click',function(e){
				e.preventDefault();

				var $this = $(this);
				var $index = $this.index();

				_this.$tabMenu.removeClass('active');
				$this.addClass('active');
				_this.$tabCont.removeClass('active');
				_this.$tabCont.eq($index).addClass('active');
			});
		}
}

// 1107 추가
/* 마이페이지 > 관광정보 수정 > 약관보기 */
function termsView(){
	var wrap = $('.attention_area');
	var btn = wrap.find('.terms_view');
	var cont = wrap.find('.terms_cont');

	btn.on('click',function(e){
		e.preventDefault();

		if($(this).hasClass('active')){
			$(this).removeClass('active');
			btn.text('약관보기');
		}else{
			$(this).addClass('active');
			btn.text('약관닫기');
		}
	});
}

/* 1115 추가 */
/* 파트너스 > 채널 제휴 신청하기 >Accordion */
function ptChannelAcc(){
	$('.js_ptChannel .top_c').click(function(){
		if($('+.bot_c',this).css('display')=='none'){
			$('.bot_c').slideUp();
			$('+.bot_c',this).slideDown(300);
			$('.js_ptChannel .top_c').removeClass('active');
			$(this).addClass('active');
		}else{
			$('+.bot_c',this).slideUp(300);
			$(this).removeClass('active');
		}
	})
}

// 1115 추가
/* 달력 */
var calendarPicker = function(){
	$('.datepicker').datepicker({
		monthNamesShorts:["1","2","3","4","5","6","7","8","9","10","11","12"],
		showOn:"button",
		buttonImageOnly:true,
		buttonText:'',
		prevText: "이전달",
		nextText: "다음달",
		dateFormat:"yy.mm.dd",
		changeMonth:true,
		changeYear:true,
		yearSuffix:"",
		showButtonPanel:true,
		//currentText:'오늘',
		closeText:'닫기'
	});
};

//1119 추가
/* 메뉴 > 현재 위치 텍스트 추가 */
var blindTextAdd = {
	init:function(){
		this.textAdd1 = $('.area_tagList .tag_menu li.on a');
		this.textAdd2 = $('.page_box .on');
		this.textAdd3 = $('.bfree_menu li.active a');
		this.addEvent();
	},
	addEvent:function(){
		var _this = this
		,nowLoc = '<span class="blind">현재 위치</span>';

		_this.textAdd1.append(nowLoc);
		_this.textAdd2.append(nowLoc);
		_this.textAdd3.append(nowLoc);
	}
}


/* 1122 추가 */
/* Top Button Scroll */
function topBtnScroll(){
	var btnW = $('.btn_topWrap')
	,btnTop = btnW.find('.btn_topMove2');

	$(window).scroll(function(){
		var wHeight = $(window).height()
		,wScrollTop = parseInt($(window).scrollTop())
		,docHeight = $(document).height();

		if(wScrollTop > 200 ){
			btnW.addClass('scroll').fadeIn(500);
		}else{
			btnW.fadeOut(500);
		}

		if(wScrollTop + wHeight == docHeight) {
			// btnW.fadeOut(500);
			btnW.removeClass('scroll');
		}
	});

	btnTop.click(function(){
		$('body,html').animate({scrollTop:'0'},500);
	});
}


//1210 추가
/* 파트너스 메인 - OnOff */
function partnersToggle(){
	$('.pt_touristinfo_section .btn_onoff').click(function(){
		var $thisP = $(this).parent();

		if($thisP.hasClass('on')){
			$thisP.removeClass('on');
			$(this).text('닫기');
		}else{
			$thisP.addClass('on');
			$(this).text('열기');
		}
	});
}

//190329 slider 추가
/* 마이페이지 > 코스 > 이용가이드 레이어팝업 slider */
function popCugSlider(){
	var swiper = new Swiper('#popCosUserGuide .swiper-container', {
		loop: false,
		pagination: {
			el: '.cug_slider_wrap .swiper-pagination',
			type: 'bullets',
			bulletElement: 'button',
			clickable: true,
			renderBullet: function (index, className) {
				return '<button type="button" class="' + className + '"><span class="blind">' + (index + 1) + '번째 슬라이드 보기</span></button>';
			}
		},
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev'
		},
		keyboard: {
			enabled: true,
			onlyInViewport: true,
		},
		on:{
			init:function(){
				swiperTabindex('.cug_slider_wrap', this.activeIndex);
			},
			slideChangeTransitionEnd:function(){
				swiperTabindex('.cug_slider_wrap', this.activeIndex);
			}
		}
	});


	// 0502 추가
	var swiper1 = new Swiper('#popCosUserGuide1 .cug_slider_wrap.type1.swiper-container', {//202004 고도화 수정
		loop: false,
		pagination: {
			el: '.cug_slider_wrap .swiper-pagination',
			type: 'bullets',
			bulletElement: 'button',
			clickable: true,
			renderBullet: function (index, className) {
				return '<button type="button" class="' + className + '"><span class="blind">' + (index + 1) + '번째 슬라이드 보기</span></button>';
			}
		},
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev'
		},
		keyboard: {
			enabled: true,
			onlyInViewport: true,
		},
		on:{
			init:function(){
				swiperTabindex('.cug_slider_wrap', this.activeIndex);
			},
			slideChangeTransitionEnd:function(){
				swiperTabindex('.cug_slider_wrap', this.activeIndex);
			}
		}
	});
}

function choiceTxt(){// 20210105 추가

	$('.total_check .btn_txt2 button.on, .total_check .btn_txt button.on').attr('title','선택됨');
	$('.total_check .btn_txt2 button, .total_check .btn_txt button').click(function(){

		var thisSibilgs = $(this).siblings('button');

		$(this).addClass('on');
		$(this).attr('title','선택됨');
		thisSibilgs.removeClass('on').removeAttr('title');

	});
	
	$('.box_search .search_menu li.on a').attr('title','선택됨');
	$('.box_search .search_menu li a').click(function(){
		var thisSibilgs = $(this).parent().siblings();

		$(this).parent().addClass('on');
		$(this).attr('title','선택됨');
		thisSibilgs.removeClass('on').children('a').removeAttr('title');
	});

}

//0502 추가
function keeperFaq(){
	$('.keeperFaq button').on('click',function(){
		if(!$(this).hasClass('active')){
			$(this).addClass('active');
			$(this).attr('title', '내용닫기');
		}else{
			$(this).removeClass('active');
			$(this).attr('title', '내용보기');
		}
	});
}
//07-03 추가 (홍준호 사원)
function AndroidCss(){
		if(getDevice() == 'Android'){
			var css = '<style> @media screen and (max-width: 1023px){ #infoForm .layerpop { left : 0 !important; top : 0 !important; margin-left : 0px !important; margin-top : 15px !important;}';
			css += ' #rouletPop .layerpop { left : 0 !important; top : 0 !important; margin-left : 0px !important; margin-top : 15px !important;}}</style>';
			$('head').append(css);
		}
	}
	
