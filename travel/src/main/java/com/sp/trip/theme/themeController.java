package com.sp.trip.theme;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("theme.themeController")
@RequestMapping(value = "/theme/*")
public class themeController {

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list() {
		return ".theme.themeList2";
	}
}
