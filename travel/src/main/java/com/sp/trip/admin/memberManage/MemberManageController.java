package com.sp.trip.admin.memberManage;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.trip.common.MyUtil;

@Controller("admin.memberManage.memberManageController")
@RequestMapping("/admin/memberManage/*")
public class MemberManageController {
	@Autowired
	private MemberManageService service;

	@Autowired
	@Qualifier("myUtilGeneral")
	private MyUtil myUtil;

	@RequestMapping("list")
	public String memberManage(@RequestParam(value = "page", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "userId") String condition, @RequestParam(defaultValue = "") String keyword,
			@RequestParam(defaultValue = "") String enabled, HttpServletRequest req, Model model) throws Exception {

		String cp = req.getContextPath();

		int rows = 10;
		int total_page = 0;
		int dataCount = 0;

		if (req.getMethod().equalsIgnoreCase("GET")) {
			keyword = URLDecoder.decode(keyword, "utf-8");
		}

		// 전체 페이지 수
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("enabled", enabled);
		map.put("condition", condition);
		map.put("keyword", keyword);

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

		// 멤버 리스트
		List<Member> list = service.listMember(map);

		// 리스트의 번호
		int listNum, n = 0;
		for (Member dto : list) {
			listNum = dataCount - (start + n - 1);
			dto.setListNum(listNum);
			n++;
		}

		String query = "";
		String listUrl = cp + "/admin/memberManage/list";

		if (keyword.length() != 0) {
			query = "condition=" + condition + "&keyword=" + URLEncoder.encode(keyword, "utf-8");
		}

		if (enabled.length() != 0) {
			if (query.length() != 0)
				query = query + "&enabled=" + enabled;
			else
				query = "enabled=" + enabled;
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
		model.addAttribute("enabled", enabled);
		model.addAttribute("condition", condition);
		model.addAttribute("keyword", keyword);

		return ".admin.memberManage.list";
	}

	// 회원상세 정보 : AJAX-Text 응답
	@RequestMapping(value = "detaile")
	public String detaileMember(@RequestParam String userId, Model model) throws Exception {
		Member dto = service.readMember(userId);
		Member memberState = service.readMemberState(userId);
		List<Member> listState = service.listMemberState(userId);

		model.addAttribute("dto", dto);
		model.addAttribute("memberState", memberState);
		model.addAttribute("listState", listState);

		return "admin/memberManage/detaile";
	}

	// 회원 상세정보 수정
	@RequestMapping(value = "updateMemberState", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> updateMemberState(Member dto) throws Exception {

		String state = "true";
		try {
			// 회원 활성/비활성 변경
			Map<String, Object> map = new HashMap<>();
			map.put("userId", dto.getUserId());
			if (dto.getStateCode() == 0) {
				map.put("enabled", 1);
			} else {
				map.put("enabled", 0);
			}
			service.updateMemberEnabled(map);
			
			// 회원 상태 변경 사항 저장
			service.insertMemberState(dto);

			if (dto.getStateCode() == 0) {
				// 회원 패스워드 실패횟수 초기화
				service.updateFailureCountReset(dto.getUserId());
			}
		} catch (Exception e) {
			state = "false";
		}

		Map<String, Object> model = new HashMap<>();
		model.put("state", state);
		return model;
	}

	// 회원분석 창
	@RequestMapping("analysis")
	public String analysis(Model model) throws Exception {

		return ".admin.memberManage.analysis";
	}

	// 일반회원 연령 분석
	@RequestMapping("ageAnalysis")
	@ResponseBody
	public Map<String, Object> listAgeSection() throws Exception {

		Map<String, Object> model = new HashMap<String, Object>();

		List<Analysis> list = service.listAgeSection();

		model.put("list", list);

		return model;
	}

	// 파트너 리스트
	@RequestMapping("partnerList")
	public String partnerManage(@RequestParam(value = "page", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "userId") String condition, @RequestParam(defaultValue = "") String keyword,
			@RequestParam(defaultValue = "") String enabled, HttpServletRequest req, Model model) throws Exception {

		String cp = req.getContextPath();

		int rows = 10;
		int total_page = 0;
		int dataCount = 0;

		if (req.getMethod().equalsIgnoreCase("GET")) {
			keyword = URLDecoder.decode(keyword, "utf-8");
		}

		// 전체 페이지 수
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("enabled", enabled);
		map.put("condition", condition);
		map.put("keyword", keyword);

		dataCount = service.dataCountPartner(map);
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
		List<Member> list = service.listPartner(map);

		// 리스트의 번호
		int listNum, n = 0;
		for (Member dto : list) {
			listNum = dataCount - (start + n - 1);
			dto.setListNum(listNum);
			n++;
		}

		String query = "";
		String listUrl = cp + "/admin/memberManage/list";

		if (keyword.length() != 0) {
			query = "condition=" + condition + "&keyword=" + URLEncoder.encode(keyword, "utf-8");
		}

		if (enabled.length() != 0) {
			if (query.length() != 0)
				query = query + "&enabled=" + enabled;
			else
				query = "enabled=" + enabled;
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
		model.addAttribute("enabled", enabled);
		model.addAttribute("condition", condition);
		model.addAttribute("keyword", keyword);

		return ".admin.memberManage.partnerList";
	}

	// 파트너상세 정보 : AJAX-Text 응답
	@RequestMapping(value = "partnerDetaile")
	public String detailePartner(@RequestParam String userId, Model model) throws Exception {
		Member dto = service.readPartner(userId);
		Member memberState = service.readMemberState(userId);
		List<Member> listState = service.listMemberState(userId);

		model.addAttribute("dto", dto);
		model.addAttribute("memberState", memberState);
		model.addAttribute("listState", listState);

		return "admin/memberManage/partnerDetaile";
	}

	// 회원 상세정보 수정
	@RequestMapping(value = "updatePartnerState", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> updatePartnerState(Member dto) throws Exception {

		try {
			service.updatePartnerStatus(dto);
			if (dto.getPartnerStatus().equals("승인완료")) {
				dto.setMembership(33);
				service.updatePartnerMembership(dto);
			} else if (dto.getPartnerStatus().equals("승인거절")) {
				dto.setMembership(1);
				service.updatePartnerMembership(dto);
			}

		} catch (Exception e) {
		}

		Map<String, Object> model = new HashMap<>();
		return model;
	}

}
