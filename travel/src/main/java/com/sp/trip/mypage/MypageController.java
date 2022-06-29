package com.sp.trip.mypage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.trip.activity.Reserve;
import com.sp.trip.admin.memberManage.Member;
import com.sp.trip.common.MyUtil;
import com.sp.trip.member.SessionInfo;
import com.sp.trip.travelCourse.TravelCourse;

@Controller("mypage.mypageController")
@RequestMapping(value = "/mypage/*")
public class MypageController {
	@Autowired 
	private MypageService service;
	
	@Autowired
	private MyUtil myUtil;
	
	@RequestMapping(value = "mypageList")
	public String mypageList(HttpSession session,Model model ) throws Exception{ 
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		
		int likeCount = 0;
		int scrapCount = 0;
		int orderCount = 0;
		String userProfileImg = null;
		
		likeCount = service.searchMyLike(info.getUserId()).size();
		scrapCount = service.searchMyScrap(info.getUserId()).size();
		orderCount = service.orderCount(info.getUserId());
		userProfileImg = service.userProfileImg(info.getUserId());

		model.addAttribute("orderCount", orderCount);
		model.addAttribute("likeCount", likeCount);
		model.addAttribute("scrapCount", scrapCount);
		model.addAttribute("userProfileImg", userProfileImg);
		

		return".mypage.mypageList";
	}
	
	@RequestMapping(value = "myLikeList")
	public String myLikeList(@RequestParam(value = "page", defaultValue = "1") int current_page,
	HttpSession session, HttpServletRequest req, Model model) throws Exception {
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		String cp = req.getContextPath();
		
		int rows = 9; // 한 화면에 보여주는 게시물 수
		int total_page = 0;
		int dataCount = 0;
		
		Map<String, Object> map = new HashMap<String, Object>();
		dataCount = service.searchMyLike(info.getUserId()).size();
		if(dataCount != 0) {
			total_page = myUtil.pageCount(rows, dataCount);
		}
		
		// 게시물 삭제시
		if (total_page < current_page ) {
			current_page = total_page;
		}
		
		// 리스트에 출력할 데이터를 가져오기
		int start = (current_page - 1 ) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		
		
		String listUrl = cp + "/mypage/myLikeList";
		
		List<TravelCourse> list = new ArrayList<>();
		
		// 좋아요 글번호
		List<Integer> courseNumList = service.searchMyLike(info.getUserId());
		for(int courseNum : courseNumList) {
			map.put("courseNum", courseNum);
			try {
				TravelCourse readMyLike = service.readMyList(map);
				list.add(readMyLike);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		String paging = myUtil.paging(current_page, total_page, listUrl);

		
		model.addAttribute("list", list);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);

		
		return ".mypage.myLikeList";
	}
	
	@RequestMapping(value = "myScrapList")
	public String myScrapList(@RequestParam(value = "page", defaultValue = "1") int current_page,
	HttpSession session, HttpServletRequest req, Model model) throws Exception {
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		String cp = req.getContextPath();
		
		int rows = 9; // 한 화면에 보여주는 게시물 수
		int total_page = 0;
		int dataCount = 0;
		
		Map<String, Object> map = new HashMap<String, Object>();
		dataCount = service.searchMyScrap(info.getUserId()).size();
		if(dataCount != 0) {
			total_page = myUtil.pageCount(rows, dataCount);
		}
		
		// 게시물 삭제시
		if (total_page < current_page ) {
			current_page = total_page;
		}
		
		// 리스트에 출력할 데이터를 가져오기
		int start = (current_page - 1 ) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		
		String listUrl = cp + "/mypage/myScrapList";
		
		List<TravelCourse> list = new ArrayList<>();
		
		// 좋아요 글번호
		List<Integer> courseNumList = service.searchMyScrap(info.getUserId());
		for(int courseNum : courseNumList) {
			map.put("courseNum", courseNum);
			try {
				TravelCourse readMyScrap = service.readMyList(map);
				list.add(readMyScrap);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		String paging = myUtil.paging(current_page, total_page, listUrl);

		
		model.addAttribute("list", list);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);

		
		return ".mypage.myScrapList";
	}
	
	@RequestMapping(value = "orderDetaileList")
	public String orderDetailList(@RequestParam(value="page", defaultValue = "1") int current_page,
			HttpSession session, HttpServletRequest req, Model model) throws Exception {
		 
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		String cp = req.getContextPath();
		
		int rows = 12;
		int total_page=0;
		int dataCount = 0;
		
		Map<String, Object> map = new HashMap<String, Object>();
		dataCount = service.orderCount(info.getUserId());
		if(dataCount != 0) {
			total_page = myUtil.pageCount(rows, dataCount);
		}
		
		// 삭제시
		if (total_page < current_page) {
			current_page = total_page;
		}
		
		// 출력할 데이터 가져오기
		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		map.put("userId", info.getUserId());
		
		List<Reserve> list = service.readOrderDetail(map);
		
		String listUrl = cp + "/mypage/orderDetail";

		String paging = myUtil.paging(current_page, total_page, listUrl);

		model.addAttribute("list", list);
		model.addAttribute("page", current_page);
		model.addAttribute("paging", paging);
		model.addAttribute("dataCount", dataCount);
		
		return ".mypage.orderDetaileList";
	}
	
	// 파트너상세 정보 : AJAX-Text 응답
		@RequestMapping(value = "orderDetaile")
		public String orderDetaile(@RequestParam int reserveNum, Model model) throws Exception {
			
			Reserve dto = service.orderDetail(reserveNum);

			model.addAttribute("dto", dto);

			return "mypage/orderDetaile";
		}
}
