package com.sp.trip.partner;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sp.trip.member.SessionInfo;

@Controller("partner.partnerController")
@RequestMapping(value = "/withpartner/*")
public class PartnerController {

	@Autowired
	private PartnerService service;

	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String joinPartnerForm(
			final RedirectAttributes reAttr,
			HttpSession session) {
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		
		try {
			Partner statusDto = service.readStatus(info.getUserId());

			if(statusDto != null) { // 이미 테이블에 해당 아이디가 있다면
				StringBuilder sb = new StringBuilder();
				sb.append(info.getUserName() + "님은 이미 파트너이거나 파트너 승인이 검토 중인 상태입니다.<br>");
				sb.append("파트너 상태를 확인해주세요.<br>");

				// 리다이렉트된 페이지에 값 넘기기
				reAttr.addFlashAttribute("message", sb.toString());
				reAttr.addFlashAttribute("title", "파트너 신청 중복");
				
				return "redirect:/withpartner/complete";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return ".member.partnerJoin";
	}

	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String joinPartnerSubmit(
			Partner dto,
			final RedirectAttributes reAttr,
			HttpSession session) {

		SessionInfo info = (SessionInfo) session.getAttribute("member");
		
		try {		
			dto.setPartnerId(info.getUserId());
			service.insertPartner(dto);
		} catch (Exception e) {
			e.printStackTrace();
			
			StringBuilder sb = new StringBuilder();
			sb.append(dto.getPartnerName() + "님의 파트너 요청이 실패했습니다.<br>");
			sb.append("다시 한 번 신청해주세요.<br>");

			// 리다이렉트된 페이지에 값 넘기기
			reAttr.addFlashAttribute("message", sb.toString());
			reAttr.addFlashAttribute("title", "파트너 신청 실패");
			
			return "redirect:/withpartner/complete";
		}

		StringBuilder sb = new StringBuilder();
		sb.append(dto.getPartnerName() + "님의 파트너 요청이 정상적으로 처리되었습니다.<br>");
		sb.append("승인 절차는 1~2일 소요 예정입니다.<br>");

		// 리다이렉트된 페이지에 값 넘기기
		reAttr.addFlashAttribute("message", sb.toString());
		reAttr.addFlashAttribute("title", "파트너 신청");
		
		return "redirect:/withpartner/complete";
	}
	
	@RequestMapping(value = "complete")
	public String complete(@ModelAttribute("message") String message) throws Exception {

		// 컴플릿 페이지(complete.jsp)의 출력되는 message와 title는 RedirectAttributes 값이다.
		// F5를 눌러 새로 고침을 하면 null이 된다.

		if (message == null || message.length() == 0) // F5를 누른 경우
			return "redirect:/";

		return ".member.complete";
	}
}
