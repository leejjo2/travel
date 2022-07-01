package com.sp.trip.theme;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
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

@Controller("theme.themeController")
@RequestMapping(value = "/theme/*")
public class ThemeController {
	@Autowired
	private ThemeService service;
	@Autowired
	private MyUtil myUtil;
	
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list(
			@RequestParam(value = "page", defaultValue ="1") int current_page,
			@RequestParam (defaultValue = "") String hashtag,
			Model model
			) throws Exception {
		hashtag = URLDecoder.decode(hashtag, "utf-8");
		model.addAttribute("hashtag", hashtag);
		model.addAttribute("page", current_page);
		return ".theme.themeList";
	}

	@RequestMapping(value = "listCourse")
	@ResponseBody
	public Map<String, Object> listCourse(
			@RequestParam(value = "page") int current_page,
			@RequestParam (defaultValue = "0") int themeNum, 
			@RequestParam (defaultValue = "") String keyword,
			@RequestParam (defaultValue = "0") int areaCode,
			@RequestParam (defaultValue = "") String hashtag,
			@RequestParam (defaultValue = "") String period,
			HttpServletRequest req) throws Exception {
		String cp = req.getContextPath();
		int rows = 3; 
		int total_page;
		int dataCount;

		if (req.getMethod().equalsIgnoreCase("GET")) { // GET 방식인 경우
			keyword = URLDecoder.decode(keyword, "utf-8");
		}

		// 전체 페이지 수
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("themeNum", themeNum);
		map.put("keyword", keyword);
		map.put("areaCode", areaCode);
		map.put("hashtag", hashtag);
		map.put("period", period);

		dataCount = service.dataCount(map);
		total_page = myUtil.pageCount(rows, dataCount);

		if (total_page < current_page) {
			current_page = total_page;
		}
		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);

		List<Theme> list = service.listAdminCourse(map);
		List<Theme> courseList = new ArrayList<Theme>();
		
		for(Theme dto : list) {
			courseList = service.listAdminDetailCourse(dto.getCourseNum());
			dto.setAdminCourseList(courseList);
			
			dto.setSaveFileName(service.listImg(dto.getCourseNum()));
		}


		String query = "";
		String listUrl = cp + "/theme/list";
		String articleUrl = cp + "/theme/article?page=" + current_page;
		if (keyword.length() != 0) {
			query = "themeNum=" + themeNum + "&keyword=" + URLEncoder.encode(keyword, "utf-8");
		}
		if (query.length() != 0) {
			listUrl = cp + "/theme/list?" + query;
			articleUrl = cp + "/theme/article?page=" + current_page + "&" + query;
		}
		String paging = myUtil.pagingMethod(current_page, total_page, "pagingMethod");
		
		Map<String, Object> model = new HashMap<String, Object>();
		
		model.put("list", list);
		model.put("dataCount", dataCount);
		model.put("total_page", total_page);
		model.put("articleUrl", articleUrl);
		model.put("page", current_page);
		model.put("areaCode", areaCode);
		model.put("paging", paging);

		model.put("themeNum", themeNum);
		model.put("keyword", keyword);

		return model;
	}

	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String write(Model model) throws Exception {

		Map<String, Object> map = new HashMap<String, Object>();
		List<Theme> cityList = service.listCity(map);
		List<Theme> themeList = service.listTheme(map);

		model.addAttribute("mode", "write");
		model.addAttribute("cityList", cityList);
		model.addAttribute("themeList", themeList);

		return ".theme.write";
	}

	@RequestMapping(value = "write", method = RequestMethod.POST)
	public String writeSubmit(Theme dto, HttpSession session) throws Exception {
		SessionInfo info = (SessionInfo) session.getAttribute("member");

		String root = session.getServletContext().getRealPath("/");
		String pathname = root + "uploads" + File.separator + "course";
		try {
			dto.setUserId(info.getUserId());
			service.insertBoard(dto, pathname);
		} catch (Exception e) {
		}
		return "redirect:/theme/list";
	}
	
	@RequestMapping(value = "article", method = RequestMethod.GET)
	public String article(
			@RequestParam int courseNum,
			@RequestParam String page,
			HttpSession session,
			Model model
			) throws Exception {
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		String query = "page=" + page;
		
		service.updateHitCount(courseNum);
		
		Theme dto = service.readBoard(courseNum);
		if (dto == null) {
			return "redirect:/theme/list?" + query;
		}
		dto.setContent(dto.getContent().replaceAll("\n", "<br>"));
		
		// 게시글 좋아요,스크랩 여부 
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", info.getUserId());
		boolean userBoardLiked;
		boolean userBoardScraped;
		map.put("courseNum", courseNum);
		userBoardLiked = service.userBoardLiked(map);
		userBoardScraped = service.userBoardScraped(map);
		dto.setUserBoardLiked(userBoardLiked);
		dto.setUserBoardScraped(userBoardScraped);
		
		// 게시글 좋아요, 스크랩 개수
		int likeCount = service.boardLikeCount(courseNum);
		int scrapCount = service.boardScrapCount(courseNum);
		
		dto.setLikeCount(likeCount);
		dto.setScrapCount(scrapCount);
		
		
		
		List<Theme> courseList = service.listAdminDetailCourse(courseNum);
		int courseCount = 0;
		for(Theme dto2 : courseList) {
			courseCount++;
			dto2.setSaveFileName(service.listImgs(dto2.getCourseDetailNum()));
		}
		String latitude = courseList.get(0).getLatitude();
		String longitude = courseList.get(0).getLongitude();
		model.addAttribute("dto", dto);
		model.addAttribute("courseList", courseList);
		model.addAttribute("courseCount", courseCount);
		model.addAttribute("latitude", latitude);
		model.addAttribute("longitude", longitude);
		
		model.addAttribute("page", page);
		model.addAttribute("query", query);
			
		return ".theme.article";
	}
	@RequestMapping(value = "regions")
	@ResponseBody
	public Map<String, Object> regions(
			@RequestParam(defaultValue = "") int courseNum
			) throws Exception {

		// 지도를 표시할 리전
		List<Theme> list = null;
		
		list = service.listAdminDetailCourse(courseNum);

		Map<String, Object> model = new HashMap<String, Object>();

		model.put("list", list);
		
		return model;
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

				boolean userBoardScraped = false; // 우선 초기 값을 부여
				try {
					userBoardScraped = service.userBoardScraped(map);
				} catch (Exception e) {
					state = "fasle";
				}
				
				Map<String, Object> model = new HashMap<>();
				
				model.put("state", state);
				model.put("userBoardScraped", userBoardScraped);

				return model;
			}
	
}
