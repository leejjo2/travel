package com.sp.trip.activity;

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

import com.sp.trip.common.MyUtil;
import com.sp.trip.member.SessionInfo;

@Controller("activity.activityController")
@RequestMapping(value = "/activity/*")
public class ActivityController {
	
	@Autowired
	private ActivityService service;
	
	@Autowired
	private MyUtil myUtil;
	
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list(
			@RequestParam(value = "page", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "all") String cityNum,
			@RequestParam(defaultValue = "all") String activityType,
			HttpServletRequest req,
			Model model) throws Exception {
		
		String cp = req.getContextPath();
		
		int rows = 12; // 한 화면에 보여주는 게시물 수
		int total_page = 0;
		int dataCount = 0;
		
		// 전체 페이지 수
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("city", cityNum);
		map.put("type", activityType);
		
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
		List<Activity> list = service.listActivity(map);
		
		String query = "";
		String listUrl = cp + "/activity/list";
		String articleUrl = cp + "/activity/detail?page=" + current_page;
		
		if (!cityNum.equals("all")) {
			query += "cityNum=" + cityNum;
			if(!activityType.equals("all")) {
				query += "&activityType=" + activityType;
			}
		} else {
			if(!activityType.equals("all")) {
				query += "activityType=" + activityType;
			}
		}
		
		if (query.length() != 0) {
			listUrl = cp + "/activity/list?" + query;
			articleUrl = cp + "/activity/detail?page=" + current_page + "&" + query;
		}
		

		String paging = myUtil.paging(current_page, total_page, listUrl);
		
		model.addAttribute("list", list);
		model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);

		model.addAttribute("cityNum", cityNum);
		model.addAttribute("activityType", activityType);
		
		return ".activity.activityList";
	}
	
	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public String detail(
			@RequestParam int activityNum,
			@RequestParam String page,
			@RequestParam(defaultValue = "all") String cityNum,
			@RequestParam(defaultValue = "all") String activityType,
			Model model) throws Exception {

		String query = "page=" + page;
		
		if (!cityNum.equals("all")) {
			query += "&cityNum=" + cityNum;
			if(!activityType.equals("all")) {
				query += "&activityType=" + activityType;
			}
		} else {
			if(!activityType.equals("all")) {
				query += "&activityType=" + activityType;
			}
		}
		
		Activity dto = service.readActivity(activityNum);
		if( dto == null) {
			return "redirect:/activity/list?" + query;
		}
		
		model.addAttribute("dto", dto);
		model.addAttribute("page", page);
		model.addAttribute("query", query);
		
		return ".activity.activityDetail";
	}
	
	@RequestMapping(value = "reserve", method = RequestMethod.GET)
	public String reserveForm(
			@RequestParam int activityNum,
			@RequestParam int totalMen,
			HttpSession session,
			Model model
			) throws Exception {
		
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		String userId = info.getUserId();
		
		Reserve mdto = service.readMemberInfo(userId);
		Reserve rdto = service.readReserveInfo(activityNum);
		
		if( mdto == null || rdto == null) {
			return "redirect:/activity/detail?activityNum="+activityNum+"&page=1";
		}
		
		model.addAttribute("mdto", mdto);
		model.addAttribute("rdto", rdto);
		model.addAttribute("totalMen", totalMen);
		
		return ".activity.activityReserve";
	}
	
	@RequestMapping(value = "completePage", method = RequestMethod.GET)
	public String reserveComplete() throws Exception {
		return ".activity.paymentComplete";
	}
}
