package com.sp.trip.travelCourse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("travelCourse.travelCourseController")
@RequestMapping(value = "/travelCourse/*")
public class travelCourseController {

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list() {
		return ".travelCourse.travelCourse";
	}
	
	@RequestMapping(value="write", method = RequestMethod.GET)
	public String write() {
		return ".travelCourse.makeTravelCourse";
	}
}
