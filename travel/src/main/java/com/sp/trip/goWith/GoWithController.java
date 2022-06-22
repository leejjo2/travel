package com.sp.trip.goWith;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sp.trip.member.SessionInfo;


@Controller("gowith.gowithController")
@RequestMapping(value = "/gowith/*")
public class GoWithController {
	
	@Autowired
	private GoWithService service;
	
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list() {
		return ".goWith.list";
	}

	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String write(Model model) throws Exception {
		List<GoWith> listCity = null;
		List<GoWith> listSpot = null;
		   
		try {
			listCity = service.listCity();
			if(listCity.size() > 0) {
				listSpot = service.listSpot(listCity.get(0).getCityNum());
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
		model.addAttribute("listCity", listCity);
		model.addAttribute("listSpot", listSpot);
		
		return ".goWith.write";
		
		
	}
	
	@RequestMapping(value = "write", method = RequestMethod.POST)
	public String writeSubmit(GoWith dto, HttpSession session) throws Exception {
		String root = session.getServletContext().getRealPath("/");
		String path = root + "uploads" + File.separator + "photo";
		
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		
		try {
			dto.setUserId(info.getUserId());
			service.insertGoWith(dto, path);
		} catch (Exception e) {
			
		}
		
		return "redirect:/gowith/list";
	}
}
