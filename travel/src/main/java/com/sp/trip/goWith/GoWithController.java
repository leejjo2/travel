package com.sp.trip.goWith;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


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
	public String write() {
		return ".goWith.write";
	}
	
	@RequestMapping(value = "write", method = RequestMethod.POST)
	public String writeSubmit(GoWith dto, HttpServletRequest req) throws Exception {
		
		try {
			service.insertGoWith(dto);
		} catch (Exception e) {
			
		}
		
		return "redirect:/goWith/list";
	}
}
