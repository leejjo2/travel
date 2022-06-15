package com.sp.trip.activity;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("activity.activityController")
@RequestMapping(value = "/activity/*")
public class ActivityController {
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list() {
		return ".activity.activityList";
	}
	
	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public String detail() {
		return ".activity.activityDetail";
	}
}
