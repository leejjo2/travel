package com.sp.trip.partner.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("partner.mainController")
public class MainController {
	 
	@RequestMapping(value="/partner", method=RequestMethod.GET)
	public String method() {
		return ".partnerLayout";
	}
}
