package com.sp.trip.food;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("food.foodController")
@RequestMapping(value = "/food/*")
public class foodController {

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list() {
		return ".food.foodList";
	}
}
