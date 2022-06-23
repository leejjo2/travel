package com.sp.trip.hotel;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.trip.common.MyUtil;

@Controller("hotel.hotelController")
@RequestMapping(value = "/hotel/*")
public class HotelController {
	@Autowired
	private HotelService service;
	@Autowired
	private MyUtil myUtil;
	
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list() {
		return ".hotel.hotelMain";
	}
	
	@RequestMapping(value = "hotelList", method = RequestMethod.GET)
	public String list2(@RequestParam(value = "page", defaultValue = "1") int current_page,
			HttpServletRequest req,
			Model model
			) throws Exception {
		
		String cp = req.getContextPath();
		
		int rows = 10;
		int total_page = 0;
		int dataCount = 0;
		
		Map<String, Object> map = new HashMap<String, Object>();

		dataCount = service.dataCount(map);
		if (dataCount != 0) {
			total_page = myUtil.pageCount(rows, dataCount);
		}
		
		// 리스트에 출력할 데이터를 가져오기
		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		
		List<Hotel> list = service.listHotel(map);
		
		String listUrl = cp + "/hotel/hotelList";
		String articleUrl = cp + "/hotel/article?page=" + current_page;
		
		String paging = myUtil.paging(current_page, total_page, listUrl);
		
		model.addAttribute("list", list);
		model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		
		return ".hotel.hotelList";
	}
	
	@RequestMapping(value = "hotelDetail", method = RequestMethod.GET)
//	public String hotelArticle(@RequestParam("hotelNum") int hotelNum, Model model ) throws Exception {
	public String hotelArticle(@RequestParam int hotelNum, Model model ) throws Exception {
		
		// String query = "page=" + page;
		try {
			Hotel dto = service.readHotel(hotelNum);
			Hotel rdto = service.readRoom(hotelNum);
			dto.setHotelIntro(myUtil.htmlSymbols(dto.getHotelIntro()));
			
			model.addAttribute("dto", dto);
			model.addAttribute("rdto", rdto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		/*
		if(dto == null) {
			return "redirect:/hotel/hotelList";
		}
		*/
		
		// model.addAttribute("page", page);
		// model.addAttribute("query", query);
		
		
		return ".hotel.hotelDetail";
	}
	
}
