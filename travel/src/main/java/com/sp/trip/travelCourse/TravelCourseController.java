package com.sp.trip.travelCourse;

import java.io.File;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.trip.common.MyUtil;
import com.sp.trip.member.SessionInfo;


@Controller("travelCourse.travelCourseController")
@RequestMapping(value = "/travelCourse/*") 
public class TravelCourseController {
	@Autowired 
	private TravelCourseService service;
	
	@Autowired
	private MyUtil myUtil;


	@RequestMapping(value = "list")
	public String list(@RequestParam(value = "page", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "all") String condition,
			@RequestParam(defaultValue = "") String keyword,
			@RequestParam(defaultValue = "0") String themeNum,
			HttpSession session,
			HttpServletRequest req, Model model) throws Exception {
		
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		String cp = req.getContextPath();
		
		int rows = 9; // 한 화면에 보여주는 게시물 수
		int total_page = 0;
		int dataCount = 0;
		
		if (req.getMethod().equalsIgnoreCase("GET")) { // GET 방식인 경우
			keyword = URLDecoder.decode(keyword, "utf-8");
		}
		
		

		// 전체 페이지 수
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("themeNum", themeNum);
		map.put("condition", condition);
		map.put("keyword", keyword);
		
		dataCount = service.dataCount(map);
		if (dataCount != 0) {
			total_page = myUtil.pageCount(rows, dataCount);
		}
		
		// 게시글 삭제시
		if (total_page < current_page) {
			current_page = total_page;
		}
		
		// 리스트에 출력할 데이터를 가져오기
		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		
		// 글 리스트
		List<TravelCourse> list = service.listBoard(map);
		
		
		// 게시글 좋아요 여부
		int courseNum=0;
		map.put("userId", info.getUserId());
		boolean userBoardLiked;
		boolean userBoardScraped;

		
		for (TravelCourse dto : list) {
			courseNum = dto.getCourseNum();
			map.put("courseNum",courseNum);
			userBoardLiked = service.userBoardLiked(map);
			userBoardScraped = service.userBoardScraped(map);

			dto.setUserBoardLiked(userBoardLiked);
			dto.setUserBoardScraped(userBoardScraped);
		}
		
		
		
		// 리스트의 번호
		int listNum, n = 0;
		for (TravelCourse dto : list) {
			listNum = dataCount - (start + n - 1);
			dto.setListNum(listNum);
			n++;
		}
		
		String query = "";
		String listUrl = cp + "/travelCourse/list";
		String articleUrl = cp + "/travelCourse/article?page="+current_page;
		if (keyword.length() != 0) {
			query = "condition=" + condition + "&keyword=" + URLEncoder.encode(keyword, "utf-8");
		}
		if (!themeNum.equals("0")) {
			query += "themeNum=" + themeNum;
			}
		
		if (query.length() != 0) {
			listUrl = cp + "/travelCourse/list?" + query;
			articleUrl = cp + "/travelCourse/article?page=" + current_page + "&" + query;
		}

		System.out.println("얍!!!");
		System.out.println("listUrl : " + listUrl);
		System.out.println("articleUrl: " + articleUrl);
		
		String paging = myUtil.paging(current_page, total_page, listUrl);

		
		
		List<TravelCourse> citylist = null;
		String saveFileName = "";
		
		TravelCourse cityDto = new TravelCourse();
		
		for(TravelCourse dto : list) {
			cityDto.setCourseNum(dto.getCourseNum());
			citylist = service.listCity(cityDto.getCourseNum());
			dto.setTravelCourseList(citylist);
			
			cityDto.setCourseDetailNum(dto.getCourseDetailNum());

			saveFileName = service.listImg(cityDto.getCourseDetailNum());
			dto.setSaveFileName(saveFileName);
			System.out.println("파일이름"+saveFileName);
		}
		
		System.out.println("데이터개수" + dataCount);
		
		model.addAttribute("list", list);
		model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		model.addAttribute("themeNum", themeNum);


		 
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
			System.out.println("저장된주소 : "+ pathname);
		} catch (Exception e) {
		}
		
		return "redirect:/travelCourse/list";
		
	}
	
	@RequestMapping(value = "article")
	public String article() throws Exception {
		
		return ".travelCourse.article";
	}
	
	// 게시글 좋아요 추가/삭제
	@RequestMapping(value = "insertBoardLike", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> insertBoardLike(
			@RequestParam int courseNum, 
			@RequestParam boolean userLiked,
			HttpSession session) {
		String state = "true";
		int boardLikeCount = 0;
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		
		Map<String, Object> map = new HashMap<>();
		map.put("courseNum", courseNum);
		map.put("userId", info.getUserId());
		
		try {
			if(userLiked) {
				service.deleteBoardLike(map);
			} else {
				service.insertBoardLike(map);
			}
		} catch (DuplicateKeyException e) {
			state = "liked";
		} catch (Exception e) {
			state = "false";
		}
		
		boardLikeCount = service.boardLikeCount(courseNum);
		Map<String, Object> model = new HashMap<>();
		model.put("state",state);
		model.put("boardLikeCount",boardLikeCount);
		

		return model;
	}
	
	@RequestMapping(value = "userBoardLiked", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> userBoardLiked(
			@RequestParam int courseNum, 
			HttpSession session) {
		
		String state = "true";
		SessionInfo info = (SessionInfo) session.getAttribute("member");

		Map<String, Object> map = new HashMap<>();
		map.put("courseNum", courseNum);
		map.put("userId", info.getUserId());

		boolean userBoardLiked = false; // 우선 초기 값을 부여
		try {
			userBoardLiked = service.userBoardLiked(map);
		} catch (Exception e) {
			state = "fasle";
		}
		
		Map<String, Object> model = new HashMap<>();
		
		model.put("state", state);
		model.put("userBoardLiked", userBoardLiked);

		return model;
	}
	
	// 게시글 스크랩 추가/삭제
	@RequestMapping(value = "insertBoardScrap", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> insertBoardScrap(
			@RequestParam int courseNum, 
			@RequestParam boolean userScraped,
			HttpSession session) {
		String state = "true";
		int boardScrapCount = 0;
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		
		Map<String, Object> map = new HashMap<>();
		map.put("courseNum", courseNum);
		map.put("userId", info.getUserId());
		
		try {
			if(userScraped) {
				service.deleteBoardScrap(map);
			} else {
				service.insertBoardScrap(map);
			}
		} catch (DuplicateKeyException e) {
			state = "scraped";
		} catch (Exception e) {
			state = "false";
		}
		
		boardScrapCount = service.boardScrapCount(courseNum);
		Map<String, Object> model = new HashMap<>();
		model.put("state",state);
		model.put("boardScrapCount",boardScrapCount);
		

		return model;
	}
	
	@RequestMapping(value = "userBoardScraped", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> userBoardScraped(
			@RequestParam int courseNum, 
			HttpSession session) {
		
		String state = "true";
		SessionInfo info = (SessionInfo) session.getAttribute("member");

		Map<String, Object> map = new HashMap<>();
		map.put("courseNum", courseNum);
		map.put("userId", info.getUserId());

		boolean userBoardLiked = false; // 우선 초기 값을 부여
		try {
			userBoardLiked = service.userBoardLiked(map);
		} catch (Exception e) {
			state = "fasle";
		}
		
		Map<String, Object> model = new HashMap<>();
		
		model.put("state", state);
		model.put("userBoardLiked", userBoardLiked);

		return model;
	}
}
