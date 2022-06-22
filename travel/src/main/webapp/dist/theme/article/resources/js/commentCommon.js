var commentInsertCheck = true;
var firstcomment = 0;
var img = 0;
var p_obj = '';
var stotalCount = 0;
var firstCommentCount = 0;
var spage = 1;
var scnt = 5;
var pcnt = 5;
var moreCnt = 5;
var cmtId = '';
var reportcmtId = '';
var reportimgId = '';
var reportCheck = false;

function CommentDefaultSetting(){
	$("input[name='reportForm']:radio").change(function () {
		var val = this.value;
		if(val == '기타'){
			$('#commentreportetc').removeAttr('disabled');
		} else{
			$('#commentreportetc').attr('disabled','true');
			$('#commentreportetc').val('');
		}
	});

	var title = contitle;
	if(title.length > 12)
		title = title.substring(0,12)+'..';
	$('#commentPop .estimate_txt').html('<p>여행톡을 남기기 전 콘텐츠에 대한 평가를 해 주세요! <br>서비스 개선에 큰 도움이 됩니다!</p>');
	$('#commentPop .tit h2 span').html('“'+quotReplace(title)+'”');
}

function getContentCommentInfo() {
	//댓글 가져오기
	$.ajax({
		url: mainurl+'/call',
		dataType: 'json',
		type: "POST",
		data: {
			cmd : 'CONTENT_COMMENT_INFO_VIEW',
			cotid : cotid,
			page : spage+'',
			cnt : scnt+'',
			morecnt : moreCnt+'',
			cmtId : cmtId
		},
		success: function(data) {
			goContentCommentInfoView(data);
		},
		complete: function() {
		},
		error: function(xhr, textStatus, errorThrown) {
		}
	});
}

function getContentFirstCommentInfo() {
	//댓글 가져오기
	$.ajax({
		url: mainurl+'/call',
		dataType: 'json',
		type: "POST",
		data: {
			cmd : 'CONTENT_FIRST_COMMENT_INFO_VIEW',
			cotid : cotid
		},
		success: function(data) {
			goContentCommentInfoView(data, true);
		},
		complete: function() {
			CommentDefaultSetting();
		},
		error: function(xhr, textStatus, errorThrown) {
		}
	});
}



$('#comment').click(function(){
	if( uid == null || uid == '' || uid == 'null' || uid == undefined ) {
		showLogin(2);
	} else if(!$('input:radio[name=estimateForm]').is(":checked")){
		layerPopup.layerShow('commentPop');
	}
});

//댓글 표시하기
function goContentCommentInfoView(data,first) {
	
	var strHtml = '';
	
	uid = data.header.id;

	stotalCount = data.body.totalCount;
	$('.tit_reply span').html(stotalCount);
	
	var countindex = 0;
	
	if(first){
		if(data.body.result != undefined )
			firstCommentCount = data.body.result.length; 
	}
	hideMoreBtn(); 
	if( data.body.result != undefined ) {
		
			var firstcomment2;
		$.each(data.body.result, function (index, items) {
			if(index == 0 && spage != 1)
				firstcomment2 = items.cmtId;
				
			if(firstcomment == 0){
				if(cmtId != '')
					cmtId += ','+items.cmtId;
				else
					cmtId += items.cmtId;
			}
			strHtml = '';
			if(items.missionyn && items.missionyn > 0 && !items.isDelete){
				strHtml += '<li id="'+items.cmtId+'" class="level_mission">';
				var date = new Date(items.missionday.substring(0,4)+'-'+items.missionday.substring(4,6));
				strHtml += '<div class="mission"><span>여행구독 '+(date.getMonth()+1)+'월 미션 진행 중</span></div>';
			} else
			strHtml += '<li id="'+items.cmtId+'">';
			switch (items.isDelete) {
			case 1: strHtml += '<p class="dleTxt">삭제된 댓글입니다.</p>'; break;
			case 2: strHtml += '<p class="dleTxt">관리자에 의해 삭제된 댓글입니다.</p>'; break;
			case 3: strHtml += '<p class="dleTxt">신고 접수되어 관리자가 검토중인 댓글입니다.</p>'; break;
			default:
				strHtml += '<div class="profile">';
				
				// 카카오톡 이미지 http로 불러오는 문제 해결
					var profileImg = '';
				if(items.url){
					profileImg = items.url.replace('http://', 'https://');
					profileImg = profileImg.replace('th-p.talk.kakao.co.kr', 'k.kakaocdn.net');
				}
				
				if( items.snsType == '99') {	// admin
					strHtml += '<div class="photo"><img src="../resources/images/sub/icon_reply_logo.png" alt="대한민국 구석구석"></div>';
				} else {
					strHtml += '<div class="photo" icid="'+items.cmtId+'"><img src="'+profileImg+'" alt="프로필 사진"></div>';
				}
			
				if( items.snsType == '4') {
					strHtml += '    <span class="ico"><img src="../resources/images/sub/ico_naver.png" alt="네이버"></span>';
				} else if( items.snsType == '0') {
					strHtml += '    <span class="ico"><img src="../resources/images/sub/ico_facebook.png" alt="페이스북"></span>';
				} else if( items.snsType == '1') {
					strHtml += '    <span class="ico"><img src="../resources/images/sub/ico_twitter.png" alt="트위터"></span>';
				} else if( items.snsType == '5') {
					strHtml += '    <span class="ico"><img src="../resources/images/sub/ico_kakao.png" alt="카카오"></span>';
				} else if( items.snsType == '6') {
					strHtml += '    <span class="ico"><img src="../resources/images/sub/ico_plus.png" alt="구글"></span>';
				} else if( items.snsType == '2') {
					strHtml += '    <span class="ico"><img src="../resources/images/sub/ico_insta2.png" alt="인스타그램"></span>';
				} else if( items.snsType == '7') {
					strHtml += '    <span class="ico"><img src="../resources/images/sub/ico_apple.png" alt="애플"></span>';
				}
				 
				strHtml += '</div>';
				strHtml += '<div class="txt_reply">';
				
				if (items.imgId != null){
					strHtml += '	<div class="imgArea">';
					strHtml += '	<span class="img">';
						strHtml += '	<img src="'+mainimgurl+items.imgId+'&mode=custom&width=250">';
					strHtml += '	</span>';
					if(items.isDelete < 1 && uid != items.snsId) {
						strHtml += '	<span class="btn_report"><button type="button" onclick="OpenReportPopup(\'' + items.cmtId + '\',\'' + items.imgId + '\');">신고하기</button></span>';
					}
					strHtml += '	</div>';
				}
				strHtml += '	<p>'+items.comment+'</p>';
				strHtml += '	<div class="date">';

				if( items.snsType == '99') {	// admin
					strHtml += '	<em class="name">대한민국 구석구석</em>';
				} else {
					strHtml += '	<em class="name">'+items.screenName+'</em>';
				}
				
				strHtml += '		<span>'+conDateFormat(items.createDate,"yyyyMMdd","-")+'</span>';
				strHtml += '	</div>';
				strHtml += '</div>';
				
				if( uid == items.snsId) {
					strHtml += '<button type="button" title="열기" class="btn_view">더보기</button>';
					strHtml += '<div class="pop_subMenu">';
					strHtml += '<ul>';
					strHtml += '    <li class="btn_del"><a href="javascript:;" onclick=delComment("'+items.cmtId+'")>삭제</a></li>';
					strHtml += '</ul>';
					strHtml += '</div>';
				}
			}
			
			strHtml += '<span class="replyBtn active">';
			if(items.isDelete < 1){
				if(items.islike){
					if(items.islike > 0)
						strHtml += '<button type="button" class="btn1 on"><span>'+items.likecnt+'</span></button>';
					else
						strHtml += '<button type="button" class="btn1"><span>'+items.likecnt+'</span></button>';
				} else
					strHtml += '<button type="button" class="btn1"><span>'+items.likecnt+'</span></button>';
			}
			strHtml += '<button type="button" class="btn2"><span>0</span></button>';
			strHtml += '</span>';
			if(items.isDelete < 1 && uid != items.snsId) {
				if (items.imgId == null) {
					strHtml += '<span class="btn_report"><button type="button" onclick="OpenReportPopup(\'' + items.cmtId + '\');">신고하기</button></span>';
				}
			}
			strHtml += '<div class="replyBox">';
			strHtml += '	<ul>';
			strHtml += '	</ul>';
			strHtml += '</div>';
			strHtml += '</li>';

			$('.list_reply > ul').append(strHtml);
					
			$('#'+items.cmtId+' .replyBtn > button').on('click', function() {

				if($(this).hasClass('btn1')){
					if( loginYn == 'N') {
						showLogin(2);
						return;
					}
					if($(this).hasClass('on')){
						CommentLike($(this).closest('li').attr('id'),$(this),1);
					} else{
						CommentLike($(this).closest('li').attr('id'),$(this),0);
					}
				} else{
					if ($('#'+items.cmtId+' .replyBox').is(':visible')) {
						$('#'+items.cmtId+' .replyBox').hide();
					} else {
						$('#'+items.cmtId+' .replyBox').show();
					}
				}
			});
			
		});
		
	
		$.each(data.body.result, function (index, items) {
			$('.list_reply ul li .profile .photo[icid='+items.cmtId+'] img').error(function() {
				$('.list_reply ul li .profile .photo[icid='+items.cmtId+'] img').remove();
			});
			
			// 삭제 처리된 댓글에 답글을 추가 못하게 수정
			switch (items.isDelete) {
			case 1: case 2: case 3: // 삭제 처리된 댓글의 답글이 0개일 때 영역이 조금 잡히는 현상 수정
				if($('#'+items.cmtId+' .replyBtn > button > span').text() == ''){
					$('#'+items.cmtId+' .replyBox').remove();
				}
				break;
			default:
				strHtml = '';
				strHtml += '<li class="inputcomment">';
				strHtml += '	<div class="mLine">';
				strHtml += '		<div class="replyForm">';
				strHtml += '			<form name="form">';
				strHtml += '				<label class="blind" for="replyForm">답글을 입력하세요.</label>';
				strHtml += '				<textarea class="comment" id="replyForm" rows="" placeholder="답글을 입력하세요." cols=""></textarea>';
				strHtml += '				<div class="btn">';
				strHtml += '					<span class="fileRegbtn">';
				strHtml += '						<input type="file" class="fileUp" id="fileUp'+items.cmtId+'" name="fileUp'+items.cmtId+'" onchange="fileChange(this)"/>';
				strHtml += '						<label for="fileUp'+items.cmtId+'" class="btn_fileUp">파일찾기</label>';
				strHtml += '					</span>';
				strHtml += '					<a href="javascript:;" class="btn_apply ContentComment">등록</a>';
				strHtml += '				</div>';
				strHtml += '			</form>';
				strHtml += '		</div>';
				strHtml += '	</div>';
				strHtml += '</li>';
				
				$('#'+items.cmtId+' .replyBox > ul').append(strHtml);
			}
		});
		
		$('.recomments').remove(); 
		$.each(data.body.recomment, function (index, items) {

			strHtml = '';
			strHtml += '<li class="recomments" id="'+items.cmtId+'" >';
			strHtml += '	<div class="mLine">';
			switch (items.isDelete) {
			case 1: strHtml += '<p class="dleTxt">삭제된 답글입니다.</p>'; break;
			case 2: strHtml += '<p class="dleTxt">관리자에 의해 삭제된 답글입니다.</p>'; break;
			case 3: strHtml += '<p class="dleTxt">신고 접수되어 관리자가 검토중인 답글입니다.</p>'; break;
			default:
				strHtml += '		<div class="profile">';
			
				if( items.snsType == '99') {	// admin
					strHtml += '<div class="photo"><img src="../resources/images/sub/icon_reply_logo.png" alt="대한민국 구석구석"></div>';
				} else {
					strHtml += '<div class="photo" icid="'+items.cmtId+'">';
					if ($.trim(items.url) != '') {
						
						// 카카오톡 이미지 http로 불러오는 문제 해결
						var profileImg = items.url.replace('http://', 'https://');
						profileImg = profileImg.replace('th-p.talk.kakao.co.kr', 'k.kakaocdn.net');
						
						strHtml += '<img src="'+profileImg+'" alt="프로필 사진">';
					}
					strHtml += '</div>';
				}
				
				if( items.snsType == '4') {
					strHtml += '    <span class="ico"><img src="../resources/images/sub/ico_naver.png" alt="네이버"></span>';
				} else if( items.snsType == '0') {
					strHtml += '    <span class="ico"><img src="../resources/images/sub/ico_facebook.png" alt="페이스북"></span>';
				} else if( items.snsType == '1') {
					strHtml += '    <span class="ico"><img src="../resources/images/sub/ico_twitter.png" alt="트위터"></span>';
				} else if( items.snsType == '5') {
					strHtml += '    <span class="ico"><img src="../resources/images/sub/ico_kakao.png" alt="카카오"></span>';
				} else if( items.snsType == '6') {
					strHtml += '    <span class="ico"><img src="../resources/images/sub/ico_plus.png" alt="구글"></span>';
				} else if( items.snsType == '2') {
					strHtml += '    <span class="ico"><img src="../resources/images/sub/ico_insta2.png" alt="인스타그램"></span>';
				} else if( items.snsType == '7') {
					strHtml += '    <span class="ico"><img src="../resources/images/sub/ico_apple.png" alt="애플"></span>';
				}
				
				strHtml += '		</div>';
				strHtml += '		<div class="txt_reply">';
				
				if (items.imgId != null){
					strHtml += '	<div class="imgArea"><img src="'+mainimgurl+items.imgId+'&mode=custom&width=250"></div>';
				}
				
				strHtml += '			<p>'+items.comment+'</p>';
				strHtml += '			<div class="date">';
				
				if( items.snsType == '99') {	// admin
					strHtml += '		<em class="name">대한민국 구석구석</em>';
				} else {
					strHtml += '		<em class="name">'+items.screenName+'</em>';
				}
				
				strHtml += '			<span>'+conDateFormat(items.createDate,"yyyyMMdd","-")+'</span>';
				strHtml += '			</div>';
				strHtml += '		</div>';
				strHtml += '<span class="replyBtn">';
				if(items.isDelete < 1){
					if(items.islike){
						if(items.islike > 0)
							strHtml += '<button type="button" class="btn1 on"><span>'+items.likecnt+'</span></button>';
						else
							strHtml += '<button type="button" class="btn1"><span>'+items.likecnt+'</span></button>';
					} else
						strHtml += '<button type="button" class="btn1"><span>'+items.likecnt+'</span></button>';
				}
				strHtml += '</span>';
				if( uid == items.snsId) {
					strHtml += '		<button type="button" title="열기" class="btn_view">더보기</button>';
					strHtml += '	<div class="pop_subMenu">';
					strHtml += '		<ul>';
					strHtml += '			<li class="btn_del"><a href="javascript:;" onclick=delComment("'+items.cmtId+'")>삭제</a></li>';
					strHtml += '		</ul>';
					strHtml += '	</div>';
				}
			}
			
			strHtml += '	</div>';
			if(items.isDelete < 1 && uid != items.snsId) {
				if (items.imgId != null ) {
					strHtml += '<span class="btn_report"><button type="button" onclick="OpenReportPopup(\'' + items.cmtId + '\',\'' + items.imgId + '\');">신고하기</button></span>';
				} else {
					strHtml += '<span class="btn_report"><button type="button" onclick="OpenReportPopup(\'' + items.cmtId + '\');">신고하기</button></span>';
				}
			}
			strHtml += '</li>';

			if($('#'+items.parentCmtId+' .replyBox ul .inputcomment').length)
				$('#'+items.parentCmtId+' .replyBox ul .inputcomment').before(strHtml);
			else
				$('#'+items.parentCmtId+' .replyBox ul').html(strHtml);

			$('#'+items.cmtId+' .mLine .replyBtn > button').on('click', function() {

					if( loginYn == 'N') {
						showLogin(2);
						return;
					}

					if($(this).hasClass('on')){
						CommentLike($(this).closest('li').attr('id'),$(this),1);
					} else{
						CommentLike($(this).closest('li').attr('id'),$(this),0);
					}
			});
		});
		
		
		$.each(data.body.recommentCnt, function (index, items) {
			cnt = items.cnt;
			if (cnt > 0) {
				$('#'+items.parentCmtId+' .replyBtn').addClass('num');
				$('#'+items.parentCmtId+' .replyBtn > .btn2 > span').html(cnt);
			} else {
				if ($('#'+items.parentCmtId+' .dleTxt').length)
					$('#'+items.parentCmtId+' .replyBtn > .btn2').remove();
			}
		});

		if(firstcomment != 0){
			if(data.body.result.length > 0){
				setTimeout(function () {
					$('#'+data.body.result[0].cmtId+' .replyBtn.active .btn1').focus();
				}, 200) ;
			}
		}
		$('#'+firstcomment2+' .replyBtn button').focus();
		
		if( uid == null || uid == '' || uid == 'null' || uid == undefined ) {
			$('.comment').attr('placeholder', '로그인 후 소중한 답글을 남겨주세요.');
		}
		
		$('.comment').click(function(){
			if( uid == null || uid == '' || uid == 'null' || uid == undefined ) {
				showLogin(2);
			}
		});
		
		$('.fileRegbtn').click(function(){
			if( uid == null || uid == '' || uid == 'null' || uid == undefined ) {
				showLogin(2);
			}
		});
		
		$('.list_reply').show();
		$('.reply_none').hide();
		$('.replyBox').hide();
		
	} else {
		if(data.body.totalCount < 1)
			$('.reply_none').show();
		else {
			$('.replyWrap .reply_none').closest('.wrap_reply').remove();
			$('#commentMore').show();
		}
	}

	if(loginYn =="Y"){
		$(".btn_apply").text("등록");
		$(".replyWrap").addClass('login');
	} else{
		$(".btn_apply").text("로그인");
		$('#comment').attr('readonly', true);
		$('.comment').attr('readonly', true);
		$('#fileUp').attr('disabled', true);
		$('.fileUp').attr('disabled', true);
	}


}

//댓글 더보기 클릭시
$(document).on("click",".btn_center .btn_more",function(){
	if(firstcomment != 0){
		spage++;
	} else{
		firstcomment = 1
	}
	
	hideMoreBtn();
	
	getContentCommentInfo();
});	

function hideMoreBtn() {
	if(firstcomment == 0){
		if(firstCommentCount > 0 && stotalCount > 2)
			$('#commentMore').show();
		else if(firstCommentCount < 2 && stotalCount > 1)
			$('#commentMore').show();
		else if(firstCommentCount == 0 && stotalCount > 0)
			$('#commentMore').show();
	} else if(firstcomment == 1){
		if( stotalCount > 2 ) {
			$('#commentMore').show();
		} else {
			$('#commentMore').hide();
		}
		firstcomment = 2;
		spage = 1 ;
		scnt = pcnt;
	} else {
		if(scnt != moreCnt){
			if(spage == 2 && stotalCount > (scnt+(moreCnt)))
				$('#commentMore').show();
			else if( stotalCount > (scnt+(moreCnt*(spage-1))) ) 
				$('#commentMore').show();
			else
				$('#commentMore').hide();
		} else{
			if( stotalCount > (2+(scnt*spage)) ) 
				$('#commentMore').show();
			else
				$('#commentMore').hide();
		}
	}
}

function delComment(cmtid) {
	if( confirm("댓글을 삭제하시겠습니까 ?") == true) {
		
		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'CONTENT_COMMENTINFO_DELTETE',
				cotid : cotid,
				cmtid : cmtid
			},
			success: function(data) {
				try {
					spaCallback("sapContentCommentAddDelete");
				} catch (e) {
				}
				$('.pop_subMenu').removeClass('on');
				$('.dimmed2').remove();
				
				spage = 1;
				scnt = pcnt;
				firstcomment = 0;
				cmtId = '';
				$('.list_reply ul li').remove();
				getContentFirstCommentInfo();
			},
			complete: function() {
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
	}
}

//댓글 등록
$(document).on("click",".write .ContentComment",function(){

	if( loginYn == 'N') {
		showLogin(2);			
	} else {
		if( sloginType == '10' ) {
			layerPopup.layerShow('cosConfirm4');
			return;
		} else {

			var title = contitle;
			if(title.length > 10)
				title = title.substring(0,10)+'..';

			if($('#commentfile').find('img').attr('src') == undefined){
				saveContentComment('');
			} else {
				if( appYn == 'Y' && getDevice() == 'Android') {
					var fileuploadlist = AppsaveName+'|'+AppfullPath;
					saveContentComment(fileuploadlist);
				} else {
					var form = $('#tform')[0];
					var formData = new FormData(form);
					console.log(formData);
					$.ajax({
						url: mainUploadUrl,
						type: 'POST',
						enctype: 'multipart/form-data',
						cache : false,
						contentType: false,
						processData: false,
						data: formData,
						success : function (data) {
							var obj = JSON.parse(data);
							var savename = obj.body.result[0].saveName;
							var dot = savename.indexOf(".");
							savename = savename.substr(0,dot);
							
							var fullPath = obj.body.result[0].fullPath;
							fullPath = fullPath.replace('/data/images','');
							
							var fileuploadlist = savename+'|'+fullPath;
							saveContentComment(fileuploadlist);
						},
						error: function(xhr, textStatus, errorThrown) {
						}
					});
				}
			}
		}
	}
});

//댓글 저장
function saveContentComment(fileuploadlist){
	if(commentInsertCheck == false){
		return;
	};
	var comment = $('#comment').val();

	if( comment != '' || fileuploadlist != '') {

		let kind = 0;
		if($('input:radio[id=estimateForm2]').is(":checked"))
			kind = 2;
		else if($('input:radio[id=estimateForm1]').is(":checked"))
			kind = 1;
		else{
			alert('새로고침 후 평가를 선택해주세요.');
			return;
		}

		commentInsertCheck = false;
		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'CONTENT_COMMENT_SAVE',
				cotid : cotid,	
				comment : chkword(comment),
				fileuploadlist : fileuploadlist ,
				tnmid: tnmid ? tnmid : '',
				kind : kind
			},
			success: function(data) {
				if(data.header.process != 'fail'){

					commentInsertCheck = true;
					if(data.header.tnmid){
						try {
							spaCallback('sapContentCommentAdd');
						} catch (e) {
						}
						if (confirm('여행구독 미션에 참여되었습니다!\r\n' +
							'미션 승인이 완료되면, 다음 달 레벨 업과 함께 특별한 여행복권의 기회가 주어집니다. \r\n' +
							'MY 페이지를 통해 확인해보시겠습니까?')) location.href = '/mypage/mypage_mission_trss.do'
					} else
						try {
							spaCallback('contentPhotoAdd');
						} catch (e) {
						}
						alert('댓글등록을 완료하였습니다.');
					spage = 1;
					scnt = pcnt;
					firstcomment = 0;
					cmtId = '';
					$('.list_reply ul li').remove();
					$('#commentfile').remove();
					getContentFirstCommentInfo();
					 $('#comment').val('');

				} else if(data.header.ment == 'snsId is Problem'){
					commentInsertCheck = true;
					alert('콘텐츠 내용과 관계 없는 댓글을 등록하여 \n 댓글 등록이 거부되었습니다.');
				}
			},
			complete: function() {
				$('#tform').closest('.form').find('.fileLayer').remove();
			},
			error: function(xhr, textStatus, errorThrown) {
				commentInsertCheck = true;
			}
		});
	} else {
		alert('댓글을 입력하세요.');
		return;
	}
}

// 답글 등록
$(document).on("click",".replyForm .ContentComment",function(){
	if( loginYn == 'N') {
		showLogin(2);			
	} else {
		if( sloginType == '10' ) {
			layerPopup.layerShow('cosConfirm4');
			return;
		} else {
			var commentNode = $(this);
			if(commentNode.closest('.inputcomment').next().find('img').attr('src') == undefined){
				saveContentReComment(commentNode, '');
			} else {
				if( appYn == 'Y' && getDevice() == 'Android') {
					var fileuploadlist = AppsaveName+'|'+AppfullPath;
					saveContentReComment(commentNode, fileuploadlist);
				} else {
					var form = commentNode.closest('form')[0];
					var formData = new FormData(form);
			        
					$.ajax({
				        url: mainUploadUrl,
				        type: 'POST',
				        enctype: 'multipart/form-data',
				        cache : false,
				        contentType: false,
				        processData: false,
				        data: formData,
				        success : function (data) {
				        	var obj = JSON.parse(data);
				        	var savename = obj.body.result[0].saveName;
				        	var dot = savename.indexOf(".");
				        	savename = savename.substr(0,dot);
				        	
				        	var fullPath = obj.body.result[0].fullPath;
				        	fullPath = fullPath.replace('/data/images','');
				        	
				        	var fileuploadlist = savename+'|'+fullPath;
				        	saveContentReComment(commentNode, fileuploadlist);
				        },
						error: function(xhr, textStatus, errorThrown) {
						}
					});
				}
			}
		}
	}
});

// 답글 저장
function saveContentReComment(commentNode, fileuploadlist){
	if(commentInsertCheck == false){
		return;
	};
	var parentCmtId = commentNode.closest('.replyBox').closest('li').attr('id');
	var comment = $('#' + parentCmtId + ' .comment').val();
	
	if( comment != '' || fileuploadlist != '') {
		commentInsertCheck = false;
		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'CONTENT_RECOMMENT_SAVE',
				cotid : cotid,
				parentCmtId : parentCmtId,
				comment : chkword(comment),
				fileuploadlist : fileuploadlist
			},
			success: function(data) {
				commentInsertCheck = true;
				alert('답글등록을 완료하였습니다.');
				spage = 1;
				scnt = pcnt;
				firstcomment = 0;
				cmtId = '';
				$('.list_reply ul li').remove();
				getContentFirstCommentInfo();
				
				$('#'+parentCmtId+' .comment').val('');
				setTimeout(function(){
					$('#'+parentCmtId+' .replyBox').show();
				}, 100);
			},
			complete: function() {
			},
			error: function(xhr, textStatus, errorThrown) {
				commentInsertCheck = true;
			}
		});
	} else {
		alert('답글을 입력하세요.');
		return;
	}
}

function fileChange(obj) {
	var filename;
	if(window.FileReader){
		filename = $(obj)[0].files[0].name;
	} else {
		filename = $(obj).val().split('/').pop().split('\\').pop();
	}
	
	var _fileLen = filename.length;
	var _lastDot = filename.lastIndexOf('.');
	
	// 확장자 체크
	var ext = filename.substring(_lastDot+1, _fileLen).toLowerCase();
	if ($.inArray(ext, ['gif', 'jpg', 'jpeg', 'png']) == -1){
		alert('gif, jpg, jpeg, png 파일만 업로드 해주세요.');
		return;
	}
	
	// 용량 체크
	var fileSize = obj.files[0].size;
	var maxSize = 1024 * 1024 * 10;	// 10MB
	if (fileSize > maxSize) {
		alert('최대 10MB까지 업로드 가능합니다.')
		return;
	}
	
	if( appYn == 'Y' && getDevice() == 'Android') {
	} else {
		var reader = new FileReader();
		reader.onload = function(e) {
			let type = 1;
			if($(obj).closest('.replyForm').length)
				type = 2;

			$(obj).closest('.replyBox').find('.file').remove();
			$(obj).closest('.replyWrap').find('#commentfile').remove();
			
			var strHtml = '';
			if(type == 1){
				strHtml += '<div class="fileLayer" id="commentfile">';
			} else{
				strHtml += '<li class="file">';
				strHtml += '<div class="fileLayer">';
			}
			strHtml += '	<p>이미지 첨부는 최대 1개까지 가능합니다.</p>';
			strHtml += '	<span class="img">';
			strHtml += '		<img src="'+e.target.result+'" alt="">';
			strHtml += '		<button type="button" onclick="$(this).closest(\'.fileLayer\').remove();">삭제</button>';
			strHtml += '	</span>';

			strHtml += '</div>';
			if(type == 2)
				strHtml += '</li>';

			$(obj).closest('.replyBox').find('ul').append(strHtml);
			$(obj).closest('.replyWrap .write').next().prepend(strHtml);
		}
		reader.readAsDataURL(obj.files[0]);
	}
}

function CommentLike(cmtId,select,kind){
	$.ajax({
		url: mainurl+'/call',
		dataType: 'json',
		type: "POST",
		data: {
			cmd : 'SNS_COMMENT_LIKE_SAVE',
			cmtId : cmtId,
			kind : kind
		},
		success: function(data) {
			if(data.header.process == 'success'){
				if(kind == 0){
					select.addClass('on');
					select.children('span').text(Number(select.children('span').text())+1);
				} else{
					select.removeClass('on');
					select.children('span').text(Number(select.children('span').text())-1);
				}
			}
		},
		complete: function() {
		},
		error: function(xhr, textStatus, errorThrown) {
		}
	});
}


$(document).on("click",".btn_fileUp",function(){
	if( appYn == 'Y' && getDevice() == 'Android' && loginYn == 'Y') {
		img = 2;
		p_obj = $(this).parents('li').parents('li').attr('id');
		location.href="photoupload:?target=PhotoImg";
	}
});

function OpenReportPopup(cmtId,imgId){

	if(loginYn == 'Y'){
		if(cmtId && imgId){
			reportcmtId = cmtId;
			reportimgId = imgId;
			layerPopup.layerShow('reportPop');
		} else if(cmtId && !imgId){
			reportcmtId = cmtId;
			reportimgId = '';
			layerPopup.layerShow('reportPop');
		} else{
			alert("오류가 발생하였습니다. 새로고침 후 다시 시도해주세요.")
		}
	} else {
		showLogin(2);
	}
}
function ReportCommentImage(){

	let choice = $('input:radio[name="reportForm"]:checked').val();

	if(!choice){
		alert('사유를 선택해주세요.');
		return;
	}

	if(choice == '기타'){
		if($('#commentreportetc').val().length > 0)
			choice = '기타('+$('#commentreportetc').val()+')';
		else {
			alert('기타 내용을 입력해주세요.');
			return;
		}
	}

	if(reportCheck == false){

		reportCheck = true;

		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'USER_IMG_NOTIFY',
				imgId : reportimgId,
				cmtId : reportcmtId,
				info : choice,
				type : 2
			},
			success: function(data) {
				reportCheck = false;
				if(data.header.process == 'success'){
					alert("신고에 성공하였습니다.");
					location.reload();
				} else{
					alert('새로고침 후 다시 시도해주세요');
				}
			},
			complete: function() {
			}
		});
	}
}

function contentPaCheck(){
 if($('input:radio[name=estimateForm]').is(":checked")){
	try {
		 spaCallback("contentSurveyTake");
	} catch (e) {
	}
 	 alert("평가를 해 주셔서 감사합니다! 여행톡을 이어서 작성해 주세요!")
	 layerPopup.layerHide('commentPop');
 }else{
 	alert('평가를 선택해주세요.');
 }
}