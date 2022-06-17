package com.sp.trip.partner.activityManage;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sp.trip.member.SessionInfo;

@Controller("partner.activityManage.activityManageController")
@RequestMapping("/partner/activityManage/*")
public class ActivityManageController {
	
	@Autowired
	private ActivityManageService service;
	
	@RequestMapping("activityList")
	// 액티비티 등록하기
	public String activityList() throws Exception {
		return ".partner.activityManage.activityList";
	}
	
	// 액티비티 등록 폼으로 이동
	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String writeForm(Model model) throws Exception {
		
		model.addAttribute("mode", "write");
		return ".partner.activityManage.activityWrite";
	}
	
	// 액티비티 등록 폼
	@RequestMapping(value = "write", method = RequestMethod.POST)
	public String writeSubmit(Activity dto, HttpSession session) throws Exception {
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		
		try {
			service.insertActivity(dto, info.getUserId());
		} catch (Exception e) {
		}
		
		return "redirect:/partner/activityManage/activityList";
	}

}