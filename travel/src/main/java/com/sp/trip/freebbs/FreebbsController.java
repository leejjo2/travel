package com.sp.trip.freebbs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("freebbs.freebbsController")
@RequestMapping(value = "/freebbs/*")
public class FreebbsController {
		
		@RequestMapping(value = "list", method = RequestMethod.GET)
		public String list() {
			return ".freebbs.freebbsList";
		}
		
	
}
