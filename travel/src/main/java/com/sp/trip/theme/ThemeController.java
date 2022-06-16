package com.sp.trip.theme;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sp.trip.member.SessionInfo;

@Controller("theme.themeController")
@RequestMapping(value = "/theme/*")
public class ThemeController {
	@Autowired
	private ThemeService service;
	
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list() {
		return ".theme.themeList";
	}
	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String write(Model model) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		List<Theme> cityList = service.listCity(map);
		
		model.addAttribute("mode", "write");
		model.addAttribute("cityList", cityList);
		
		return ".theme.write";
	}
	
	
	@RequestMapping(value="write", method = RequestMethod.POST)
	public String writeSubmit(Theme dto, HttpSession session)throws Exception{
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		try {
			dto.setUserId(info.getUserId());
			service.insertBoard(dto);
		} catch (Exception e) {
		}
		return "redirect:/theme/list";
	}
}
