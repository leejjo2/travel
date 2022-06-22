var nowDate = '';
var timeid = '';
var device;
var snsId;
var snsChannel;
var snsRegYmd;
var beforefocus;

let ssoFlag = true; //SSO 적용시 true

$().ready(function() {

	nowDate = new Date();
	timeId = nowDate.getTime();

	getAppYn();
	switch ($('header').attr('id')) {
	case 'common_header':
		$("#common_header").load("/common/common_header.do?v="+timeId, function(){
			$('.coronaBanner').hide();
			snsAutoLogin();
		});
		break;

	case 'detail_header':
		$("#detail_header").load("/common/detail_header.do?v="+timeId, function(){
			$('.coronaBanner').hide();
			snsAutoLogin();
		});
		break;

	case 'main_header':
		$("#main_header").load("/common/main_header.do?v="+timeId, function(){
			bannerview = true;
			snsAutoLogin();
		});
		break;

	case 'kstay_header':
		$("#kstay_header").load("/kstay/ks_header.do?v="+timeId, function(){
			snsAutoLogin();
		});
		break;
	default:
		snsAutoLogin();
		break;
	}

	// 헤더,풋터 페이지 로드
	if(!$('#footer').hasClass("curation_footer"))
		$("#footer").load("/common/footerNoGa.do?v="+timeId);

	// footer2 삭제하면 안됨
	$(".gnbfooter").load("/common/footer2.do?v="+timeId);
});

// 자동로그인
function snsAutoLogin() {
	$.ajax({
		url: mainurl+'/call',
		dataType: 'json',
		type: "POST",
		data: {
			cmd : 'SNS_AUTO_LOGIN'
		},
		success: function(data) {
			if(location.href.indexOf('korean.visitkorea') != -1)
				setLogintype(data);
			else
				setLogintype(data.body.result);
		},
		complete: function() {
			try {
				// if(bannerview)
				// 	$('#chattingbanner').css('display','block');
				nextLogin();
			} catch(e) {
			}
		},
		error: function(xhr, textStatus, errorThrown) {
		}
	});
}

var mainurl = 'https://korean.visitkorea.or.kr';
var mainfileurl = 'https://cdn.visitkorea.or.kr';
var mainimgurl = 'https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=';
var mainfileurlpath = 'https://cdn.visitkorea.or.kr/img/call?cmd=TEMP_VIEW&name=';
var mainfiledownloadurl = 'https://cdn.visitkorea.or.kr/img/call?cmd=TEMP_VIEW&name=';
var mainUploadUrl = 'https://support.visitkorea.or.kr/img/call';
var supporturl = mainurl;
var domainIfno = 'https://korean.visitkorea.or.kr/json/jsp';
var domainIfno2 = 'https://korean.visitkorea.or.kr/json/jsp';
var partnersurl = 'https://vsup.visitkorea.or.kr';
var facebookappid = '1628836140497717';
// 발도장 이벤트 id
var stampId = '1589345b-b030-11ea-b8bd-020027310001';

var hostname  = location.hostname;

if (hostname.indexOf("localhost") > -1 || hostname.indexOf("127.0.0.1") > -1) {
	if(location.protocol == "https:"){
		mainurl = 'https://'+hostname+':8443';
	} else {
		mainurl = 'http://'+hostname+':8080';
	}
	mainfileurl = mainurl;
	mainimgurl = 'https://dev.ktovisitkorea.com/img/call?cmd=VIEW&id=';
	mainfileurlpath = 'https://dev.ktovisitkorea.com/img/call?cmd=TEMP_VIEW&name=';
	mainUploadUrl = 'https://dev.ktovisitkorea.com/img/call';
	facebookappid = '630196877343144';
	stampId = '1589345b-b030-11ea-b8bd-020027310001';
	supporturl = mainurl;
	partnersurl ='http://127.0.0.1:8080/visitKoreaAdmin';
	domainIfno = 'http://127.0.0.1:8080/json/jsp';
	domainIfno2 = 'http://127.0.0.1:8080/json/jsp';
} else if (hostname.indexOf("kor.uniess.co.kr") > -1) {
	mainurl = 'https://kor.uniess.co.kr';
	mainfileurl = 'https://kor.uniess.co.kr';
	mainimgurl = 'https://kor.uniess.co.kr/img/call?cmd=VIEW&id=';
	mainfileurlpath = 'https://kor.uniess.co.kr/img/call?cmd=TEMP_VIEW&name=';
	mainUploadUrl = 'https://kor.uniess.co.kr/img/call';
	facebookappid = '630196877343144';
	stampId = '1589345b-b030-11ea-b8bd-020027310001';
	supporturl = mainurl;
} else if (hostname === "stage.visitkorea.or.kr") {
	mainurl = 'https://stage.visitkorea.or.kr';
	mainfileurl = 'https://support.visitkorea.or.kr';
	mainimgurl = 'https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=';
	mainfileurlpath = 'https://cdn.visitkorea.or.kr/img/call?cmd=TEMP_VIEW&name=';
	mainUploadUrl = 'https://support.visitkorea.or.kr/img/call';
	domainIfno = 'https://stage.visitkorea.or.kr/json/jsp';
	domainIfno2 = 'https://stage.visitkorea.or.kr/json/jsp';
	facebookappid = '630196877343144';
	stampId = '1589345b-b030-11ea-b8bd-020027310001';
	supporturl = mainurl;
	partnersurl ='https://stage.visitkorea.or.kr/visitKoreaAdmin';
} else if (hostname === "kor.visitkorea.or.kr") {
	mainurl = 'https://kor.visitkorea.or.kr';
	mainfileurl = 'https://kor.visitkorea.or.kr';
	mainimgurl = 'https://kor.visitkorea.or.kr/img/call?cmd=VIEW&id=';
	mainfileurlpath = 'https://kor.visitkorea.or.kr/img/call?cmd=TEMP_VIEW&name=';
	mainUploadUrl = 'https://kor.visitkorea.or.kr/img/call';
	domainIfno = 'https://korean.visitkorea.or.kr/json/jsp';
	domainIfno2 = 'https://korean.visitkorea.or.kr/json/jsp';
	facebookappid = '630196877343144';
	stampId = '1589345b-b030-11ea-b8bd-020027310001';
	supporturl = mainurl;
	partnersurl ='https://kor.visitkorea.or.kr/visitKoreaAdmin';
} else if (hostname === "vkor.visitkorea.or.kr") {
	mainurl = 'https://vkor.visitkorea.or.kr';
	domainIfno = 'https://vkor.visitkorea.or.kr/json/jsp';
	domainIfno2 = 'https://vkor.visitkorea.or.kr/json/jsp';
	facebookappid = '1628836140497717';
	stampId = '1589345b-b030-11ea-b8bd-020027310001';
} else if (hostname === "dev.ktovisitkorea.com") {
	mainurl = 'https://dev.ktovisitkorea.com';
	mainfileurl = mainurl;
	mainimgurl = 'https://dev.ktovisitkorea.com/img/call?cmd=VIEW&id=';
	mainfileurlpath = 'https://dev.ktovisitkorea.com/img/call?cmd=TEMP_VIEW&name=';
	mainUploadUrl = 'https://dev.ktovisitkorea.com/img/call';
	supporturl = mainurl;
	domainIfno = 'https://dev.ktovisitkorea.com/json/jsp';
	domainIfno2 = 'https://dev.ktovisitkorea.com/json/jsp';
	facebookappid = '1628836140497717';
	mainfiledownloadurl = 'https://dev.ktovisitkorea.com/img/call?cmd=TEMP_VIEW&name=';
	partnersurl ='https://dev.ktovisitkorea.com/visitKoreaAdmin';
}
let isProduction = function() {
	return mainurl.indexOf("korean.visitkorea.or.kr") !== -1
}()
var imgmode = '&mode=raw';
var imgmodeThumb = '&mode=thumb';
var tagareaheight = 60;
var othertagareaheight = 30;
var tagheight = 60;
var othertagheight = 30;
var detailheight = 610;
var detailareaheight = 610;

var pagingSize = 5;
var locationx='0.0';
var locationy='0.0';
var appYn = 'N';
var mobileYn = 'N';
var uid = '';
var loginYn = 'N';
var getLocationYn = 'N';
var GetLocationChk = 'N';
var userImgYn = 'N';
var permitLocation = '';
var gaCookie = '';
var ShareDesc1 = '';
var ShareDesc2 = '';
var sContentTitle;
var sContentImg;
var sContentId;
var sContentType;
var sContentDesc;
var sOtdid = '';
var sloginType = '';
var beforeUrl = '';
var server = location.href;
var protocol = location.protocol;
var bannerview = false;
getAppYn();
// 파라메타 값 가져오기
var getParameter = function (param) {
	var returnValue;
	var url = location.href;
	var parameters = (url.slice(url.indexOf('?') + 1, url.length)).split('&');
	for (var i = 0; i < parameters.length; i++) {
		var varName = parameters[i].split('=')[0];
		if (varName.toUpperCase() == param.toUpperCase()) {
			returnValue = parameters[i].split('=')[1];
			return decodeURIComponent(returnValue);
		}
	}
};

function fn_addMonth(pAddMonthCnt) {

	var yyyy,m,d;
	var dt = new Date();

	// Display the month, day, and year. getMonth() returns a 0-based number.
	var pMonth = dt.getMonth()+1;
	var pDay = dt.getDate();
	var pYear = dt.getFullYear();

	var oDate = new Date(pYear, pMonth, 1);
	oDate.setMonth(oDate.getMonth() + Number(pAddMonthCnt));
	yyyy = oDate.getFullYear();

	m = oDate.getMonth();
	d = oDate.getDate();
	if( pAddMonthCnt >= 0 ) {
		if( m == '0' ) { m = '12'; yyyy = yyyy - 1;}
	} else {
		if( m == '0' ) { m = '12'; yyyy = yyyy - 1;}
	}
	return yyyy + "-" + m + "-" + d;
}

// date(yyyyMMddhhmm형식)
// format(yyyyMMdd,yyyyMMddhhmm)
// splitStr(ko or '-' or '/')
function conDateFormat(date, format, splitStr) {
	var rtnDate = '';

	if( "yyyyMMdd" == format ) {
		if(date.length >= 8 ) {
			if("" == splitStr) {
				rtnDate += date.substring(0,4)+date.substring(4,6)+date.substring(6,8);
			} else {
				if("ko" == splitStr ) {
					rtnDate += date.substring(0,4) + '년';
					rtnDate += date.substring(4,6) + '월';
					rtnDate += date.substring(6,8) + '일';
				} else {
					rtnDate += date.substring(0,4) + splitStr;
					rtnDate += date.substring(4,6) + splitStr;
					rtnDate += date.substring(6,8);
				}
			}
		} else {
			rtnDate = date;
		}
	} else if( "yyyyMMddHHmm" == format ) {
		if(date.length >= 12 ) {
			if("" == splitStr) {
				rtnDate += date.substring(0,4)+date.substring(4,6)+date.substring(6,8)+date.substring(8,10)+date.substring(10,12);
			} else {
				if("ko" == splitStr ) {
					rtnDate += date.substring(0,4) + '년';
					rtnDate += date.substring(4,6) + '월';
					rtnDate += date.substring(6,8) + '일';
					rtnDate += date.substring(8,10) + '시';
					rtnDate += date.substring(10,12) + '분';
				} else {
					rtnDate += date.substring(0,4) + splitStr;
					rtnDate += date.substring(4,6) + splitStr;
					rtnDate += date.substring(6,8) + splitStr;
					rtnDate += date.substring(8,10) + splitStr;
					rtnDate += date.substring(10,12);
				}
			}
		} else {
			rtnDate = date;
		}
	} else if("MMdd" == format){
		if(date.length >= 8 ) {
			if("" == splitStr) {
				rtnDate += date.substring(0,4)+date.substring(4,6)+date.substring(6,8);
			} else {
				if("ko" == splitStr ) {
					rtnDate += date.substring(4,6) + '월';
					rtnDate += date.substring(6,8) + '일';
				} else {
					rtnDate += date.substring(4,6) + splitStr;
					rtnDate += date.substring(6,8);
				}
			}
		} else {
			rtnDate = date;
		}
	} else if("hhmmss" == format){
		if(date.length >= 6 ) {
			if("" == splitStr) {
				rtnDate += date.substring(8,10)+date.substring(10,12)+date.substring(12,14);
			} else {
				if("ko" == splitStr ) {
					rtnDate += date.substring(8,10) + '시';
					rtnDate += date.substring(10,12) + '분';
					rtnDate += date.substring(12,14) + '초';
				} else {
					rtnDate += date.substring(8,10) + splitStr;
					rtnDate += date.substring(10,12) + splitStr;
					rtnDate += date.substring(12,14);
				}
			}
		} else {
			rtnDate = date;
		}
	}
	return rtnDate;
}

// date(yyyyMMddhhmm형식)
// format(yyyyMMdd,yyyyMMddhhmm)
// splitStr(ko or '-' or '/')
function conDateFormat2(date, format, splitStr) {
	var rtnDate = '';
	if( "yyyyMMdd" == format ) {
		if(date.length >= 8 ) {
			if("" == splitStr) {
				rtnDate += date.substring(0,4)+date.substring(4,6)+date.substring(6,8);
			} else {
				if("ko" == splitStr ) {
					rtnDate += date.substring(0,4) + '년';
					rtnDate += date.substring(4,6) + '월';
					rtnDate += date.substring(6,8) + '일';
				} else {
					// rtnDate += date.substring(0,4) + splitStr;
					rtnDate += date.substring(4,6) + splitStr;
					rtnDate += date.substring(6,8);
				}
			}
		} else {
			rtnDate = date;
		}
	} else if( "yyyyMMddHHmm" == format ) {
		if(date.length >= 12 ) {
			if("" == splitStr) {
				rtnDate += date.substring(0,4)+date.substring(4,6)+date.substring(6,8)+date.substring(8,10)+date.substring(10,12);
			} else {
				if("ko" == splitStr ) {
					rtnDate += date.substring(0,4) + '년';
					rtnDate += date.substring(4,6) + '월';
					rtnDate += date.substring(6,8) + '일';
					rtnDate += date.substring(8,10) + '시';
					rtnDate += date.substring(10,12) + '분';
				} else {
					rtnDate += date.substring(0,4) + splitStr;
					rtnDate += date.substring(4,6) + splitStr;
					rtnDate += date.substring(6,8) + splitStr;
					rtnDate += date.substring(8,10) + splitStr;
					rtnDate += date.substring(10,12);
				}
			}
		} else {
			rtnDate = date;
		}
	} else {
	}

	return rtnDate;
}

function getLocation() {
	getLocationYn = 'Y';

	if( appYn == 'N') {

		setTimeout(function() {

			if(GetLocationChk == 'N'){
				if(mobileYn =='N'){
					GetLocationChk = 'Y';
					permitLocation = 'N';
					showPositionNot(0,0);
				}
			}
		}, 500);

		if (navigator.geolocation) {
			if(getBrowser() == 'Firefox'){
				navigator.geolocation.getCurrentPosition(setPosition,showError);
			} else{
				navigator.geolocation.getCurrentPosition(setPosition, showError, showOptions);
			}
		} else {
			GetLocationChk = 'Y';
			permitLocation = 'N';
			showPositionNot(0,0);
		}
	} else {
		location.href = "location:?getXY=location";
	}
}

function setPosition(position) {
	if(GetLocationChk == 'Y') {return;}

	GetLocationChk = 'Y';
	var x = position.coords.latitude;
	var y = position.coords.longitude;

	// 어플에서 위치기반서비스를 종료했을 때 체크되는 좌표 (10000, 10000)
	if (x == 10000 && y == 10000) {
		permitLocation = 'N';
		showPositionNot(0,0);
	} else {
		permitLocation = 'Y';
		showPosition(x, y);
	}
}

function showError(error) {
	switch(error.code) {
		case error.PERMISSION_DENIED:
//			alert("User denied the request for Geolocation.");
			break;
		case error.POSITION_UNAVAILABLE:
//			alert("Location information is unavailable.");
			break;
		case error.TIMEOUT:
//			alert("The request to get user location timed out.");
			break;
		case error.UNKNOWN_ERROR:
//			alert("An unknown error occurred.");
			break;
	}
	GetLocationChk = 'Y';
	permitLocation = 'N';
	showPositionNot(0,0);
}


var showOptions = {
	enableHighAccuracy: false,
	timeout: 5000,
	maximumAge: 2000
};


function setLocationXY( x, y, option) {
	var options = option;

	if( x == 0.000000 || y == 0.000000 ) {
		permitLocation = 'N';
		showPositionNot(0, 0);
	} else {
		if (x == 10000 && y == 10000) {
			permitLocation = 'N';
			showPositionNot(0,0);
		} else {
			permitLocation = 'Y';
			showPosition(x, y);
		}
	}
}

function getDevice() {

	var agent = navigator.userAgent.toLowerCase();
	if (agent.indexOf('iphone') != -1 || agent.indexOf('ipad') != -1 ) { // iPhone

		// 기기, IOS별 모바일 버전 조정
		if (/iPhone/.test(navigator.platform)) {
			mobileYn = 'Y';
		} else {
			mobileYn = 'N';
		}
		return 'iOS';

	} else if (agent.indexOf('android') != -1) { // Android OS

		mobileYn = 'Y';
		return 'Android';

	} else if (agent.indexOf('macintosh') != -1) {	// 아이패드 어플에서는 매킨토시로 잡힘

		mobileYn = 'N';
		return 'iOS';
	} else if(agent.indexOf('ipod') != -1){
		mobileYn = 'Y';
		return 'iOS';
	}
}

function getBrowser() {
	var agt = navigator.userAgent.toLowerCase();
	if (agt.indexOf("kakaotalk") != -1) return 'Kakao';
	if (agt.indexOf("chrome") != -1) return 'Chrome';
	if (agt.indexOf("opera") != -1) return 'Opera';
	if (agt.indexOf("opt") != -1) return 'OperaTouch';
	if (agt.indexOf("staroffice") != -1) return 'Star Office';
	if (agt.indexOf("webtv") != -1) return 'WebTV';
	if (agt.indexOf("beonex") != -1) return 'Beonex';
	if (agt.indexOf("chimera") != -1) return 'Chimera';
	if (agt.indexOf("netpositive") != -1) return 'NetPositive';
	if (agt.indexOf("phoenix") != -1) return 'Phoenix';
	if (agt.indexOf("firefox") != -1) return 'Firefox';
	if (agt.indexOf("fxios") != -1) return 'Firefox';
	if (agt.indexOf("whale") != -1) return 'Whale';
	if (agt.indexOf("crios") != -1) return 'CriOS';
	if (agt.indexOf("naver") != -1) return 'Naver';
	if (agt.indexOf("safari") != -1) return 'Safari';
	if (agt.indexOf("skipstone") != -1) return 'SkipStone';
	if (agt.indexOf("netscape") != -1) return 'Netscape';
	if (agt.indexOf("trident") != -1) return 'Internet Explorer';
	if (agt.indexOf("msie") != -1) { // 익스플로러 일 경우 var rv = -1;
		if (navigator.appName == 'Microsoft Internet Explorer') {
			var ua = navigator.userAgent;
			var re = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
			if (re.exec(ua) != null) rv = parseFloat(RegExp.$1);
		} return 'Internet Explorer '+rv;
	}
	if (agt.indexOf("mozilla/5.0") != -1) return 'Mozilla';
}

// ajax 사용시 팝업 차단 뜨는 브라우저들
function getBrowserPopup() {

	var browser = getBrowser();

	if (browser == 'Firefox'
		|| browser == 'Whale'
			|| browser == 'Internet Explorer') {
		return true;
	} else return false;
}

function getAppYn() {
	var agent = navigator.userAgent.toLowerCase();
	// alert(location.host);
	if (agent.indexOf('visitkor') != -1 ) {
		appYn = 'Y';
		mobileYn = 'Y';
	}

	device = getDevice();
}

function setDist(val) {
	var val2 = val+"";
	var distval;
	var dot = val2.indexOf(".");
	distval = val2.substr(0,dot);
	distval += val2.substr(dot,2);

	return distval;
}

function pad(n, width) {
	n = n + '';
	return n.length >= width ? n : new Array(width - n.length + 1).join('0') + n;
}

function numberWithCommas(x) {
	if( x == undefined || x == 'undefined' ) {
		return 0;
	} else {
		return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
}

var reqPart = '';
var reqUsrid = '';
// 로그인시
function goLogin(loginkind) {
	// '000 :: FACEBOOK,\n001 :: TWITTER,\n002 :: INSTAGRAM,\n004 :: NAVER,
	// \n005 :: KAKAOTALK,\n006 :: GOOGLE

	sessionStorage.removeItem('snsType');
	sessionStorage.setItem('beforeUrl', beforeUrl);

	var autoLogin = document.getElementById('autoLogin').checked?'Y':'N';
	var loginType;

	switch (loginkind) {
	case 'facebook': loginType = 0; break;
	case 'twitter': loginType = 1; break;
	case 'naver': loginType = 4; break;
	case 'kakao': loginType = 5; break;
	case 'kf': loginType = 'kf'; break;
	case 'google': loginType = 6; break;
	case 'apple': loginType = 7; break;
	}

	if( appYn == 'N') {
		if(getBrowser() != 'OperaTouch'){
			window.open(supporturl+'/common/snsChk.do?loginType='+loginType+'&appYn=N&reqPart='+reqPart+'&reqUsrid='+reqUsrid+'&autoLogin='+autoLogin);
		} else{
			// 브라우저가 OperaTouch 시에 세션으로 이전 url 저장
			sessionStorage.setItem('beforeUrl', document.location.href);

			location.href = supporturl+'/common/snsChk.do?loginType='+loginType+'&appYn=N&reqPart='+reqPart+'&reqUsrid='+reqUsrid+'&autoLogin='+autoLogin;
		}
	} else {
		location.href = 'opentab://'+supporturl+'/common/snsChk.do?loginType='+loginType+'&appYn=Y&reqPart='+reqPart+'&reqUsrid='+reqUsrid+'&autoLogin='+autoLogin;
	}
}

// 로그인후 reload - app
function authByToken(token){

	var tokenArr = token.split(',');
	var uuid = tokenArr[0];
	var autoLogin = tokenArr[1];

	$.ajax({
		url: mainurl+'/call',
		dataType: 'json',
		type: "POST",
		data: {
			cmd : 'SNS_SESSION_SAVE',
			uuid : uuid,
			autoLogin : autoLogin
		},
		success: function(data) {
			loginResult();
		},
		complete: function() {
		},
		error: function(xhr, textStatus, errorThrown) {
		}
	});
}

//로그인후 reload - web
function loginResult() {
	gaCookie = getCookie('_ga');
	$.ajax({
		url: mainurl+'/call',
		dataType: 'json',
		type: "POST",
		data: {
			cmd : 'SNS_MORE_INFO_CHK',
			ga : gaCookie
		},
		success: function(data) {
			if(data.header.process == 'success') {

				if(data.body.addMoreInfo == 'Y'){

					/*if(sessionStorage.getItem('beforeUrl') == '') {
						beforeUrl = window.location.href;
						sessionStorage.setItem('beforeUrl', beforeUrl);
					}
					location.href = '/common/more_info.do';*/
					loginReload();

				} else {
					loginReload();
				}

			} else {
				loginReload();
			}
		},
		complete: function() {
		},
		error: function(xhr, textStatus, errorThrown) {
		}
	});
}

function loginReload() {

	if(window.location.href.indexOf('/kstay/ks_intro') != -1){
		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'KSTAY_USER_CHECK'
			},
			success: function(data) {
				if(data.header.process == 'success') {
					location.href = '/kstay/ks_main.do';
				} else {
					layerPopup.layerShow('loginFpop2');
				}
			},
			complete: function() {
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});

	} else{
		if(appYn !='Y' && sessionStorage.getItem('beforeUrl') != ''){
			location.href = sessionStorage.getItem('beforeUrl');
			sessionStorage.removeItem('beforeUrl');
		} else{
			window.location.reload(true);
		}
	}
}

//마이그레이션 후 reload - web
function migrationResult() {
	sessionStorage.setItem('migration', 'Y');
	window.location.reload(true);
}

// javascript 거리계산.
function calculateDistance(lat1, lon1, lat2, lon2) {
	var R = 6371; // km
	var dLat = (lat2-lat1).toRad();
	var dLon = (lon2-lon1).toRad();
	var a = Math.sin(dLat/2) * Math.sin(dLat/2) +
			Math.cos(lat1.toRad()) * Math.cos(lat2.toRad()) *
			Math.sin(dLon/2) * Math.sin(dLon/2);
	var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
	var d = R * c;
	return d;
  }
  Number.prototype.toRad = function() {
	return this * Math.PI / 180;
  }

function getDistanceFromLatLonInKm(lat1,lng1,lat2,lng2) {
	function deg2rad(deg) {
		return deg * (Math.PI/180);
	}

	var R = 6371; // Radius of the earth in km
	var dLat = deg2rad(lat2-lat1);  // deg2rad below
	var dLon = deg2rad(lng2-lng1);
	var a = Math.sin(dLat/2) * Math.sin(dLat/2) + Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.sin(dLon/2) * Math.sin(dLon/2);
	var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
	var d = R * c; // Distance in km
	return d;
}

function setLogintype(data) {

	//개발계 테스트시 (전체적용)
	if(location.href.indexOf('korean.visitkorea') != -1){


	var result = data.body.result;
	snsId = result.snsId;

	if( snsId == null || snsId == 'null' || snsId == undefined || snsId == 'undefined' || snsId == '' ) {

		$('.login .in').show();

		$('.box_menu .btn_log').text('로그인');
		$('#loginbuttonarea').show();
		$('#plogin').text('로그인');
		$('#modpart').text('Partners 신청');
		$('#modpart').attr('href','/partners/partners_ask.do');

		loginYn = 'N';
	} else {

		if(data.body.privacyagree == 'N' && result.snsType != '10'){
			layerPopup.layerShow('mainAgreement');
			$('#login .btn_close3').remove();
			$(document).off();
		}
		var loginDiv = $('.login .out');
		var strHtml = '	<div class="photo">';
		if(result.snsType == '10'){
			strHtml += '	</div>';
			strHtml += '	<span class="name">'+result.pUsrName+'</span>';
		} else {
			var profileImg = result.profileImg;
			if(profileImg != null && profileImg != ''){
				profileImg = profileImg.replace('http://', 'https://');
				profileImg = profileImg.replace('th-p.talk.kakao.co.kr', 'k.kakaocdn.net');
			}
			strHtml += '		<img src="'+profileImg+'" alt="'+result.snsUsrName+' 님의 프로필 사진" onError="this.style.visibility=\'hidden\'">';

			switch (result.snsType+'') {	// 프로필 사진
				case '0':	// 페이스북
					strHtml += '<span class="ico"><img src="../resources/images/sub/ico_facebook.png" alt="페이스북"></span>';
					break;
				case '1':	// 트위터
					strHtml += '<span class="ico"><img src="../resources/images/sub/ico_twitter.png" alt="트위터"></span>';
					break;
				case '2':	// 인스타그램
					strHtml += '<span class="ico"><img src="../resources/images/sub/ico_insta.png" alt="인스타그램"></span>';
					break;
				case '4':	// 네이버
					strHtml += '<span class="ico"><img src="../resources/images/sub/ico_naver.png" alt="네이버"></span>';
					break;
				case '5':	// 카카오톡
					strHtml += '<span class="ico"><img src="../resources/images/sub/ico_kakao.png" alt="카카오톡"></span>';
					break;
				case '6':	// 구글
					strHtml += '<span class="ico"><img src="../resources/images/sub/ico_plus.png" alt="구글"></span>';
					break;
				case '7':	// 애플
					strHtml += '<span class="ico"><img src="../resources/images/sub/ico_apple.png" alt="애플"></span>';
					break;
			}
			strHtml += '</div>';
			strHtml += '<span class="name">'+result.snsUsrName+'</span>';
		}

		loginDiv.find('.profile').html(strHtml);
		loginDiv.show();

		$('.box_menu .btn_log').text('로그아웃');
		$('#comment').attr('placeholder','소중한 댓글을 남겨주세요.');
		$('#plogin').text('로그아웃');
		$('#modpart').text('회원정보변경');
		$('#modpart').attr('href','/partners/partners_user_mod.do');

		loginYn = 'Y';
		sloginType = result.snsType;
		snsChannel = result.snsTyNm;
		snsRegYmd = result.mbersJoinYmd;

		setGtmSnsDimensions();

	}

	// 파트너스 페이지
	if(location.pathname.indexOf("/partners/") > -1 ) {
		$('#commonLoginView').hide();
		$('#partnersLoginView').show();
		partnersLoginChk();
	}

	// 추가 항목 입력 페이지
	if(location.pathname.indexOf("/common/more_info.do") > -1 && loginYn == 'N') {
		location.href = sessionStorage.getItem('beforeUrl');
		sessionStorage.removeItem('beforeUrl');
	}

	} else{
		var id = data.snsId;

		if( id == null || id == 'null' || id == undefined || id == 'undefined' || id == '' ) {

			$('.login .in').show();

			$('.box_menu .btn_log').text('로그인');
			$('#loginbuttonarea').show();
			$('#plogin').text('로그인');
			$('#modpart').text('Partners 신청');
			$('#modpart').attr('href','/partners/partners_ask.do');

			loginYn = 'N';
		} else {

			var loginDiv = $('.login .out');
			var strHtml = '	<div class="photo">';
			if(data.snsType == '10'){
				strHtml += '	</div>';
				strHtml += '	<span class="name">'+data.pUsrName+'</span>';
			} else {
				var profileImg = data.profileImg;
				if(profileImg != null && profileImg != ''){
					profileImg = profileImg.replace('http://', 'https://');
					profileImg = profileImg.replace('th-p.talk.kakao.co.kr', 'k.kakaocdn.net');
				}
				strHtml += '		<img src="'+profileImg+'" alt="'+data.snsUsrName+' 님의 프로필 사진" onError="this.style.visibility=\'hidden\'">';

				switch (data.snsType+'') {	// 프로필 사진
					case '0':	// 페이스북
						strHtml += '<span class="ico"><img src="../resources/images/sub/ico_facebook.png" alt="페이스북"></span>';
						break;
					case '1':	// 트위터
						strHtml += '<span class="ico"><img src="../resources/images/sub/ico_twitter.png" alt="트위터"></span>';
						break;
					case '2':	// 인스타그램
						strHtml += '<span class="ico"><img src="../resources/images/sub/ico_insta.png" alt="인스타그램"></span>';
						break;
					case '4':	// 네이버
						strHtml += '<span class="ico"><img src="../resources/images/sub/ico_naver.png" alt="네이버"></span>';
						break;
					case '5':	// 카카오톡
						strHtml += '<span class="ico"><img src="../resources/images/sub/ico_kakao.png" alt="카카오톡"></span>';
						break;
					case '6':	// 구글
						strHtml += '<span class="ico"><img src="../resources/images/sub/ico_plus.png" alt="구글"></span>';
						break;
					case '7':	// 애플
						strHtml += '<span class="ico"><img src="../resources/images/sub/ico_apple.png" alt="애플"></span>';
						break;
				}
				strHtml += '</div>';
				strHtml += '<span class="name">'+data.snsUsrName+'</span>';
			}

			loginDiv.find('.profile').html(strHtml);
			loginDiv.show();

			$('.box_menu .btn_log').text('로그아웃');
			$('#comment').attr('placeholder','소중한 댓글을 남겨주세요.');
			$('#plogin').text('로그아웃');
			$('#modpart').text('회원정보변경');
			$('#modpart').attr('href','/partners/partners_user_mod.do');

			loginYn = 'Y';
			sloginType = data.snsType;
			snsChannel = data.snsTyNm;
			snsRegYmd = data.mbersJoinYmd;

			setGtmSnsDimensions();

		}

		// 파트너스 페이지
		if(location.pathname.indexOf("/partners/") > -1 ) {
			$('#commonLoginView').hide();
			$('#partnersLoginView').show();
			partnersLoginChk();
		}

		// 추가 항목 입력 페이지
		if(location.pathname.indexOf("/common/more_info.do") > -1 && loginYn == 'N') {
			location.href = sessionStorage.getItem('beforeUrl');
			sessionStorage.removeItem('beforeUrl');
		}
	}

}

function privacyagreechk(){
	if (!$("#mainAgreement input:checkbox[id='check01']").prop("checked")) {
		alert('서비스 이용약관에 동의를 하셔야 합니다.');
		$('#mainAgreement #check01').focus();
		return;
	}

	if (!$("#mainAgreement input:checkbox[id='check02']").prop("checked")) {
		alert('개인정보 수집 및 이용에 동의를 하셔야 합니다.');
		$('#mainAgreement #check02').focus();
		return;
	}

	$.ajax({
		url: mainurl+'/call',
		dataType: 'json',
		type: "POST",
		data: {
			cmd : 'SET_SSO_AGREE'
		},
		success: function(data) {
			if(data.header.process != 'success')
				alert("알수없는 오류가 발생하였습니다.");
			location.reload();
		},
		complete: function() {
		},
		error: function(xhr, textStatus, errorThrown) {
		}
	});
}

$(document).on("click","#plogin",function(){
	if( $('#plogin').text() == '로그아웃' ) {

		if( confirm("로그아웃을 하시겠습니까 ?") == true) {

			$.ajax({
				url: mainurl+'/call',
				dataType: 'json',
				type: "POST",
				data: {
					cmd : 'SNS_SESSION_DELETE'
				},
				success: function(data) {
					loginYn = 'N';
					location.href = '/partners/partners_main.do';
				},
				complete: function() {
				},
				error: function(xhr, textStatus, errorThrown) {
				}
			});
		}
	} else {
		location.href = '/partners/partners_login.do';
	}
});

function showLogin(kind) {

	if(location.href.indexOf('korean.visitkorea') != -1){

		if( loginYn == 'N' ) {
			beforefocus =  document.activeElement;
			layerPopup.layerShow('socialLogin');
		} else {
			if( confirm("로그아웃을 하시겠습니까 ?") == true) {
				logout();
			}
		}

	} else{

	if(getBrowser() == 'Kakao'){
		$('#login .google').remove();
	}

	if( loginYn == 'N' ) {
		beforefocus = document.activeElement;
		$("#gnbMain .all_menu .menu").removeClass("active");
		if( kind == 1 ) {
			$('#loginChk p').remove();
		} else {
			$('#loginChk').html('<p>로그인이 필요한 기능입니다.<br>로그인 후 재 진행 바랍니다. </p>');
		}
		layerPopup.layerShow('login');
		// $('.pop_log').show();
	} else {
		if( confirm("로그아웃을 하시겠습니까 ?") == true) {

			$.ajax({
				url: mainurl+'/call',
				dataType: 'json',
				type: "POST",
				data: {
					cmd : 'SNS_SESSION_DELETE'
				},
				success: function(data) {
					loginYn = 'N';
					try {
						spasapLoginOut('logout');
					} catch (e) {
					}
					if( location.href.indexOf("mypage") > -1 ) {
//						if( appYn == 'N') {
							location.href = '/main/main.do';
//						} else {
//							location.href = 'app://index';
//						}
					} else {
						window.location.reload(true);
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
}

function logout(){
	$.ajax({
		url: mainurl+'/call',
		dataType: 'json',
		type: "POST",
		data: {
			cmd : 'SNS_SESSION_DELETE'
		},
		success: function(data) {
			loginYn = 'N';
            try {
				spasapLoginOut('logout');
			} catch (e) {
			} 
			if( location.href.indexOf("mypage") > -1 ) {
				location.href = '/main/main.do';
			} else {
				window.location.reload(true);
			}
		},
		complete: function() {
		},
		error: function(xhr, textStatus, errorThrown) {
		}
	});
}

function logincheckurl(url,kind){

	if( loginYn == 'N') {
		showLogin(2);
	} else {
		if(kind == 1)
			openWindow(url)
		else
			location.href = url;
	}
}

function SSOLogin(){
	var autoLogin = document.getElementById('autoLogin2').checked?'Y':'N';

	let devicetype = 'PC';
	if(appYn == 'Y')
		devicetype = 'APP'
	else if (mobileYn == 'Y')
		devicetype = 'MOBILE'

	var req_url = mainurl+"/ssoagent/ssologin.do?autologin="+autoLogin+"&appYn="+appYn+"&device="+devicetype;

	if(beforeUrl == '')
		beforeUrl = location.href;
	sessionStorage.setItem('beforeUrl', beforeUrl);
	sessionStorage.setItem('appYn', appYn);

	// 듀얼 모니터 기준
	var popupX =  (window.screen.width  / 2) - 280;
	if( window.screenLeft < 0){
		popupX = ((window.screen.width  / 2) + 280) * -1;
	}

	var popupY= (window.screen.height  / 2) - 300;
	var options = "width=560, height=600, left="+popupX+", top="+popupY; //팝업사이즈

	if( appYn == 'Y') {
		location.href = "opentab://"+req_url;
	} else {
		var popup = window.open(req_url, "한국관광공사 통합로그인", options);
		if (popup == null){
			if (confirm("팝업차단설정이 되어있습니다. 팝업 해제후 다시 시도해주시기 바랍니다.")){
			}
		}
	}
}

// 0716 추가
/* Navigation Layer Popup */
function showNevi() {
	layerPopup.layerShow('popNavi');
	// $('.pop_navi').show();
	// $('.layerpop').css('top', (($(window).height() -
	// $('.layerpop').height())/2) + Number($(window).scrollTop()));
}

// 로딩화면 show
function showLoding() {
	if($('.loading').hasClass('defaultloading'))
		$('.loading').show();
}

// 로딩화면 show
function hideLoding() {
	$('.loading').hide();
}

function ctrim(stringToTrim) {
	// return stringToTrim.replace(/^\s+|\s+$/g,"");
	return stringToTrim.replace(/(\s*)/g,"");
}

function shareHistory(kind, shareCotid) {
	var sharekind;

	if( kind == 'facebook' ) {
		sharekind = 0;
	}else if( kind == 'twitter') {
		sharekind = 1;
	}else if( kind == 'kakaostory') {
		sharekind = 2
	}else if( kind == 'kakaotalk') {
		sharekind = 3
	}else if( kind == 'band') {
		sharekind = 4
	}

	if(!shareCotid) {
		if (typeof(ShareNewsSave) == 'function')
			ShareNewsSave(sharekind);
		return;
	}


	$.ajax({
		url: mainurl+'/call',
		dataType: 'json',
		type: "POST",
		data: {
			cmd : 'SHARE_HISTORY_SAVE',
			sharekind : sharekind+'',					// SNS 타입 : 000 ::
														// FACEBOOK, 001 ::
														// TWITTER, 002 ::
														// KAKAOSTORY , 003
														// :: KAKAOTALK, 004
														// :: BAND'
			cotid : shareCotid
		},
		success: function(data) {
			$("#conShare").text(Number($("#conShare").text())+1);

			if($("#conShare2").length >0){
				$("#conShare2").text(Number($("#conShare2").text())+1);
			}
		},
		complete: function() {
		},
		error: function(xhr, textStatus, errorThrown) {
		}
	});
}

// 타부서 메인 영역 클릭수 save
function goOtherDepartmentLogSave( smid, rotdid ) {
	if( rotdid == '' || rotdid == null || rotdid == undefined ) {
	} else {

		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'OTHER_DEPARTMENT_LOG_SAVE',
				smid : smid,
				otdid : rotdid
			},
			success: function(data) {
			},
			complete: function() {
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
	}
}

function goTagLogSave( rtagid ) {
	if( rtagid == '' || rtagid == null || rtagid == undefined ) {
	} else {

		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'TAG_LOG_SAVE',
				tagid : rtagid,
				otdid : '0a01eb7b-96de-11e8-8165-020027310001'
			},
			success: function(data) {
			},
			complete: function() {
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
	}
}

// 전체메인 메인 영역 클릭수 save
function goMainLogSave( smid ) {
	if( smid == '' || smid == null || smid == undefined ) {
	} else {

		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'MAIN_LOG_SAVE',
				smid : smid
			},
			success: function(data) {
			},
			complete: function() {
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
	}
}


// 전체메인 자자체 섹션 영역 클릭수 save
function goLocalGovernmentLogSave( rareacode, section, rurl, rtitle, rheader ) {
	if( rareacode == '' || rareacode == null || rareacode == undefined ) {
	} else {

		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'LOCAL_GOVERNMENT_LOG_SAVE',
				areaCode : rareacode+'',
				section : section+'',
				linkurl : rurl+'',
				title : quotReplace(rtitle),
				header : quotReplace(rheader)
			},
			success: function(data) {
			},
			complete: function() {
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
	}
}

// 전체메인 자자체 섹션(시군구) 영역 클릭수 save
function goLocalGovernmentSubLogSave( rareacode, rsigungucode, rtitle ) {
	if( rareacode == '' || rareacode == null || rareacode == undefined ) {
	} else {

		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'LOCAL_GOVERNMENT_SUB_LOG_SAVE',
				areaCode : rareacode+'',
				sigunguCode : rsigungucode+'',
				title : rtitle},
			success: function(data) {
			},
			complete: function() {
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
	}
}

// 홍보배너 영역 클릭수 save
function goBannerLogSave( rsection, rlinkUrl, rtitle ) {
	if( rsection == '' || rsection == null || rsection == undefined ) {
	} else {

		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'BANNER_LOG_SAVE',
				section : rsection+'',
				linkurl : rlinkUrl+'',
				title : rtitle},
			success: function(data) {
			},
			complete: function() {
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
	}
}

function goSubMainMarketingSave( rkind, rlinkurl, rtitle, rcotid, rcontenttype ) {

	var maintitle = '';

	if( rkind == 'Recom') {
		maintitle = '추천메인';
	} else if( rkind == 'Course') {
		maintitle = '코스메인';
	} else if( rkind == 'Tour') {
		maintitle = '명소목록';
	} else if( rkind == 'Notice') {
		maintitle = '소식목록';
	}

	goBannerLogSave( maintitle,rlinkurl, rtitle);

  	setTimeout(function () {
		if( rcotid == 'undefined' || rcotid == 'null' ) {
			if( rlinkurl.indexOf(mainurl) > -1  ) {
				location.href = rlinkurl;
			} else {
				window.open(rlinkurl)
			}
		} else {
			if( rcontenttype == '12' || rcontenttype == '14' || rcontenttype == '28' || rcontenttype == '38' || rcontenttype == '39' || rcontenttype == '32' || rcontenttype == '2000') {
				location.href = mainurl+'/detail/ms_detail.do?cotid='+rcotid;
			} else if( rcontenttype == '15' ) {
				location.href = mainurl+'/detail/fes_detail.do?cotid='+rcotid;
			} else if( rcontenttype == '25' ) {
				location.href = mainurl+'/detail/cs_detail.do?cotid='+rcotid;
			} else {
				if(rcontenttype == undefined || rcontenttype == null || rcontenttype == ''){
					location.href = mainurl+'/detail/rem_detail.do?cotid='+rcotid+'&con_type=10000';
				} else{
					location.href = mainurl+'/detail/rem_detail.do?cotid='+rcotid+'&con_type='+rcontenttype;
				}
			}
		}
  	}, 200) ;
}

function goMypage() {

	if( loginYn == 'N') {
		showLogin(1);
	} else {
		if( sloginType == '10' ) {
			layerPopup.layerShow('cosConfirm4');
			return;
		} else {
			location.href = "/mypage/mypage_main.do";
		}
	}
}

function quotReplace(Str) {
	if( Str == undefined || Str == 'undefined' || Str == null || Str == '' ) {
		return '';
	} else {
		return Str.replace(/\"/g,"&quot;").replace(/\'/g,"&#39;");
	}
}

function chkword(srch_val) {
	var reselt = "";

   	return srch_val.replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/\?/g,"&#63;");
/*
 * if( srch_val.toLowerCase().indexOf('script') > -1 ||
 * srch_val.toLowerCase().indexOf('innerhtml') > -1 ||
 * srch_val.toLowerCase().indexOf('iframe') > -1 ||
 * srch_val.toLowerCase().indexOf('frame') > -1 ||
 * srch_val.toLowerCase().indexOf('eval') > -1 ||
 * srch_val.toLowerCase().indexOf('javascript') > -1 ||
 * srch_val.toLowerCase().indexOf('cookie') > -1 ||
 * srch_val.toLowerCase().indexOf('onload') > -1 ||
 * srch_val.toLowerCase().indexOf('src') > -1 ||
 * srch_val.toLowerCase().indexOf('meta') > -1 ||
 * srch_val.toLowerCase().indexOf('vbscript') > -1 ) { reselt = "N"; }
 *
 * return reselt;
 */
}

function chkwordDecode(srch_val) {
	var reselt = "";
	return srch_val.replace(/&lt;/g, "<").replace(/&gt;/g, ">");
/*
 * if( srch_val.toLowerCase().indexOf('script') > -1 ||
 * srch_val.toLowerCase().indexOf('innerhtml') > -1 ||
 * srch_val.toLowerCase().indexOf('iframe') > -1 ||
 * srch_val.toLowerCase().indexOf('frame') > -1 ||
 * srch_val.toLowerCase().indexOf('eval') > -1 ||
 * srch_val.toLowerCase().indexOf('javascript') > -1 ||
 * srch_val.toLowerCase().indexOf('cookie') > -1 ||
 * srch_val.toLowerCase().indexOf('onload') > -1 ||
 * srch_val.toLowerCase().indexOf('src') > -1 ||
 * srch_val.toLowerCase().indexOf('meta') > -1 ||
 * srch_val.toLowerCase().indexOf('vbscript') > -1 ) { reselt = "N"; }
 *
 * return reselt;
 */
}

function chkalttag(srch_val){
	var result = srch_val;
	result = result.split('&lt;br&gt;').join(' ');
	result = result.split('&lt;/b&gt;').join(' ');
	result = result.split('&lt;b&gt;').join(' ');
	return result;
}

// 접속지역 save
function goConnectLocationLogSave( gaddress, gaddress2 ) {

	$.ajax({
		url: mainurl+'/call',
		dataType: 'json',
		type: "POST",
		data: {
			cmd : 'CONNECT_LOCATION_LOG_SAVE',
			areaname : gaddress+'',
			sigunguname : gaddress2+''},
		success: function(data) {
		},
		complete: function() {
		},
		error: function(xhr, textStatus, errorThrown) {
		}
	});
}

function setPrintContentLogSave(rcotid,crsid) {

	var obj = new Object();
		obj.cmd = 'PRINT_CONTENT_LOG_SAVE';
	if(rcotid)
		obj.cotid = rcotid;
	else if(crsid)
		obj.crsid = crsid;
	$.ajax({
		url: mainurl+'/call',
		dataType: 'json',
		type: "POST",
		data: obj,
		success: function(data) {
		},
		complete: function() {
		},
		error: function(xhr, textStatus, errorThrown) {
		}
	});
}

function goTagOtherSectionLogSave( rtagid, rotdid, rsection ) {

	if( rtagid == '' || rtagid == null || rtagid == undefined ) {
	} else {

		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'TAG_OTHER_SECTION_LOG_SAVE',
				tagid : rtagid,
				otdid : rotdid,
				section : rsection+''
			},
			success: function(data) {
			},
			complete: function() {
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
	}
}

function onlyNumber(event){
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 )
		return;
	else
		return false;
}

function removeChar(event) {
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 )
		return;
	else
		event.target.value = event.target.value.replace(/[^0-9]/g, "");
}

// 리스트 랜덤 정렬
function listRandomOrder(ul_class){
	$('.'+ul_class).each(function(){

		var len = $('.'+ul_class+' li').length;
		var ul = $(this);

		var liArr = ul.children('li');

		liArr.sort(function() {

				var temp = parseInt(Math.random()*len);

				var temp1 = parseInt(Math.random()*len); // ie 에서 동작하기 위해 필요, 크롬 파폭에서는 없어도 동작가능

				return temp1-temp;

		}).appendTo(ul);
	});
}

function getPlusDateTime(date, amountToAdd, unit) {
	switch (unit) {
		case "second":
			date.setSeconds(date.getSeconds() + amountToAdd)
			break
		case "minute":
			date.setMinutes(date.getMinutes() + amountToAdd)
			break
		case "hour":
			date.setHours(date.getHours() + amountToAdd)
			break
		case "day":
			date.setDate(date.getDate() + amountToAdd)
			break
		case "month":
			date.setMonth(date.getMonth() + amountToAdd)
			break
		case "year":
			date.setFullYear(date.getFullYear() + amountToAdd)
			break
	}
	return date
}

function addCookie(name, value, expire, unit) {
	const date = new Date()
	const expiry = getPlusDateTime(date, expire, unit)
	addCookie(name, value, expiry)
}

function addCookie(name, value, expiry) {
	document.cookie = name + '=' + escape(value) + '; path=/; expires=' + expiry.toString() + ';'
}

// 쿠키 설정
function setCookie(name, value, expiredays) {
    var todayDate = new Date();
    todayDate.setDate( todayDate.getDate() + expiredays );

    var CookieDate = new Date(todayDate.getFullYear(),todayDate.getMonth(),todayDate.getDate(),0,0,0)
    document.cookie = name + '=' + escape( value ) + '; path=/; expires=' + CookieDate.toString() + ';'
}

//쿠키 불러오기
function getCookie(name) {
    var obj = name + "=";
    var x = 0;
    while (x <= document.cookie.length) {
        var y = (x+obj.length);
        if ( document.cookie.substring( x, y ) == obj )
        {
            if ((endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
                endOfCookie = document.cookie.length;
            return unescape( document.cookie.substring( y, endOfCookie ) );
        }
        x = document.cookie.indexOf( " ", x ) + 1;
        if ( x == 0 ) break;
    }
}

function hiddenbanner() {
	$('.bannerLayer').removeClass('on');
}

function openWindow(linkurl) {
	if( appYn == 'Y') {
		location.href = "opentab://"+linkurl;
	} else {
		var popup = window.open(linkurl);
		if (popup == null){
			if (confirm("팝업차단설정이 되어있습니다. 팝업을 현재창에서 여시겠습니까?")){
				location.href = linkurl;
				return;
			}
		}
	}
}

function openImg(imgId) {
	if( appYn == 'Y') {
		location.href = "opentab://"+mainurl+'/common/image_viewer.do?imgId='+imgId;
	} else {
		var imgObj = new Image();
		imgObj.src = mainimgurl + imgId;
		setTimeout(function(){
			imageWin = window.open("", "profile_popup", "width=" + imgObj.width + "px, height=" + imgObj.height + "px");
			imageWin.document.write("<html><body style='margin:0; overflow-x:hidden; overflow-y:hidden;'>");
			imageWin.document.write("<a href=javascript:window.close()><img src='" + imgObj.src + "' border=0></a>");
			imageWin.document.write("</body><html>");
			imageWin.document.title = "Image Viewer";
		}, 100);
	}
}

function eventShare(kind){
	getShuturlEvent( mainurl+'/sns/snsShare.jsp?cotid='+sContentId+'&contenttype='+sContentType+'&title='+sContentTitle+'&img='+sContentImg,kind);
}

function goDetail(cotId, mod){
	if(mod == 'openWindow'){
		openWindow(mainurl+'/detail/detail_view.do?cotid='+cotId);
	} else {
		location.href = '/detail/detail_view.do?cotid='+cotId;
	}
}

function goTagList(ctype, tagname, rtagid ) {
	var agent = navigator.userAgent.toLowerCase();
	if (agent.indexOf('trident') != -1) {
		tagname = encodeURIComponent(tagname);
	}

	goTagLogSave(rtagid);

  	setTimeout(function () {
		if( ctype == '15' ) {
			location.href = '/list/fes_list.do?choiceTag='+tagname+'&choiceTagId='+rtagid;
		} else if( ctype == '25' ) {
			location.href = '/list/cs_list.do?choiceTag='+tagname+'&choiceTagId='+rtagid;
		} else {
			location.href = '/list/ms_list.do?choiceTag='+tagname+'&choiceTagId='+rtagid;
		}
  	}, 200) ;
}

// 요일 변환
function weekTrans(week, type){

	var weekTran = ''

	switch (week) {
	case 1: weekTran = '일'; break;
	case 2: weekTran = '월'; break;
	case 3: weekTran = '화'; break;
	case 4: weekTran = '수'; break;
	case 5: weekTran = '목'; break;
	case 6: weekTran = '금'; break;
	case 7: weekTran = '토'; break;
	default: return '';
	}

	if(type == 1) weekTran += '요일';
	return weekTran;
}

function profileImg(items){

	var strHtml = '	<div class="profile">';
	if(items.snsType == '10'){
		strHtml += '		<div class="photo"></div>';
	} else {
		strHtml += '		<div class="photo"><img id="'+items.snsId+'" src="'+items.snsImg+'" alt="'+items.userName+' 님의 프로필 사진" onerror="this.style.visibility=\'hidden\'"></div>';

		switch (items.snsType+'') {	// 프로필 사진
		case '0':	// 페이스북
			strHtml += '<span class="ico"><img src="../resources/images/sub/ico_facebook.png" alt="페이스북"></span>';
			break;
		case '1':	// 트위터
			strHtml += '<span class="ico"><img src="../resources/images/sub/ico_twitter.png" alt="트위터"></span>';
			break;
		case '2':	// 인스타그램
			strHtml += '<span class="ico"><img src="../resources/images/sub/ico_insta.png" alt="인스타그램"></span>';
			break;
		case '4':	// 네이버
			strHtml += '<span class="ico"><img src="../resources/images/sub/ico_naver.png" alt="네이버"></span>';
			break;
		case '5':	// 카카오톡
			strHtml += '<span class="ico"><img src="../resources/images/sub/ico_kakao.png" alt="카카오톡"></span>';
			break;
		case '6':	// 구글
			strHtml += '<span class="ico"><img src="../resources/images/sub/ico_plus.png" alt="구글"></span>';
			break;
		case '7':	// 애플
			strHtml += '<span class="ico"><img src="../resources/images/sub/ico_apple.png" alt="애플"></span>';
			break;
		}
	}
	strHtml += '	</div>';

	return strHtml;
}

function getRegionNameByCode(code) {
	switch (code) {
		case 1: return "서울";
		case 2: return "인천";
		case 3: return "대전";
		case 4: return "대구";
		case 5: return "광주";
		case 6: return "부산";
		case 7: return "울산";
		case 8: return "세종시";
		case 31: return "경기도";
		case 32: return "강원도";
		case 33: return "충청북도";
		case 34: return "충청남도";
		case 35: return "경상북도";
		case 36: return "경상남도";
		case 37: return "전라북도";
		case 38: return "전라남도";
		case 39: return "제주도";
		default: return "";
	}
}

function getRegionCodeByName(name) {
	switch (name) {
		case "서울": return  1;
		case "인천": return  2;
		case "대전": return  3;
		case "대구": return  4;
		case "광주": return  5;
		case "부산": return  6;
		case "울산": return  7;
		case "세종시": return  8;
		case "경기":
		case "경기도": return 31;
		case "강원":
		case "강원도": return 32;
		case "충북":
		case "충청북도": return 33;
		case "충남":
		case "충청남도": return 34;
		case "경북":
		case "경상북도": return 35;
		case "경남":
		case "경상남도": return 36;
		case "전북":
		case "전라북도": return 37;
		case "전남":
		case "전라남도": return 38;
		case "제주":
		case "제주도": return 39;
		default: return -1;
	}
}

function CreateDate(Stringdate){

	var year = Stringdate.substring(0,4);
	var month = Stringdate.substring(5,7);
	var day = Stringdate.substring(8,10);
	var hour = Stringdate.substring(11,13);
	var minute = Stringdate.substring(14,16);
	var date = new Date(year,month-1,day,hour,minute);

	return date;
}

function getReadNumber(num){

	if(!isNaN(num)){
		if(num > 999999){
			num =  Math.round(num /100000) /10+ 'M';
		} else if(num > 999){
			num = Math.round(num /100) /10+ 'K';
		}
	}

	return num;
}


function setGtmSnsDimensions() {
	if (typeof dataLayer == 'undefined' || dataLayer == null) return;

//	let d6 = gaCookie == null || gaCookie == '' ? null : gaCookie;
	let d7 = snsId == null ? null : snsId;
	let d8 = snsRegYmd == null ? null : snsRegYmd;
	let d9 = loginYn == 'Y' ? loginYn : null;
	let d10 = snsChannel == null ? null : snsChannel;

	dataLayer.push({
		"dimension7": d7,
		"dimension8": d8,
		"dimension9": d9,
		"dimension10": d10,
	});
}

$.ajaxSetup({
	beforeSend: function(xmlHttpRequest, settings) {
		const uri = settings.data
		if (uri === undefined) {
			return
		}
		try {
			/**
			 * - 관리 항목
			 * 콘텐츠 상세 소비 : VIEW
			 * 좋아요 : LIKE
			 * 즐겨찾기 : BOOKMARK
			 * 공유하기 : SHARE
			 * 사용자 사진 등록 : UPLOAD_PHOTO
			 * 관광정보 수정요청 : REQUEST_EDIT_CONTENT
			 * 인쇄하기 : PRINT
			 * 사용자 댓글 작성 : COMMENT
			 * 사용자 댓글 좋아요 : COMMENT_LIKE
			 * 사용자 댓글 답글 작성 : COMMENT_REPLY
			 * 태그 클릭 : TAG
			 * 지역 클릭 : AREA
			 * 내/외부 검색 키워드 : SEARCH_KEYWORD
			 */
			const traceCommands = [
				"CONTENT_VIEW_LOG_SAVE",	//	콘텐츠 상세 소비
				"CONTENT_LIKE_SAVE", 	//	좋아요
				"FAVO_CONTENTINFO_SAVE",	//	즐겨찾기
				"SHARE_HISTORY_SAVE",	//	공유하기
				"USER_IMG_UPLOAD",	//	사용자 사진 등록
				"MY_JIKIMI_SAVE",	//	관광정보 수정요청
				"PRINT_CONTENT_LOG_SAVE",	//	인쇄하기
				"CONTENT_COMMENT_SAVE",	//	사용자 댓글 작성
				"SNS_COMMENT_LIKE_SAVE",	//	사용자 댓글 좋아요
				"CONTENT_RECOMMENT_SAVE",	//	사용자 댓글 답글 작성
				"TAG_LOG_SAVE",	//	태그 클릭
				"AREA_TAB_VIEW",	//	지역 클릭 - 지역메인 > 지자체 쇼케이스
				"AREA_LOG_SAVE",	//	지역 클릭 - 지역메인 > 지자체 쇼케이스
				"INSERT_USER_SEARCH_KEYWORD",	//	내부 검색, 외부 서비스의 검색을 통한 유입
			]
			const parameters = getParameterFromUri(decodeURIComponent(uri))
			const command = parameters.cmd
			if (traceCommands.indexOf(command) !== -1) {
				traceSave(parameters)
				if (!settings.enable) {
					// xmlHttpRequest.abort()
				}
			}
		} catch (e) {
			console.error('error', e)
		}
	}
})

function saveAreaClickLog(areaCode, sigunguCode) {
	$.ajax({
		url: mainurl + '/call',
		dataType: 'json',
		type: "POST",
		enable: false,	//	false 일 경우 실제 요청을 하지 않음
		data: {
			cmd: 'AREA_LOG_SAVE',
			fromUri: window.location.pathname,
			areaCode: areaCode,
			sigunguCode: sigunguCode
		},
		success: function(data) {
		},
		complete: function() {
		},
		error: function(xhr, textStatus, errorThrown) {
		}
	});
}

function traceSave(parameters) {
	const actionType = {
		CONTENT_VIEW_LOG_SAVE: 'VIEW',
		CONTENT_LIKE_SAVE: 'LIKE',
		FAVO_CONTENTINFO_SAVE: 'BOOKMARK',
		SHARE_HISTORY_SAVE: 'SHARE',
		USER_IMG_UPLOAD: 'UPLOAD_PHOTO',
		MY_JIKIMI_SAVE: 'REQUEST_EDIT_CONTENT',
		PRINT_CONTENT_LOG_SAVE: 'PRINT',
		CONTENT_COMMENT_SAVE: 'COMMENT',
		SNS_COMMENT_LIKE_SAVE: 'COMMENT_LIKE',
		CONTENT_RECOMMENT_SAVE: 'COMMENT_REPLY',
		TAG_LOG_SAVE: 'TAG',
		AREA_TAB_VIEW: 'AREA',
		AREA_LOG_SAVE: 'AREA',
		INSERT_USER_SEARCH_KEYWORD: 'SEARCH_KEYWORD',
	}
	const action = parameters
	action.command = parameters.cmd
	action.type = actionType[parameters.cmd]
	action.ga = getCookie('_ga')
	if (hasText(snsId)) {
		action.snsId = snsId
	}
	delete action.cmd
	if (!isProduction) {
		console.log('action', action)
	}
	postAction(action)
	putRenewal()
}

function getPeriodOfDates(from, to) {
	const times = to - from
	const seconds = times / 1000
	return {
		seconds: seconds,
		minutes: seconds / 60,
		hours: seconds / 60 / 60,
		dates: seconds / 60 / 60 / 24,
	}
}

function putRenewal() {
	const TRACK_GA_LATEST_MODIFY_TIME_KEY = "t:g_lmt"
	const trackGaLatestModifyTime = localStorage.getItem(TRACK_GA_LATEST_MODIFY_TIME_KEY)
	if (trackGaLatestModifyTime !== null) {
		const period = getPeriodOfDates(new Date(Number.parseInt(trackGaLatestModifyTime)), new Date())
		if (period.dates >= 1) {
			const nowTime = new Date().getTime()
			localStorage.setItem(TRACK_GA_LATEST_MODIFY_TIME_KEY, nowTime.toString())
		} else {
			return
		}
	} else {
		const nowTime = new Date().getTime()
		localStorage.setItem(TRACK_GA_LATEST_MODIFY_TIME_KEY, nowTime.toString())
	}
	$.ajax({
		url: mainurl + '/api/v1/track/renewal',
		// url: 'http://localhost:7777/api/v1/track/renewal',
		type: 'PUT',
		dataType: 'json',
		xhrFields: {
			withCredentials: true
		},
		headers: { 'Content-Type': 'application/json' }
	})
}

function postAction(action) {
	$.ajax({
		url: mainurl + '/api/v1/track',
		// url: 'http://localhost:7777/api/v1/track',
		type: 'POST',
		dataType: 'json',
		xhrFields: {
			withCredentials: true
		},
		headers: {
			'Content-Type': 'application/json'
		},
		data: JSON.stringify(action),
		success: function(response) {

		}
	})
}

function getParameterFromUri(uri) {
	const parameters = uri.split('&');
	const parameterObject = {}

	for (let i = 0; i < parameters.length; i++) {
		const parameter = parameters[i].split('=')
		const key = parameter[0].toLowerCase()
		if (key.indexOf("[]") !== -1) {
			const substrKey = key.replace("[]", "")
			if (parameterObject[substrKey] !== undefined) {
				parameterObject[substrKey].push(parameter[1])
			} else {
				parameterObject[substrKey] = [parameter[1]]
			}
		} else {
			parameterObject[key] = parameter[1]
		}
	}
	return parameterObject
}

function hasText(str) {
	return str !== undefined && str !== 'null' && str !== '';
}
