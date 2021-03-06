package com.sp.trip.goWith;

import java.io.File;
import java.io.UnsupportedEncodingException;
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
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.trip.common.MyUtil;
import com.sp.trip.member.SessionInfo;

@Controller("gowith.gowithController")
@RequestMapping(value = "/gowith/*")
public class GoWithController {
	
	@Autowired
	private GoWithService service;
	
	
	@Autowired
	private MyUtil myUtil;
	
	@RequestMapping(value = "list")
	public String list(@RequestParam(value = "page", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "all") String condition,
			@RequestParam(defaultValue = "") String keyword,
			@RequestParam(defaultValue = "") String recruit_status,
			@RequestParam(defaultValue = "0") int spotNum,
			@RequestParam(defaultValue = "") String gender,
			@RequestParam(defaultValue = "") String startDate,
			@RequestParam(defaultValue = "") String endDate,
			@RequestParam(defaultValue = "0") int discussion,
			HttpServletRequest req,
			Model model
			) {
		
		String cp = req.getContextPath();

		int rows = 6; // 한 화면에 보여주는 게시물 수
		int total_page = 0;
		int dataCount = 0;

		if (req.getMethod().equalsIgnoreCase("GET")) { // GET 방식인 경우
			try {
				keyword = URLDecoder.decode(keyword, "utf-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}

		// 전체 페이지 수
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("condition", condition);
		map.put("keyword", keyword);
		map.put("spotNum", spotNum);
		map.put("gender", gender);
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		map.put("discussion", discussion);
		
		map.put("recruit_status", recruit_status);

		dataCount = service.dataCount(map);
		if (dataCount != 0) {
			total_page = myUtil.pageCount(rows, dataCount);
		}
		
		// 다른 사람이 자료를 삭제하여 전체 페이지수가 변화 된 경우
		if (total_page < current_page) {
			current_page = total_page;
		}

		// 리스트에 출력할 데이터를 가져오기
		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);

		// 글 리스트
		List<GoWith> list = service.listGoWith(map);

		List<GoWith> listCity = null;
		List<GoWith> listSpot = null;
		   
		try {
			listCity = service.listCity();
			if(listCity.size() > 0) {
				listSpot = service.listSpot(listCity.get(0).getCityNum());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("listCity", listCity);
		model.addAttribute("listSpot", listSpot);


		String query = "";
		String listUrl = cp + "/gowith/list";
		String articleUrl = cp + "/gowith/article?page=" + current_page;
		if (keyword.length() != 0) {
			try {
				query = "condition=" + condition + "&keyword=" + URLEncoder.encode(keyword, "utf-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		if (query.length() != 0) {
			listUrl = cp + "/gowith/list?" + query;
			articleUrl = cp + "/gowith/article?page=" + current_page + "&" + query;
		}

		String paging = myUtil.paging(current_page, total_page, listUrl);

		model.addAttribute("list", list);
		model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);

		model.addAttribute("condition", condition);
		model.addAttribute("keyword", keyword);
		model.addAttribute("recruit_status", recruit_status);
		
		return ".goWith.list";
	}

	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String write(Model model) throws Exception {
		List<GoWith> listCity = null;
		List<GoWith> listSpot = null;
		   
		try {
			listCity = service.listCity();
			if(listCity.size() > 0) {
				listSpot = service.listSpot(listCity.get(0).getCityNum());
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
		model.addAttribute("listCity", listCity);
		model.addAttribute("listSpot", listSpot);
		model.addAttribute("mode", "write");
		
		return ".goWith.write";
		
		
	}
	
	@RequestMapping(value = "write", method = RequestMethod.POST)
	public String writeSubmit(GoWith dto, HttpSession session) throws Exception {
		String root = session.getServletContext().getRealPath("/");
		String path = root + "uploads" + File.separator + "photo";
		
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		
		try {
			dto.setUserId(info.getUserId());
			service.insertGoWith(dto, path);
		} catch (Exception e) {
			
		}
		
		return "redirect:/gowith/list";
	}
	
	@RequestMapping(value = "article")
	public String article(@RequestParam int num,
			@RequestParam String page,
			@RequestParam(defaultValue = "all") String condition,
			@RequestParam(defaultValue = "") String keyword,
			HttpSession session,
			Model model) throws Exception {
		
		keyword = URLDecoder.decode(keyword, "utf-8");

		String query = "page=" + page;
		if (keyword.length() != 0) {
			query += "&condition=" + condition + 
					"&keyword=" + URLEncoder.encode(keyword, "UTF-8");
		}
		
		service.updateHitCount(num);
		
		GoWith dto = service.readGoWith(num);
		if(dto == null) {
			return "redirect:/gowith/list?"+ query;
		}
	
		
		model.addAttribute("dto", dto);
		model.addAttribute("page", page);
		model.addAttribute("query", query);
		
		return ".goWith.article";
	}
	
	@RequestMapping(value = "cityList")
	@ResponseBody
	public Map<String, Object> cityList(@RequestParam int cityNum) throws Exception{
		List<GoWith> list = service.listSpot(cityNum);
		Map<String, Object> model = new HashMap<String, Object>();
		
		model.put("list", list);
		
		System.out.println(list.size());
		
		return model;
	}
	
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public String updateForm(@RequestParam int num,
			@RequestParam String page,
			HttpSession session,
			Model model) throws Exception {
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		
		GoWith dto = service.readGoWith(num);
		
		if (dto == null || ! info.getUserId().equals(dto.getUserId())) {
			return "redirect:/gowith/list?page=" + page;
		}
		
		List<GoWith> listCity = null;
		List<GoWith> listSpot = null;
		   
		try {
			listCity = service.listCity();
			if(listCity.size() > 0) {
				listSpot = service.listSpot(dto.getCityNum());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("listCity", listCity);
		model.addAttribute("listSpot", listSpot);

		model.addAttribute("dto", dto);
		model.addAttribute("mode", "update");
		model.addAttribute("page", page);
		
		return ".goWith.write";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String updateSubmit(GoWith dto,
			@RequestParam String page,
			HttpSession session) throws Exception {
		
		String root = session.getServletContext().getRealPath("/");
		String pathname = root + "uploads" + File.separator + "photo";

		try {
			service.updateGoWith(dto, pathname);
			
		} catch (Exception e) {
		}
		
		return "redirect:/gowith/list?page=" + page;
	}
	
	@RequestMapping(value = "delete")
	public String delete(@RequestParam int num,
			@RequestParam String page,
			@RequestParam(defaultValue = "all") String condition,
			@RequestParam(defaultValue = "") String keyword,
			HttpSession session) throws Exception {
		
		SessionInfo info = (SessionInfo) session.getAttribute("member");

		keyword = URLDecoder.decode(keyword, "utf-8");
		String query = "page=" + page;
		if (keyword.length() != 0) {
			query += "&condition=" + condition + "&keyword=" + URLEncoder.encode(keyword, "UTF-8");
		}

		String root = session.getServletContext().getRealPath("/");
		String pathname = root + "uploads" + File.separator + "photo";

		service.deleteGoWith(num, pathname, info.getUserId(), info.getMembership());
		
		return "redirect:/gowith/list?" + query;
	}
	
	@RequestMapping(value = "listReply")
	public String listReply(@RequestParam int goWithNum,
			@RequestParam(value = "pageNo", defaultValue = "1") int current_page,
			Model model) throws Exception {
		
		int rows = 10;
		int total_page = 0;
		int dataCount = 0;

		Map<String, Object> map = new HashMap<>();
		map.put("goWithNum", goWithNum);

		dataCount = service.replyCount(map);
		total_page = myUtil.pageCount(rows, dataCount);
		if (current_page > total_page) {
			current_page = total_page;
		}

		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		
		List<Reply> listReply = service.listReply(map);
		
		for (Reply dto : listReply) {
			dto.setContent(dto.getContent().replaceAll("\n", "<br>"));
		}

		String paging = myUtil.pagingMethod(current_page, total_page, "listPage");

		model.addAttribute("listReply", listReply);
		model.addAttribute("pageNo", current_page);
		model.addAttribute("replyCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);

		return "goWith/listReply";
	}
	
	@RequestMapping(value = "insertReply", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> insertReply(Reply dto, HttpSession session) {
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		String state = "true";

		try {
			dto.setUserId(info.getUserId());
			service.insertReply(dto);
		} catch (Exception e) {
			state = "false";
		}

		Map<String, Object> model = new HashMap<>();
		model.put("state", state);
		return model;
	}
	
	@RequestMapping(value = "updateReply", method = RequestMethod.POST)
	public Map<String, Object> updateReply(
			Reply dto,
			@RequestParam Map<String, Object> paramMap,
			HttpSession session) {
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		String state = "true";
		
		try {
			dto.setUserId(info.getUserId());
			service.updateReply(paramMap);
		} catch (Exception e) {
			state = "false";
		}
		
		
		Map<String, Object> map = new HashMap<>();
		map.put("state", state);
		
		return map;
	}
	
	@RequestMapping(value = "deleteReply", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> deleteReply(@RequestParam Map<String, Object> paramMap) {
		String state = "true";
		
		try {
			service.deleteReply(paramMap);
		} catch (Exception e) {
			state = "false";
		}
		
		Map<String, Object> map = new HashMap<>();
		map.put("state", state);
		return map;
	}
}
