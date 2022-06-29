package com.sp.trip.partner.activityManage;

import java.io.File;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.trip.activity.Reserve;
import com.sp.trip.common.MyUtil;
import com.sp.trip.member.SessionInfo;

@Controller("partner.activityManage.activityManageController")
@RequestMapping("/partner/activityManage/*")
public class ActivityManageController {
	
	@Autowired
	private ActivityManageService service;
	
	@Autowired
	@Qualifier("myUtilGeneral")
	private MyUtil myUtil;
	
	// 액티비티 등록하기
	@RequestMapping("activityList")
	public String activityList(
			@RequestParam(value = "page", defaultValue = "1") int current_page,
			HttpServletRequest req,
			HttpSession session,
			Model model) throws Exception {
		
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		String userId = info.getUserId();
		
		String cp = req.getContextPath();

		int rows = 3; // 한 화면에 보여주는 게시물 수
		int total_page = 0;
		int dataCount = 0;
		
		dataCount = service.dataCount(userId);
		
		if (dataCount != 0) {
			total_page = myUtil.pageCount(rows, dataCount);
		}

		// 다른 사람이 자료를 삭제하여 전체 페이지수가 변화 된 경우
		if (total_page < current_page) {
			current_page = total_page;
		}

		Map<String, Object> map = new HashMap<String, Object>();
		// 리스트에 출력할 데이터를 가져오기
		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		
		// 글 리스트
		List<Activity> list = service.listActivity(map, userId);
		
		String listUrl = cp + "/partner/activityManage/activityList";
		
		String paging = myUtil.paging(current_page, total_page, listUrl);
		
		model.addAttribute("list", list);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		
		return ".partner.activityManage.activityList";
	}
	
	// 액티비티 등록 폼으로 이동
	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String writeForm(Model model) throws Exception {
		
		model.addAttribute("mode", "write");
		return ".partner.activityManage.activityWrite";
	}
	
	// 액티비티 등록 폼
	@RequestMapping(value = "write", method = RequestMethod.POST)
	public String writeSubmit(Activity dto, HttpSession session) throws Exception {
		String root = session.getServletContext().getRealPath("/");
		String path = root + "uploads" + File.separator + "activity";
		
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		
		try {
			service.insertActivity(dto, info.getUserId(), path);
		} catch (Exception e) {
		}
		
		return "redirect:/partner/activityManage/activityList";
	}
	
	
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public String updateForm(
			@RequestParam int num,
			@RequestParam String page,
			HttpSession session,
			Model model) throws Exception {
		
		Activity dto = service.readActivity(num);
		/*
		if (dto == null) {
			return "redirect:/sbbs/list?page=" + page;
		}
		 */
		model.addAttribute("dto", dto);
		model.addAttribute("page", page);
		model.addAttribute("mode", "update");

		return ".partner.activityManage.activityWrite";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String updateSubmit(
			Activity dto,
			@RequestParam String page,
			HttpSession session) throws Exception {
		
		String root = session.getServletContext().getRealPath("/");
		String pathname = root + "uploads" + File.separator + "activity";
			
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		String userId = info.getUserId();
		
		try {
			service.updateActivity(dto, userId, pathname);
		} catch (Exception e) {
		}

		return "redirect:/partner/activityManage/activityList?page=" + page;
	}

	@RequestMapping(value = "delete")
	public String delete(
			@RequestParam int num,
			@RequestParam String page,
			@RequestParam String titleImgname,
			HttpSession session) throws Exception {
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		String userId = info.getUserId();
		
		String root = session.getServletContext().getRealPath("/");
		String pathname = root + "uploads" + File.separator + "activity" + File.separator + titleImgname;
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("activityNum", num);
		
		service.deleteActivity(map, userId, pathname);

		return "redirect:/partner/activityManage/activityList?page=" + page;
	}
	
	
	
	@RequestMapping("reserveList")
	public String reserveList(@RequestParam(value = "page", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "name") String condition,
			@RequestParam(defaultValue = "") String keyword,
			@RequestParam(defaultValue = "") String reserveStatus,
			HttpServletRequest req,
			HttpSession session,
			Model model) throws Exception {
		
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		String userId = info.getUserId();
		
		String cp = req.getContextPath();

		int rows = 5;
		int total_page = 0;
		int dataCount = 0;

		if (req.getMethod().equalsIgnoreCase("GET")) {
			keyword = URLDecoder.decode(keyword, "utf-8");
		}

		// 전체 페이지 수
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("reserveStatus", reserveStatus);
		map.put("condition", condition);
		map.put("keyword", keyword);
		map.put("userId", userId);

		dataCount = service.reserveDataCount(map);
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

		// 멤버 리스트
		List<Reserve> list = service.reserveList(map);

		String query = "";
		String listUrl = cp + "/partner/activityManage/reserveList";

		if (keyword.length() != 0) {
			query = "condition=" + condition + "&keyword=" + URLEncoder.encode(keyword, "utf-8");
		}

		if (reserveStatus.length() != 0) {
			if (query.length() != 0)
				query = query + "&reserveStatus=" + reserveStatus;
			else
				query = "reserveStatus=" + reserveStatus;
		}

		if (query.length() != 0) {
			listUrl = listUrl + "?" + query;
		}

		String paging = myUtil.paging(current_page, total_page, listUrl);

		model.addAttribute("list", list);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		model.addAttribute("reserveStatus", reserveStatus);
		model.addAttribute("condition", condition);
		model.addAttribute("keyword", keyword);

		return ".partner.activityManage.activityReserveList";
	}
	
	// 회원상세 정보 : AJAX-Text 응답
	@RequestMapping(value = "reserveDetail")
	public String reserveDetail(
			@RequestParam int reserveNum,
			Model model) throws Exception {
		Reserve dto = service.readReserve(reserveNum);

		model.addAttribute("dto", dto);

		return "partner/activityManage/activityReserveDetail";
	}

}