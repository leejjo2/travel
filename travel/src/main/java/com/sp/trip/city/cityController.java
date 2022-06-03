package com.sp.trip.city;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("city.cityController")
@RequestMapping(value = "/city/*")
public class cityController {

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list() {
		return ".city.localList";
	}
}
