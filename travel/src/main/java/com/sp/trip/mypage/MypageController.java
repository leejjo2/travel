package com.sp.trip.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("mypage.mypageController")
@RequestMapping(value = "/mypage/*")
public class MypageController {
	
	@RequestMapping(value = "mypageList")
	public String mypageList() throws Exception{ 
		return".mypage.mypageList";
	}
}
