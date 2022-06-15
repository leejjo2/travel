package com.sp.trip.food;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller("food.foodController")
@RequestMapping(value = "/food/*")
public class foodController {

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list() {
		return ".food.foodList";
	}
	
	@RequestMapping(value = "foodView", method = RequestMethod.GET)
	public String foodView(@RequestParam String contentid, Model model) {
		
		model.addAttribute("contentid", contentid);
		
		return ".food.foodView";
	}
}
