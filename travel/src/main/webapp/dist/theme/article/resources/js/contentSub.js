//즐겨찾기 추가
function setFavoContent(contentid) {

	if( loginYn == 'N') {
		showLogin(2);
	} else {

		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'FAVO_CONTENTINFO_SAVE',
				cotid : contentid
			},
			success: function(data) {
				if( data.header.process == 'success' ) {
					alert('즐겨찾기에 추가 되었습니다.');
				} else if( data.header.rsFlag == 0 ) {
					alert('이미 즐겨찾기에 저장된 컨텐츠입니다.');
				}

				$('.btn_titview').removeClass('on');
				$('.dimmed2').remove();
			},
			complete: function() {
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
	}
}

//즐겨찾기 삭제
function goFavoContentDelete(contentid) {

	$.ajax({
		url: mainurl+'/call',
		dataType: 'json',
		type: "POST",
		data: {
			cmd : 'FAVO_CONTENTINFO_DELETE',
			cotid : contentid
		},
		success: function(data) {
			window.location.reload(true);
		},
		complete: function() {
		},
		error: function(xhr, textStatus, errorThrown) {
		}
	});
}

//코스에 담기
function goCartCourse(courseid, contentid, contenttype) {

	$.ajax({
		url: mainurl+'/call',
		dataType: 'json',
		type: "POST",
		data: {
			cmd : 'COURSE_SUB_SAVE',
			courseid : courseid,
			cotid : contentid,
			contenttype : contenttype+''
		},
		success: function(data) {
			layerPopup.layerHide('cosChoice');

			if( cosChoiceList == 'S') {
				layerPopup.layerShow('courseBuildFinish');
			} if(data.header.process =='fail'){
				if(data.header.ment == 'NotInsert'){
					alert("해당 코스에 이미 담긴 콘텐츠입니다.");
				}
			} else {
				alert('코스에 담기가 완료되었습니다.');
			}
		},
		complete: function(data) {
		},
		error: function(xhr, textStatus, errorThrown) {
		}
	});
}

//마이코스삭제
function goCourseDelete(courseid) {

	if( confirm("해당 코스를 삭제하시겠습니까 ?") == true) {

		$.ajax({
			url: mainurl+'/call',
			dataType: 'json',
			type: "POST",
			data: {
				cmd : 'COURSE_CONTENT_DELETE',
				crsid : courseid
			},
			success: function(data) {
				location.href = '../mypage/mypage_list_cos.do';
			},
			complete: function() {
			},
			error: function(xhr, textStatus, errorThrown) {
			}
		});
	}
}

//코스 생성
function goCourseCreate(cosname) {

	var makeCrsId = '';

	$.ajax({
		url: mainurl+'/call',
		dataType: 'json',
		type: "POST",
		data: {
			cmd : 'COURSE_CONTENT_SAVE',
			title : chkword(cosname)
		},
		success: function(data) {
			$('.makecos').hide();
			makeCrsId = data.body.result[0].crsId;
		},
		complete: function() {
			if( cosChoiceList == 'N' ) {
				window.location.reload(true);
			} else if( cosChoiceList == 'Y' ) {
				layerPopup.layerHide('cosMake');
				myCourseList(cosFunctionkind, cosContenttype, cosContentid, cosOriCourseid);
			} else {
				layerPopup.layerHide('courseBuild');
				goCartCourse(makeCrsId, cosContentid, cosContenttype)
			}
		},
		error: function(xhr, textStatus, errorThrown) {
		}
	});
}

var cosFunctionkind = '';
var cosContenttype = '';
var cosContentid = '';
var cosOriCourseid = '';

//코스에 담기에 필요한 내 코스 리스트
function myCourseList(functionkind, contenttype, contentid, oriCourseid,index2) {

	cosFunctionkind = functionkind;
	cosContenttype = contenttype;
	cosContentid = contentid;
	cosOriCourseid = oriCourseid;

	if( loginYn == 'N') {
		showLogin(2);
	} else {
		if( sloginType == '10' ) {
			layerPopup.layerShow('cosConfirm4');
			return;
		} else {

			$.ajax({
				url: mainurl+'/call',
				dataType: 'json',
				type: "POST",
				data: {
					cmd : 'MY_COURSE_LIST_VIEW',
					page : 1+'',
					cnt : 2000+'',
					stampId : stampId
				},
				success: function(data) {
					if(index2 != undefined && index2 != null){
						goMyCourseListView(data, functionkind, contenttype, contentid, oriCourseid,index2);
					} else{
						goMyCourseListView(data, functionkind, contenttype, contentid, oriCourseid);
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

//코스에 담기에 필요한 내 코스 리스트 보여주기
function goMyCourseListView(data, functionkind, contenttype, contentid, oriCourseid,index2) {

	var strHtml = "";

	if( data.body.result != undefined ) {

		$.each(data.body.result, function (index, items) {

			if( items.crsId != oriCourseid ) {
				strHtml += '<li>';
				strHtml += '<span>'+items.title+'</span>';
				strHtml += '<div class="area_btn">';
				if( functionkind == 'C' ) {	//코스에 담기
					strHtml += '    <button type="button" class="btn_def" onclick=goCartCourse("'+items.crsId+'","'+contentid+'","'+contenttype+'")>선택</button>';
				} else {	//다른코스로 이동
					strHtml += '    <button type="button" class="btn_def" onclick=goCourseSubMove("'+items.crsId+'","'+contentid+'","'+contenttype+'","'+oriCourseid+'","'+index2+'")>선택</button>';
				}

				strHtml += '</div>';
				strHtml += '</li>';
			}
		});

        $('.list_choice ul').html(strHtml);

        layerPopup.layerShow('cosChoice');

	} else {
		//알림팝업
		layerPopup.layerShow('courseBuild');
	}
}

//다른코스로 이동
function goCourseSubMove(targetCourseid, contentid, contenttype, oriCourseid,index) {

	$.ajax({
		url: mainurl+'/call',
		dataType: 'json',
		type: "POST",
		data: {
			cmd : 'COURSE_SUB_UPDATE',
			oriCourseid : oriCourseid,
			cotid : contentid,
			targetCourseid : targetCourseid
		},
		success: function(data) {

			if(data.header.process =='fail'){
				if(data.header.ment == 'NotInsert'){
					alert("해당 코스에 이미 담긴 콘텐츠입니다.");
					layerPopup.layerHide('cosChoice');
				}
			} else{
				var id ='#' + index;
				$(id).closest('.coslist').remove();

				alert('콘텐츠 이동이 완료되었습니다.');
				$('.dimmed2').remove();
				cossize --;
				$('.total_check strong span').html(cossize);
				layerPopup.layerHide('cosChoice');
				$('.list_choice ul').empty();
			}
		},
		complete: function() {
		},
		error: function(xhr, textStatus, errorThrown) {
		}
	});
}

//상세 상단에서 코스에 담기 클릭시
function myCourseCartDetail( functionkind, contenttype, oriCourseid ) {
	var contentid = sContentId;
	myCourseList(functionkind, contenttype, contentid, oriCourseid);
}

//사용자코스의 콘텐츠 삭제
function CourseSubDelete(courseid, contentid,index) {

	$.ajax({
		url: mainurl+'/call',
		dataType: 'json',
		type: "POST",
		data: {
			cmd : 'COURSE_SUB_DELETE',
			crsid  : courseid,
			cotid : contentid
		},
		success: function(data) {
		},
		complete: function() {
			var id ='#' + index
			$(id).closest('.coslist').remove();

			alert('콘텐츠 삭제가 완료되었습니다.');
			$('.dimmed2').remove();
			cossize --;
			$('.total_check strong span').html(cossize);
		},
		error: function(xhr, textStatus, errorThrown) {
		}
	});
}

function goJikimi() {

	userImgYn = 'N';

	if( loginYn == 'N') {

		jikimCheckKind = 1;
		$("#Jikimitit").text("관광정보 수정신청");
		layerPopup.layerShow('popMemberLogin');

	} else {
		if( sloginType == '10' ) {
			location.href = "/partners/partners_zikimi_reg.do?cotid="+cotId;
		} else {
			location.href = "/mypage/tourist_info_reg.do?cotid="+cotId;
//				jikimCheckKind = 1;
//				$("#Jikimitit").text("관광정보 수정신청");
//				layerPopup.layerShow('popMemberLogin');
		}
	}
}

(function() {
	const cotId = getParameter('cotid')
	if (cotId === undefined) {
		return
	}
	setTimeout(function() {
		$.ajax({
			url: mainurl + '/call',
			type: 'POST',
			enable: false,	//	false 일 경우 실제 요청을 하지 않음
			data: {
				cmd: 'CONTENT_VIEW_LOG_SAVE',
				cotId: cotId
			},
			success: function(response) {

			},
			error: function(error) {

			}
		})
	}, 1000)
})()
