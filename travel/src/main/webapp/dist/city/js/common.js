var lastScrollY=0; //留덉�留� �ㅽ겕濡� �꾩튂

$(document).ready(function(){

	var currentDate = getCurrentDate();

	var openChecker = getCookie2("system_notice_gallery");
	if(currentDate != openChecker ){
		$( '#topBanner01' ).show();
	}
    var openChecker2 = getCookie2("system_notice_gallery2");
	if(currentDate != openChecker2 ){		
		$( '#popup-cookie' ).show();
		$( '#popup-cookie-img' ).show();
	}
	
	/* 硫붿씤 移댄뀒怨좊━ */
	$('.mainSelect dt').click(function(){
		$('.mainSelect dd>ul').addClass('on');
	});
	$('.mainSelect dd>ul>li').click(function(){
		$('.de2').removeClass('on');
		$(this).find('>ul').addClass('on');
		$('.mainSelect dd>ul>li').removeClass('on');
		$(this).addClass('on');
	});
	$('.de2>li').click(function(){
		$('.mainSelect dd>ul').removeClass('on');
		var txt=$(this).text();
		$('.mainSelect dt span').text(txt);
	});

	/* Footer */
	$(function() {
		var site = $("a[href='#site']");

		function _in(event){
			var tobj = $(this).next();

			if(tobj.css("display") != "block"){
				tobj
					.css({"display":"block"})
					.stop(true,false).animate({opacity:1},"easeOutCubic");
					$(".Footer .related>a").addClass("open");
			} else{
				tobj
					.stop(true,false)
					.animate({opacity:0},"easeOutCubic",function(){
						$(this).css({"display":"none"});
						$(".Footer .related>a").removeClass("open");
					});
			}
			event.preventDefault();
		}

		function _out() {
			site.next()
				.stop(true,false)
					.animate({opacity:0},"easeOutCubic",function(){
						$(this).css({"display":"none"});
						$(".Footer .related>a").removeClass("open");
					});
		}

		site.on("click",_in);
		site.parent().on("mouseleave touchend",_out);
		site.next().find("a").last().on("focusout",_out);
	});

	/* Quick */
	setInterval(quick,1);
	$(window).scroll(function(){
		$('.quick').animate({'top':'30%'});
/*		2020-12-09
		if($(this).scrollTop()>150) {
			//$('.quick').fadeIn();
			$('.quick').animate({'top':'45%'});
		} else {
			//$('.quick').fadeOut();  
			$('.quick').animate({'top':'10%'});
		} */
	});

	/* shopping */
	$('.shopping').mouseover(function(){
		$(this).addClass('on');
		$('#shop_area').slideDown();
	}); 

	$('.shopping').mouseleave(function(){
		$(this).removeClass('on');
		$('#shop_area').slideUp();
	}); 

	var start=1;
	var end=$('#shop li').length;
	var len=$('#shop li').length - 1;
	$( ".btn_shop_prev" ).click(function() {
		var num=parseInt($('#shop').css('margin-top').replace('px',''));
		if (!( num == 0)) {
			num=num+85;
			$('#shop').css({'margin-top':num});
			start--;
		}
		event.preventDefault();
		return false;
	});

	$( ".btn_shop_next" ).click(function() {
		if( start < len ) {
			var num =85*start*(-1);
			$('#shop').css({'margin-top':num});
			start++;
		}
		event.preventDefault();
		return false;
	});


	/* Popup */
	$('.topClose').click(function(){
		if ( $("input:checkbox[id='topBanner01Chk']").is(":checked") ){
	    	setCookie2("system_notice_gallery", getCurrentDate(), 1);
	    }
		$( '#topBanner01' ).hide();
	});
	
    $('.topClose2').click(function(){
		if ( $("input:checkbox[id='topBanner02Chk']").is(":checked") ){
	    	setCookie2("system_notice_gallery2", getCurrentDate(), 1);
	    }
		$( '#popup-cookie' ).hide();
		$( '#popup-cookie-img' ).hide();
	});
	
	$('.bnrArea').click(function(){
		$('.pop').show();
	});
	$('.help').click(function(){
		$('.pop').show();
	});
	$('.pClose').click(function(){
		$('.pop').hide();
	});
	

	/* 2021-09-29 */
	$('.privacy').click(function(){
		$('.pop2').show();
	});
	$('.pClose_privacy').click(function(){
		$('.pop2').hide();
	});
	$('.agree').click(function(){
		$('.pop3').show();
	});
	$('.pClose_agree').click(function(){
		$('.pop3').hide();
	});
	
	
	$('#tab1').click(function(){
		$(this).addClass('on');
		$('#tab2').removeClass('on');
		$('.tab1').show();
		$('.tab2').hide();
	});
	$('#tab2').click(function(){
		$('#tab2').addClass('on');
		$('#tab1').removeClass('on');
		$('.tab1').hide();
		$('.tab2').show();
	});

	/* subPage 醫뚯륫硫붾돱 */
	$('.con>ul>li').has('ul').find('>a').css({'padding-left':'10px'}).addClass('de2');
	$('.con>ul>li').click(function(){
		$('.con>ul>li').removeClass('on');
		$('.con>ul>li ul').removeClass('on');
		$(this).addClass('on');
		$(this).find('>ul').addClass('on');
		//event.preventDefault();
	});
	$('.con>ul>li>ul>li').click(function(){
		$('.con>ul>li>ul>li').removeClass('active');
		$(this).addClass('active');
		//event.preventDefault();
	});

	
	$('#btnSlide_close').click(function(){
		$('.subLeft').css({'margin-left':-200});
		$('.subCont').css({'width':1200});
		$(this).hide();
		$('#btnSlide_open').show();

		$('.viewHor li').css({'height':180});
		$('.viewHor li img').css({'height':180});
	});
	$('#btnSlide_open').click(function(){
		$('.subLeft').css({'margin-left':0});
		$('.subCont').css({'width':1000});
		$(this).hide();
		$('#btnSlide_close').show();

		$('.viewHor li').css({'height':150});
		$('.viewHor li img').css({'height':150});
	});
	/* subPage 寃곌낵 �� 寃��� */
	$('.viewBox strong').mouseover(function(){
		$('.viewSelect').css({'display':'block'});
	});
	$('.viewSelect').mouseleave(function(){
		$(this).css({'display':'none'});
	}); 
	$('.viewSelect a').click(function(){
		var txt=$(this).text();
		$('.viewBox strong').text(txt);
		//event.preventDefault();
	});

		/* 2021-11-24*/
	$('.viewBox2>strong').mouseover(function(){
		$('.viewSelect2').css({'display':'block'});
	});
	$('.viewSelect2').mouseleave(function(){
		$('.viewSelect2').css({'display':'none'});
	}); 
	$('.viewSelect2 ul li a').click(function(){
		var txt=$('.viewSelect2 ul li a').text();
		$('.viewBox2>strong').text(txt);
		//event.preventDefault();
	}); 
	/* subPage 蹂닿린諛⑹떇 */
	$('#view_hor').click(function(){
		$('.viewType li').removeClass('on');
		$(this).parent().addClass('on');
	});
	$('#view_ver').click(function(){
		$('.viewType li').removeClass('on');
		$(this).parent().addClass('on');
	});

	/* �ъ쭊 �곸꽭蹂닿린 */
	var list = $("#thum");
	var showNum = 7;
	var num = 0;
	var total = $("#thum > li").length;
	var copyObj = $(">li:lt("+showNum+")", list).clone();
	if(total > 5){
		list.append(copyObj);
		$(".thumNext").on("click", function(){
			if(num == total){
				num = 0;
				list.css("margin-left",num);
			}
			num++;
			list.stop().animate({marginLeft:-130*num+"px"});
			return false;
		});
		
		$(".thumPrev").on("click", function(){
			if(num == 0){
				num = total;
				list.css("margin-left", -num*130+"px");
			}
			num--;
			list.stop().animate({marginLeft:-130*num+"px"});
			return false;
		});	
	}
	
	
	

	/* 議곌굔寃��� */
	//�쒖슱
	$('.mapc0').click(function(){
		if(document.getElementById("map0").style.display == "none") { hideMap(); $("#map0").show(); }
		else { $("#map0").hide(); }
	});
	//�몄쿇
	$('.mapc1').click(function(){
		if(document.getElementById("map1").style.display == "none") { hideMap(); $("#map1").show(); }
		else { $("#map1").hide(); }
	});
	//寃쎄린
	$('.mapc2').click(function(){
		if(document.getElementById("map2").style.display == "none") { hideMap(); $("#map2").show(); }
		else { $("#map2").hide(); }
	});
	//媛뺤썝
	$('.mapc3').click(function(){
		if(document.getElementById("map3").style.display == "none") { hideMap(); $("#map3").show(); }
		else { $("#map3").hide(); }
	});
	//異⑸궓
	$('.mapc4').click(function(){
		if(document.getElementById("map4").style.display == "none") { hideMap(); $("#map4").show(); }
		else { $("#map4").hide(); }
	});
	//異⑸턿
	$('.mapc5').click(function(){
		if(document.getElementById("map5").style.display == "none") { hideMap(); $("#map5").show(); }
		else { $("#map5").hide(); }
	});
	//����
	$('.mapc6').click(function(){
		if(document.getElementById("map6").style.display == "none") { hideMap(); $("#map6").show(); }
		else { $("#map6").hide(); }
	});
	//�꾨턿
	$('.mapc7').click(function(){
		if(document.getElementById("map7").style.display == "none") { hideMap(); $("#map7").show(); }
		else { $("#map7").hide(); }
	});
	//愿묒＜
	$('.mapc8').click(function(){
		if(document.getElementById("map8").style.display == "none") { hideMap(); $("#map8").show(); }
		else { $("#map8").hide(); }
	});
	//�꾨궓
	$('.mapc9').click(function(){
		if(document.getElementById("map9").style.display == "none") { hideMap(); $("#map9").show(); }
		else { $("#map9").hide(); }
	});
	//寃쎈턿
	$('.mapc10').click(function(){
		if(document.getElementById("map10").style.display == "none") { hideMap(); $("#map10").show(); }
		else { $("#map10").hide(); }
	});
	//��援�
	$('.mapc11').click(function(){
		if(document.getElementById("map11").style.display == "none") { hideMap(); $("#map11").show(); }
		else { $("#map11").hide(); }
	});
	//寃쎈궓
	$('.mapc12').click(function(){
		if(document.getElementById("map12").style.display == "none") { hideMap(); $("#map12").show(); }
		else { $("#map12").hide(); }
	});
	//�몄궛
	$('.mapc13').click(function(){
		if(document.getElementById("map13").style.display == "none") { hideMap(); $("#map13").show(); }
		else { $("#map13").hide(); }
	});
	//遺���
	$('.mapc14').click(function(){
		if(document.getElementById("map14").style.display == "none") { hideMap(); $("#map14").show(); }
		else { $("#map14").hide(); }
	});
	//�쒖＜
	$('.mapc15').click(function(){
		if(document.getElementById("map15").style.display == "none") { hideMap(); $("#map15").show(); }
		else { $("#map15").hide(); }
	});
	//湲고� - 媛뺤썝��(遺곹븳)
	$('.mapc16').click(function(){
		if(document.getElementById("map16").style.display == "none") { hideMap(); $("#map16").show(); }
		else { $("#map16").hide(); }
	});
	$('#conOne').click(function(){
		$('#conOne').next().animate({'width':35});
		$('#conTwo').css({'z-index':'3'});
		$('#conTwo').animate({'left':35});
		$('#conTwo').next().animate({'left':507});
		$('#conThree').animate({'left':-289});
		$('#conThree').next().animate({'left':563});
		$('#conFour').animate({'left':-469});
		event.preventDefault();
	});
	$('#conTwo').click(function(){
		$('#conThree').css({'z-index':'2'});
		$('#conThree').animate({'left':76});
		$('#conThree').next().animate({'left':928});
		$('#conFour').animate({'left':-105});
		event.preventDefault();
	});
	$('#conThree').click(function(){
		$('#conFour').css({'z-index':'1'});
		$('#conFour').animate({'left':112});
		event.preventDefault();
	});
	$('#conFour').click(function(){
		event.preventDefault();
	});

	/* �λ컮援щ땲 - �댁슜�좎껌 */
	$('.cartApply_Area').on('keyup',function(){
		if( $(this).val().length > 400 ){
			$(this).val($(this).val().substring(0,400));
		}
	});
		
	//理쒓렐 蹂� �ъ쭊
	$(function(){
		getQuickToday();
		//getQuickCart();
	});
    
});

 function quick(){
	//scroll 媛��ν븳 �곸뿭�� 媛��� �꾩そ�� �꾩튂
	currentY=$(window).scrollTop();
}

function hideMap(){
	$("#map0").hide();
	$("#map1").hide();
	$("#map2").hide();
	$("#map3").hide();
	$("#map4").hide();
	$("#map5").hide();
	$("#map6").hide();
	$("#map7").hide();
	$("#map8").hide();
	$("#map9").hide();
	$("#map10").hide();
	$("#map11").hide();
	$("#map12").hide();
	$("#map13").hide();
	$("#map14").hide();
	$("#map15").hide();
	$("#map16").hide();
}

function createCookie(name,value,photocd) {   
	var date = new Date();      
	//date.setTime(date.getTime()+(1*24*60*60*1000));      
	//var expires = "; expires="+date.toGMTString();
	var beforeCookie = readCookie(name);
	var strImgArray = new Array();
	if (beforeCookie != null){
		strImgArray = beforeCookie.split('@@');
	}
	if (strImgArray.length < 51){
		var inFlg = true;
		for (var i=0; i<strImgArray.length-1;i++){
			var strImgData = strImgArray[i].split('|');
			if(strImgData[4] == photocd){
				inFlg = false;
				break;
			}
		}
		if (inFlg){
			value = value +beforeCookie;
    		//document.cookie = name+"="+value+expires+"; path=/ ;domain=korean.itislocal.com";
    		//document.cookie = "PHOTO_SESSION="+name+expires+"; path=/ ;domain=korean.itislocal.com";
    		document.cookie = name+"="+value+"; path=/ ;domain=korean1.visitkorea.or.kr";
    		document.cookie = "PHOTO_SESSION="+name+"; path=/ ;domain=korean1.visitkorea.or.kr";
    		
		}
	}
}
function readCookie(name) {   
	var nameEQ = name + "=";   
	var ca = document.cookie.split(';');   
	for(var i=0;i < ca.length;i++) {      
		var c = ca[i];      
		while (c.charAt(0)==' ') c = c.substring(1,c.length);      
		if (c.indexOf(nameEQ) == 0) 
			return c.substring(nameEQ.length,c.length);   
	}   
	return null;
}
	function eraseCookie(name) {   
   		createCookie(name,"",-1);
}  
// �ㅻ뒛蹂� �ъ쭊 遺덈윭�ㅺ린(�듬컮)
function getQuickToday(){
   	var SESSION_ID = readCookie("PHOTO_SESSION");
   	var strImg = readCookie(SESSION_ID);
	
	
	var strImgArray = new Array();
	if (strImg != null){
		strImgArray = strImg.split('@@');
	}
	var strHtml = "<ul>";	
	var listCnt = strImgArray.length-1;
	if (strImgArray.length > 0){
		if(strImgArray.length > 7) listCnt = 7 ;
		for (var i=0; i<listCnt;i++){
			var strImgData = strImgArray[i].split('|');
			strHtml = strHtml + "<li><a href='/kor/nphotogallery/photo.kto?func_name=photo_view&newphotoDTO.sub_menu=today&newphotoDTO.photo_code="+strImgData[4]+"'><img src='"+strImgData[0]+"' alt='"+strImgData[3]+"' style='width:112px;'></li>";
		}
	}else{
		strHtml = strHtml + "<li>�ㅻ뒛 蹂� �ъ쭊�� �놁뒿�덈떎.</li>";
	}
	strHtml += "</ul>";
	jQuery('#quickbar_today').html('');
	jQuery('#quickbar_today').html(strHtml);
	
}

// �λ컮援щ땲 遺덈윭�ㅺ린(�듬컮)
 function getQuickCart(){
	jQuery.ajax({
        url: '/kor/nphotogallery/photo.kto?func_name=getCart',
        type: 'POST',
        target: '_SELF',
        dataType: 'TEXT',
        data: {}, 
        error: function(){
            alert('�좎떆 �꾩뿉 泥섎━�섏뿬 二쇱떗�쒖삤!');
        },
        success: function(html){
            jQuery('#shop').html('');
            jQuery('#shop').html(html);
        }
    });
}
	
function setCookie2(name, value, expiredays) {
	var todayDate = new Date();
	todayDate.setTime(todayDate.getTime() + 1000 * 3600 * 24 * expiredays);//1��
	document.cookie = name + "=" + escape(value) + "; path=/; expires="+ todayDate.toGMTString() + ";";
}


function getCookie2(name){
	var nameOfCookie = name+'=';
	var mycookie = document.cookie;
	var daytime = '';
	if(mycookie.indexOf(nameOfCookie) > 0) { 	
		var daytime = mycookie.substring(mycookie.indexOf(nameOfCookie)+nameOfCookie.length, mycookie.lastIndexOf(nameOfCookie)+nameOfCookie.length+8);
	}
	return daytime;
}
		
function getCurrentDate(){
	var Stamp = new Date();
    return Stamp.getFullYear()*10000+(Stamp.getMonth()+1)*100+Stamp.getDate();
}

// �λ컮援щ땲 �닿린(�ъ쭊�곸꽭)
function img_cart_add_view(photocds,page,subj_cd,zone_cd,tit_cd)
{
	//photocds = jQuery("#photo_code").val()+",";
	if (photocds != "") {
		jQuery.ajax({
            url: '/kor/nphotogallery/photo.kto?func_name=inCart',
            type: 'POST',
            dataType: 'TEXT',
            data: {"newphotoDTO.photo_code":photocds}, 
            error: function(){
                alert('�λ컮援щ땲�� �깅줉�섏� �딆븯�듬땲��. �좎떆 �꾩뿉 泥섎━�섏뿬 二쇱떗�쒖삤!');
            },
            success: function(data){
            	var result = data.split(':');
            	alert(result[1]);
				goPhotoView(page,subj_cd,zone_cd,tit_cd,photocds);
				//getQuickCart();
            }
        });
	}else{
      	 alert("�좏깮�� �대�吏�媛� �놁뒿�덈떎.");
      	 return false;
       }
}
// �좏깮�덊븿(30934) �ъ쭊 �λ컮援щ땲 �닿린(�ъ쭊�곸꽭)
function img_cart_add_view_30934() {
	if(!confirm("蹂� ���묐Ъ�� 怨듭궗 吏곸썝�먭쾶留� 蹂댁뿬吏��� �ъ쭊�쇰줈 怨듭궗 �먯껜 �띾낫臾� �쒖옉�� �쒖슜�섍퀬 �덉뒿�덈떎.\n諛섎뱶��  �띾낫�⑹쑝濡쒕쭔 �ъ슜�섏뀛�� �섎ŉ, �곸뾽�� �댁슜�� 遺덇��섏삤��(�ы뻾�곹뭹 �쒗뵆�� �� 吏��먮텋媛�)\n�몃� 吏��먯떆�� 諛섎뱶�� �⑸룄 �뺤씤�� �쒓났�섏떆湲� 諛붾엻�덈떎")){
		return ;
	} else {
		img_cart_add_view();
	}
}	
	
	
// 湲��먯닔�멸린
function countLngth(obj){
		var frm =document.frm;
		frm.cnt.value = obj.value.length;
}

// �ъ쭊肄붾뱶蹂듭궗--�щ＼�먯꽌 湲곕뒫 �숈옉 �덊븿 _20210106
// �곸꽭�섏씠吏��� photoCocopy �⑥닔 �좎뼵�댁꽌 洹멸굅�ъ슜��
function copyHtml(text,type) {
	var docs_location = document.location.href;
	var docs_locations = docs_location.replace("###", "");
	var url = docs_locations + "?" + text;
	if( window.clipboardData && clipboardData.setData )
	{
	 if (type=="photocd"){
		 clipboardData.setData("Text", text);
		 alert("�ъ쭊 踰덊샇媛� 蹂듭궗�섏뿀�듬땲��.");
	 }else{
		 clipboardData.setData("Text", url);
		 alert("URL�� 蹂듭궗�섏뿀�듬땲��.");
	 }
	}
}
