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

import com.sp.trip.member.SessionInfo;


@Controller("travelCourse.travelCourseController")
@RequestMapping(value = "/travelCourse/*") 
public class TravelCourseController {
	@Autowired 
	private TravelCourseService service;


	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list() {
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
			System.out.println("왜왜왜");
			System.out.println("유저 "+dto.getUserId());
			System.out.println("유저 "+dto.getUserId());
			System.out.println(pathname);
			System.out.println("dto입니다"+dto);
			

			service.insertCity(dto, pathname);

		} catch (Exception e) {
		}
		
		return "redirect:/travelCourse/write";
		
	}
	
}
