package com.sp.trip.Qna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("Qna.QnaController")
@RequestMapping("/qna/*")
public class QnaController {
	
	// Qna 리스트
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String qnaList() throws Exception {
		return ".qna.qnaList";
	}
}

