package com.sp.trip.freebbs;



import java.io.File;
import java.net.URLDecoder;
import java.net.URLEncoder;
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

import com.sp.trip.common.FileManager;
import com.sp.trip.common.MyUtil;
import com.sp.trip.member.SessionInfo;




@Controller("freebbs.freebbsController")
@RequestMapping(value = "/freebbs/*")
public class FreebbsController {
		
	@Autowired
	private BoardService service;
	
	@Autowired
	private MyUtil myUtil;
	
	@Autowired
	private FileManager fileManager;
		
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
			
			dataCount = service.dataCount(map);
			total_page = myUtil.pageCount(rows, dataCount);
			
			if (total_page < current_page) {
				current_page = total_page;
			}
			
			int start = (current_page -1) * rows + 1;
			int end = current_page * rows;
			map.put("start", start);
			map.put("end", end);
			
			List<Board> list = service.listBoard(map);
			
			String query = "";
			String listUrl = cp + "/freebbs/list";
			String articleUrl = cp + "/freebbs/article?page=" + current_page;
			if (keyword.length() != 0) {
				query = "condition=" + condition + "&keyword=" + URLEncoder.encode(keyword, "utf-8");
			}

			if (query.length() != 0) {
				listUrl = cp + "/freebbs/list?" + query;
				articleUrl = cp + "/freebbs/article?page=" + current_page + "&" + query;
			}

			String paging = myUtil.paging(current_page, total_page, listUrl);

			model.addAttribute("list", list);
			model.addAttribute("dataCount", dataCount);
			model.addAttribute("total_page", total_page);
			model.addAttribute("articleUrl", articleUrl);
			model.addAttribute("page", current_page);
			model.addAttribute("paging", paging);

			model.addAttribute("condition", condition);
			model.addAttribute("keyword", keyword);
			return ".freebbs.freebbsList";
		}
		
		@RequestMapping(value = "write", method = RequestMethod.GET)
		public String write(Model model) throws Exception {
			
			Map<String, Object> map = new HashMap<String, Object>();
			List<Board> cateList = service.listCate(map);
			
			
			model.addAttribute("mode", "write");
			model.addAttribute("listCate", cateList);
			
			return ".freebbs.freebbswrite";
		}
		
		@RequestMapping(value = "write", method = RequestMethod.POST)
		public String writeSubmit(Board dto, HttpSession session) throws Exception {
			String root = session.getServletContext().getRealPath("/");
			String path = root + "uploads" + File.separator + "Board";
			
			SessionInfo info = (SessionInfo) session.getAttribute("member");
			
			try {
				dto.setUserId(info.getUserId());
				service.insertBoard(dto, path);
			} catch (Exception e) {
			}
			return "redirect:/freebbs/list";
			
		}


	
}
