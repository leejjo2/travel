package com.sp.trip.faq;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("faq.faqController")
@RequestMapping(value = "/faq/*")
public class FaqController {
	@RequestMapping(value = "main", method = RequestMethod.GET)
	public String list() {
		return ".faq.faqMain";
	}
}
