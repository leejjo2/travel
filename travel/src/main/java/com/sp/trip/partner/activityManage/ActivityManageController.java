package com.sp.trip.partner.activityManage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("partner.activityManage.activityManageController")
@RequestMapping("/partner/activityManage/*")
public class ActivityManageController {
	
	@RequestMapping("activityList")
	// 숙소 리스트
	public String activityList() throws Exception {
		return ".partner.activityManage.activityList";
	}
	
	// 숙소 등록하기
	@GetMapping("activityWrite")
	public String lodgingWrite() throws Exception {
		return ".partner.activityManage.activityWrite";
	}

}