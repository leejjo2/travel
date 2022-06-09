package com.sp.trip.theme;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller("theme.themeController")
@RequestMapping(value = "/theme/*")
public class themeController {

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list() {
		return ".theme.themeList2";
	}
	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String write() {
		return ".theme.write";
	}
	@RequestMapping(value = "map", method = RequestMethod.GET)
	public String map() {
		return "theme/map";
	}
}
