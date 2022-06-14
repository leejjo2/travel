package com.sp.trip.travelCourse;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sp.trip.common.FileManager;
import com.sp.trip.common.MyUtil;
import com.sp.trip.member.SessionInfo;

@Controller("travelCourse.travelCourseController")
@RequestMapping(value = "/travelCourse/*")
public class TravelCourseController {
	@Autowired
	private TravelCourseService service;
	@Autowired
	private MyUtil myUtil;
	@Autowired
	private FileManager fileManager;

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list() {
		return ".travelCourse.list";
	}
	
	
	@RequestMapping(value="write", method = RequestMethod.GET)
	public String writeForm(Model model) throws Exception {

		Map<String, Object> map = new HashMap<String, Object>();
		List<TravelCourse> cityList = service.listCity(map);
		
		model.addAttribute("mode", "write");
		model.addAttribute("cityList", cityList);

		return ".travelCourse.write";
	}
	
	
	/*
	@RequestMapping(value="write", method = RequestMethod.GET)
	public String writeSubmit(TravelCourse dto, HttpSession session) throws Exception {
		
		try {
			String root = session.getServletContext().getRealPath("/");
			String pathname = root + "uploads" + File.separator + "notice";
			service.insertCity(dto, pathname);

		} catch (Exception e) {
		}
		
		return "redirect:/travelCourse/write";
		
	}
	*/
}
