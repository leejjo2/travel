package com.sp.trip.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller("member.memberController")
@RequestMapping(value = "/member/*")
public class MemberController {
	@Autowired
	private MemberService service;

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginForm() {
		return ".member.login";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String loginSubmit(@RequestParam String userId,
			@RequestParam String userPwd,
			HttpSession session,
			Model model) {

		Member dto = service.loginMember(userId);
		if (dto == null || !userPwd.equals(dto.getUserPwd())) {
			model.addAttribute("message", "아이디 또는 패스워드가 일치하지 않습니다.");
			return ".member.login";
		}

		// 세션에 로그인 정보 저장
		SessionInfo info = new SessionInfo();
		info.setMemberIdx(dto.getMemberIdx());
		info.setUserId(dto.getUserId());
		info.setUserName(dto.getUserName());
		info.setMembership(dto.getMembership());

		session.setMaxInactiveInterval(30 * 60); // 세션유지시간 30분, 기본:30분

		session.setAttribute("member", info);

		// 로그인 이전 URI로 이동
		String uri = (String) session.getAttribute("preLoginURI");
		session.removeAttribute("preLoginURI");
		if (uri == null) {
			uri = "redirect:/";
		} else {
			uri = "redirect:" + uri;
		}

		return uri;
	}

	@RequestMapping(value = "logout")
	public String logout(HttpSession session) {
		// 세션에 저장된 정보 지우기
		session.removeAttribute("member");

		// 세션에 저장된 모든 정보 지우고, 세션초기화
		session.invalidate();

		return "redirect:/";
	}

	@RequestMapping(value = "member", method = RequestMethod.GET)
	public String memberForm(Model model) {
		model.addAttribute("mode", "member");
		return ".member.member";
	}
	
	@RequestMapping(value = "pwd", method = RequestMethod.GET)
	public String pwdForm(String dropout, Model model) {
		

		model.addAttribute("mode", "update");


		return ".member.pwd";
	}
	
	@RequestMapping(value= "pwd", method = RequestMethod.POST)
	public String pwdSubmit(@RequestParam String userPwd,
			@RequestParam String mode,
			final RedirectAttributes reAttr,
			HttpSession session,
			Model model) {
		
		SessionInfo info = (SessionInfo) session.getAttribute("member");
		
		Member dto = service.readMember(info.getUserId());
		if(dto == null) {
			System.out.println("널이다!@!!!");
			session.invalidate();
			return "redirect:/";
		}
		
		if(! dto.getUserPwd().equals(userPwd)) {
			model.addAttribute("mode", "update");
			model.addAttribute("message", "패스워드가 일치하지 않습니다.");
			
			return ".member.pwd";
		}
		
		// 회원정보 수정폼
		model.addAttribute("dto", dto);
		model.addAttribute("mode", "update");
		System.out.println("수정포오옴");		
		return ".member.member";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String updateSubmit(Member dto,
			final RedirectAttributes reAttr,
			Model model) {
		
		try {
			service.updateMember(dto);
		} catch (Exception e) {
		}
		
		StringBuilder sb = new StringBuilder();
		sb.append(dto.getUserName() + "님의 회원정보가 정상적으로 변경되었습니다.<br>");
		sb.append("메인화면으로 이동 하시기 바랍니다.<br>");
		
		reAttr.addFlashAttribute("title", "회원 정보 수정");
		reAttr.addFlashAttribute("message", sb.toString());
		
		return "redirect:/member/complete";
	}

	
	@RequestMapping(value = "noAuthorized")
	public String noAuthorized(Model model) {
		return ".member.noAuthorized";
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
