package com.sp.trip.theme;

import java.io.File;
import java.net.URLDecoder;
import java.net.URLEncoder;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.trip.common.MyUtil;
import com.sp.trip.member.SessionInfo;

@Controller("theme.themeController")
@RequestMapping(value = "/theme/*")
public class ThemeController {
	@Autowired
	private ThemeService service;
	@Autowired
	private MyUtil myUtil;

	@SuppressWarnings("null")
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list(@RequestParam(value = "page", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "all") String condition, @RequestParam(defaultValue = "") String keyword,
			HttpServletRequest req, Model model) throws Exception {
		String cp = req.getContextPath();
		int rows = 10;
		int total_page;
		int dataCount;

		if (req.getMethod().equalsIgnoreCase("GET")) { // GET 방식인 경우
			keyword = URLDecoder.decode(keyword, "utf-8");
		}

		// 전체 페이지 수
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("condition", condition);
		map.put("keyword", keyword);

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
		List<Theme> list2 = new ArrayList<Theme>();
		List<Theme> list3 = new ArrayList<Theme>();
		Theme dto2 = new Theme();
		for (Theme dto : list) {
			Theme dto3 = new Theme();
			if (dto2.getCourseNum() == 0  || dto.getCourseNum() != dto2.getCourseNum()) {
				if (dto2.getCourseNum() != 0) {
					list2.add(dto2);
					list3 = new ArrayList<Theme>();
					dto2 = new Theme();
				}
				dto2.setCourseNum(dto.getCourseNum());
				dto2.setUserId(dto.getUserId());
				dto2.setSubject(dto.getSubject());
				dto2.setContent(dto.getContent());
				dto2.setReg_date(dto.getReg_date());
				dto2.setHitCount(dto.getHitCount());
				dto2.setCityNum(dto.getCityNum());
				dto2.setCityName(dto.getCityName());
				dto2.setThemeNum(dto.getThemeNum());
				dto2.setThemeName(dto.getCityName());
				dto2.setPeriod(dto.getPeriod());
				dto2.setHashtag(dto.getHashtag());
				dto3.setCourseDetailNum(dto.getCourseDetailNum());
				dto3.setCourse_seq(dto.getCourse_seq());
				dto3.setPlaceName(dto.getPlaceName());
				dto3.setAddress(dto.getAddress());
				dto3.setLongitude(dto.getLongitude());
				dto3.setLatitude(dto.getLatitude());
				dto3.setCourseContent(dto.getCourseContent());
				dto3.setSaveFileName(dto.getSaveFileName());
				list3.add(dto3);
				dto2.setAdminCourseList(list3);
			} else if(dto.getCourseNum() == dto2.getCourseNum()){
				dto3.setCourseDetailNum(dto.getCourseDetailNum());
				dto3.setCourse_seq(dto.getCourse_seq());
				dto3.setPlaceName(dto.getPlaceName());
				dto3.setAddress(dto.getAddress());
				dto3.setLongitude(dto.getLongitude());
				dto3.setLatitude(dto.getLatitude());
				dto3.setCourseContent(dto.getCourseContent());
				dto3.setSaveFileName(dto.getSaveFileName());
				list3.add(dto3);
				dto2.setAdminCourseList(list3);
			}
		}
		list2.add(dto2);

		String query = "";
		String listUrl = cp + "/theme/list";
		String articleUrl = cp + "/theme/article?page=" + current_page;
		if (keyword.length() != 0) {
			query = "condition=" + condition + "&keyword=" + URLEncoder.encode(keyword, "utf-8");
		}
		if (query.length() != 0) {
			listUrl = cp + "/theme/list?" + query;
			articleUrl = cp + "/theme/article?page=" + current_page + "&" + query;
		}
		String paging = myUtil.paging(current_page, total_page, listUrl);
		model.addAttribute("list", list2);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("page", current_page);
		model.addAttribute("paging", paging);

		model.addAttribute("condition", condition);
		model.addAttribute("keyword", keyword);

		return ".theme.themeList";
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
}
