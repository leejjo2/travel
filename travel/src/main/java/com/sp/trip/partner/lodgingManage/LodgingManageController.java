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
import org.springframework.web.bind.annotation.ResponseBody;

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
		
		List<LodgingManage> listFile = service.listFile(hotelNum);
		
		model.addAttribute("dto", dto);
		model.addAttribute("listFile", listFile);
		// model.addAttribute("page", page);
		model.addAttribute("mode", "update");


		return ".partner.lodgingManage.lodgingWrite";
	}
	
	// 수정완료
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
	@ResponseBody
	public Map<String, Object> deleteHotelFile(@RequestParam int hotelNum,
			@RequestParam int fileNum,
			HttpSession session) throws Exception {
		
		String root = session.getServletContext().getRealPath("/");
		String pathname = root + "uploads" + File.separator + "hotel";
		
		LodgingManage fdto = service.readFile(fileNum);
		LodgingManage dto = service.readHotel(hotelNum);
		
		
		if (fdto != null) {
			fileManager.doFileDelete(dto.getHotelSaveFilename(), pathname);
		}
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("field", "fileNum");
		map.put("num", fileNum);
		map.put("dto", dto);
		service.deleteFile(map);

		// 작업 결과를 json으로 전송
		Map<String, Object> model = new HashMap<>();
		model.put("state", "true");
		return model;
		
	}
	
	
	// 숙소별 룸 리스트
	@RequestMapping("roomList")
	public String roomList(HttpServletRequest req, HttpSession session, 
			Model model) throws Exception {
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		
		List<LodgingManage> list = service.listRoom(info.getUserId());
		
		model.addAttribute("list", list);
		
		return ".partner.lodgingManage.roomList";
	}
	
	
	// 숙소별 방 등록하기
	@RequestMapping(value = "roomWrite", method = RequestMethod.GET)
	public String roomWrite( @RequestParam int hotelNum, Model model) throws Exception {
		LodgingManage hdto = service.readHotel(hotelNum);

		model.addAttribute("hdto", hdto);
		model.addAttribute("mode", "roomWrite");
		
		return ".partner.lodgingManage.roomWrite";
	}
	
	// 방 등록완료
	@RequestMapping(value = "roomWrite", method = RequestMethod.POST)
	public String roomWriteSubmit(
			LodgingManage dto, HttpSession session) throws Exception {
		String root = session.getServletContext().getRealPath("/");
		String pathname = root + "uploads" + File.separator + "hotel";
		
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		
		try {
			dto.setPartnerId(info.getUserId());
			service.insertRoom(dto, pathname);
		} catch (Exception e) {
		}
		
		return "redirect:/partner/lodgingManage/roomList";
	}
	
	// 방 수정
	@RequestMapping(value = "roomUpdate",  method = RequestMethod.GET)
	@ResponseBody
	public String updateRoomForm(
			@RequestParam int roomNum,
			@RequestParam int hotelNum,
			HttpSession session,
			Model model) throws Exception {
		
		LodgingManage dto = service.readRoom(roomNum);
		LodgingManage hdto = service.readHotel(hotelNum);
		List<LodgingManage> listFile = service.listRoomFile(roomNum);
		/*
		if (dto == null) {
			return "redirect:/partner/lodgingManage/lodgingList";
		}
		*/
		model.addAttribute("dto", dto);
		// model.addAttribute("page", page);
		model.addAttribute("listFile", listFile);
		model.addAttribute("mode", "roomUpdate");
		model.addAttribute("hdto", hdto);

		return ".partner.lodgingManage.roomWrite";
	}
	
	// 방 수정완료
	@RequestMapping(value = "roomUpdate", method = RequestMethod.POST)
	public String updateRoomSubmit(
			LodgingManage dto,
			HttpSession session) throws Exception {
		
		String root = session.getServletContext().getRealPath("/");
		String pathname = root + "uploads" + File.separator + "hotel";
			
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		String userId = info.getUserId();
		
		try {
			service.updateRoom(dto, userId, pathname);
		} catch (Exception e) {
		}

		return "redirect:/partner/lodgingManage/roomList";
	}
	
	// 방 삭제
	@RequestMapping(value = "roomDelete")
	public String deleteRoom(@RequestParam int roomNum,
			HttpSession session) throws Exception {
		SessionInfo info = (SessionInfo) session.getAttribute("member");

		String root = session.getServletContext().getRealPath("/");
		String pathname = root + "uploads" + File.separator + "hotel";
		
		service.deleteRoom(roomNum, info.getUserId(), pathname);
		
		return "redirect:/partner/lodgingManage/roomList";
	}
	
	// 방 파일 삭제
	@RequestMapping(value = "deleteRoomFile")
	@ResponseBody
	public Map<String, Object> deleteRoomFile(@RequestParam int fileNum,
			HttpSession session) throws Exception {
		
		String root = session.getServletContext().getRealPath("/");
		String pathname = root + "uploads" + File.separator + "hotel";

		LodgingManage dto = service.readFile(fileNum);
		
		if (dto != null) {
			fileManager.doFileDelete(dto.getRoomSaveFilename(), pathname);
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("field", "fileNum");
		map.put("num", fileNum);
		service.deleteRoomFile(map);

		// 작업 결과를 json으로 전송
		Map<String, Object> model = new HashMap<>();
		model.put("state", "true");
		return model;
		
	}
	
}
