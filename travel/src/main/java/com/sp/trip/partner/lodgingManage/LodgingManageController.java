package com.sp.trip.partner.lodgingManage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("partner.lodgingManage.lodgingManageController")
@RequestMapping("/partner/lodgingManage/*")
public class LodgingManageController {
	@RequestMapping("lodgingList")
	
	// 숙소 리스트
	public String lodgingList() throws Exception {
		return ".partner.lodgingManage.lodgingList";
	}
	
	// 숙소별 룸 리스트
	@RequestMapping("roomList")
	public String roomList() throws Exception {
		return ".partner.lodgingManage.roomList";
	}
	
	// 숙소 등록하기
	@RequestMapping("lodgingWrite")
	public String lodgingWrite() throws Exception {
		return ".partner.lodgingManage.lodgingWrite";
	}
	
	// 숙소별 방 등록하기
	@RequestMapping("roomWrite")
	public String roomWrite() throws Exception {
		return ".partner.lodgingManage.roomWrite";
	}
}
