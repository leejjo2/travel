package com.sp.trip.freebbs;



import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.trip.member.SessionInfo;



@Controller("freebbs.freebbsController")
@RequestMapping(value = "/freebbs/*")
public class FreebbsController {
		

		
		@RequestMapping(value = "list", method = RequestMethod.GET)
		public String list(@RequestParam(value = "page", defaultValue = "1")int current_page,
				@RequestParam(defaultValue = "all") String condition,
				@RequestParam(defaultValue = "") String keyword,
				HttpServletRequest req,
				HttpSession session,
				Model model) throws Exception {
			
			SessionInfo info = (SessionInfo) session.getAttribute("member");
			String cp = req.getContextPath();
			
			int rows = 8;
			int total_page;
			int dataCount;
			
			if(req.getMethod().equalsIgnoreCase("GET")) {
				keyword = URLDecoder.decode(keyword, "utf-8");
			}
			
			//전체 페이지수
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("userId", info.getUserId());
			map.put("condition", condition);
			map.put("keyword", keyword);
			return ".freebbs.freebbsList";
		}
		
		@RequestMapping(value = "write", method = RequestMethod.GET)
		public String write(Model model) throws Exception {
			
			model.addAttribute("mode", "write");
			
			return ".freebbs.freebbswrite";
		}

	
}
