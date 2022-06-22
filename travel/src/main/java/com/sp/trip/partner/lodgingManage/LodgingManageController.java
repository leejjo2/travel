package com.sp.trip.partner.lodgingManage;

import java.io.File;
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

@Controller("partner.lodgingManage.lodgingManageController")
@RequestMapping("/partner/lodgingManage/*")
public class LodgingManageController {
	@Autowired
	private LodgingManageService service;
	@Autowired
	private MyUtil myUtil;
	@Autowired
	private FileManager fileManager;
	
	// 내 숙소 리스트
	@RequestMapping("lodgingList")
	public String lodgingList(@RequestParam(value = "page", defaultValue = "1") int current_page,
			HttpServletRequest req, HttpSession session, 
			Model model) throws Exception {
		
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		
		String cp = req.getContextPath();

		int rows = 10; // 한 화면에 보여주는 게시물 수
		int total_page = 0;
		int dataCount = 0;
		
		// 전체 페이지 수
		Map<String, Object> map = new HashMap<String, Object>();
		dataCount = service.dataCount(map);
		if (dataCount != 0) {
			total_page = myUtil.pageCount(rows, dataCount);
		}
		
		if (total_page < current_page) {
			current_page = total_page;
		}
		
		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		
		List<LodgingManage> list = service.listHotel(info.getUserId());
		
		String listUrl = cp + "/partner/lodgingManage/lodgingList";
		String articleUrl = cp + "/partner/lodgingManage/article?page=" + current_page;
		
		String paging = myUtil.paging(current_page, total_page, listUrl);
		
		model.addAttribute("list", list);
		model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		
		return ".partner.lodgingManage.lodgingList";
	}
	
	// 숙소별 룸 리스트
	@RequestMapping("roomList")
	public String roomList() throws Exception {
		return ".partner.lodgingManage.roomList";
	}
	
	// 숙소 등록하기
	@RequestMapping(value = "lodgingWrite")
	public String lodgingWrite(Model model) throws Exception {
		model.addAttribute("mode", "write");
		return ".partner.lodgingManage.lodgingWrite";
	}
	
	// 등록완료
	@RequestMapping(value = "write", method = RequestMethod.POST)
	public String writeSubmit(LodgingManage dto, HttpSession session) throws Exception {
		String root = session.getServletContext().getRealPath("/");
		String pathname = root + "uploads" + File.separator + "hotel";
		
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		
		try {
			dto.setPartnerId(info.getUserId());
			service.insertHotel(dto, pathname);
		} catch (Exception e) {
		}
		
		return "redirect:/partner/lodgingManage/lodgingList";
	}
	
	// 수정
	@RequestMapping(value = "update")
	public String updateForm(
			@RequestParam int hotelNum,
			HttpSession session,
			Model model) throws Exception {
		
		LodgingManage dto = service.readHotel(hotelNum);
		
		/*
		if (dto == null) {
			return "redirect:/partner/lodgingManage/lodgingList";
		}
		*/
		model.addAttribute("dto", dto);
		// model.addAttribute("page", page);
		model.addAttribute("mode", "update");

		return ".partner.lodgingManage.lodgingWrite";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String updateSubmit(
			LodgingManage dto,
			HttpSession session) throws Exception {
		
		String root = session.getServletContext().getRealPath("/");
		String pathname = root + "uploads" + File.separator + "hotel";
			
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		String userId = info.getUserId();
		
		try {
			service.updateHotel(dto, userId, pathname);
		} catch (Exception e) {
		}

		return "redirect:/partner/lodgingManage/lodgingList";
	}
	
	// 숙소별 방 등록하기
	@RequestMapping("roomWrite")
	public String roomWrite(Model model) throws Exception {
		model.addAttribute("mode", "write");
		return ".partner.lodgingManage.roomWrite";
	}
	
	// 삭제
	@RequestMapping(value = "delete")
	public String deleteHotel(@RequestParam int hotelNum,
			HttpSession session) throws Exception {
		SessionInfo info = (SessionInfo) session.getAttribute("member");

		String root = session.getServletContext().getRealPath("/");
		String pathname = root + "uploads" + File.separator + "hotel";
		
		service.deleteHotel(hotelNum, info.getUserId(), pathname);
		
		return "redirect:/partner/lodgingManage/lodgingList";
	}
	
	// 파일 삭제
	@RequestMapping(value = "deleteFile")
	public String deleteHotelFile(@RequestParam int hotelNum,
			HttpSession session) throws Exception {
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		String userId = info.getUserId();
		
		String root = session.getServletContext().getRealPath("/");
		String pathname = root + "uploads" + File.separator + "hotel";

		LodgingManage dto = service.readHotel(hotelNum);
		if (dto == null) {
			return "redirect:/partner/lodgingManage/lodgingList";
		}

		if(! info.getUserId().equals(dto.getPartnerId())) {
			return "redirect:/partner/lodgingManage/lodgingList";
		}

		try {
			if (dto.getSaveFilename() != null) {
				fileManager.doFileDelete(dto.getSaveFilename(), pathname); // 실제파일삭제
				dto.setSaveFilename("");
				dto.setImageFileNum(0);
				service.updateHotel(dto, userId, pathname); // DB 테이블의 파일명 변경(삭제)
			}
		} catch (Exception e) {
		}

		return "redirect:/partner/lodgingManage/update?num=" + hotelNum;
	}
	
}
