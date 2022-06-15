package com.sp.trip.partner.lodgingManage;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sp.trip.member.SessionInfo;

@Controller("partner.lodgingManage.lodgingManageController")
@RequestMapping("/partner/lodgingManage/*")
public class LodgingManageController {
	@Autowired
	private LodgingManageService service;
	
	// 내 숙소 리스트
	@RequestMapping("lodgingList")
	public String lodgingList(HttpServletRequest req, HttpSession session, Model model) throws Exception {
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		
		List<LodgingManage> list = service.listHotel(info.getUserId());
		
		model.addAttribute("list", list);
		
		return ".partner.lodgingManage.lodgingList";
	}
	
	// 숙소별 룸 리스트
	@RequestMapping("roomList")
	public String roomList() throws Exception {
		return ".partner.lodgingManage.roomList";
	}
	
	// 숙소 등록하기
	@RequestMapping("lodgingWrite")
	public String lodgingWrite(Model model) throws Exception {
		model.addAttribute("mode", "write");
		return ".partner.lodgingManage.lodgingWrite";
	}
	
	// 등록완료
	@RequestMapping(value = "lodgingWriteSubmit", method = RequestMethod.POST)
	public String writesubmit(LodgingManage dto, HttpSession session) throws Exception {
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		
		String root = session.getServletContext().getRealPath("/");
		String pathname = root + "uploads" + File.separator + "bbs";
		
		try {
			dto.setPartnerId(info.getUserId());
			service.insertHotel(dto, pathname);
		} catch (Exception e) {
		}
		
		return "redirect:/lodgingManage/lodgingList";
	}
	
	// 숙소별 방 등록하기
	@RequestMapping("roomWrite")
	public String roomWrite(Model model) throws Exception {
		model.addAttribute("mode", "write");
		return ".partner.lodgingManage.roomWrite";
	}
	
	
	
}
