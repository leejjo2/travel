package com.sp.trip.travelCourse;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.trip.member.SessionInfo;


@Controller("travelCourse.travelCourseController")
@RequestMapping(value = "/travelCourse/*") 
public class TravelCourseController {
	@Autowired 
	private TravelCourseService service;


	@RequestMapping(value = "list")
	public String list(@RequestParam(value = "page", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "0") int group,
			@RequestParam(defaultValue = "all") String condition,
			@RequestParam(defaultValue = "") String keyword,
			HttpServletRequest req,
			Model model	) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		//TravelCourse dto = null;
		
		
		List<TravelCourse> list = service.readBoard(map);
		/*
		List<Integer> courseNum = service.readCourseNum();
		List<TravelCourse> cityList = service.readCity(courseNum);
		int courseDetailNum = service.readcourseDetailNum();
		String imgUrl = service.readImg(courseDetailNum);
		*/
		
		model.addAttribute("list", list);
		//model.addAttribute("cityList", cityList);
		//model.addAttribute("imgUrl", imgUrl);

		return ".travelCourse.list";
	}
	
	
	@RequestMapping(value="write", method = RequestMethod.GET)
	public String writeForm(Model model) throws Exception {

		Map<String, Object> map = new HashMap<String, Object>();
		List<TravelCourse> cityList = service.listCity(map);
		List<TravelCourse> themeList = service.listTheme(map);

		model.addAttribute("mode", "write");
		model.addAttribute("cityList", cityList);
		model.addAttribute("themeList", themeList);

		return ".travelCourse.write";
	}
	
	
	
	@RequestMapping(value="write", method = RequestMethod.POST)
	public String writeSubmit(TravelCourse dto, HttpSession session) throws Exception {
		SessionInfo info = (SessionInfo) session.getAttribute("member");

		String root = session.getServletContext().getRealPath("/");
		String pathname = root + "uploads" + File.separator + "course";
		try {
			dto.setUserId(info.getUserId());	

			service.insertCity(dto, pathname);

		} catch (Exception e) {
		}
		
		return "redirect:/travelCourse/write";
		
	}
	
	@RequestMapping(value = "article")
	public String article() throws Exception {
		
		return ".travelCourse.article";
	}
	
}
