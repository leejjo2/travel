package com.sp.trip.hotel;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("hotel.hotelController")
@RequestMapping(value = "/hotel/*")
public class hotelController {

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list() {
		return ".hotel.reservationList";
	}
}
