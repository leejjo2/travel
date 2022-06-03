package com.sp.trip.festival;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("festival.festivalController")
@RequestMapping(value = "/festival/*")
public class festivalController {

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list() {
		return ".festival.festivalList";
	}
}
