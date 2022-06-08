package com.sp.trip.city;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.trip.common.APISerializer;

@Controller("city.cityController")
@RequestMapping(value = "/city/*")
public class cityController {
	
	@Autowired
	private APISerializer apiSerializer;

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list() {
		return ".city.localList";
	}
	
	@RequestMapping(value = "searchList", method = RequestMethod.GET)
	public String searchList() {
		return ".city.searchList";
	}
	
	@RequestMapping(value = "article", method = RequestMethod.GET)
	public String article() {
		return ".city.article";
	}
	
	@RequestMapping(value = "searchKeyword", method = RequestMethod.GET, produces = "application/xml; charset=utf-8")
	@ResponseBody
	public String xmlList1(HttpServletRequest req) throws Exception {
		String result = "";
		
		String MobileOS = "ETC";
		String MobileApp = "AppTest";
		String arrange = "A";
		String keyword = "서울";
		
		int numOfRows = 10;
		int pageNo = 1;
		
		String spec = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchKeyword";
		spec += "?ServiceKey=t5hhTD%2BtI3ygSFurlzc0GxMGmmEeDIp9pXphHT%2FXuq5Aw3bFiwsxFMuUs5FokAIKDn7kdbP2otYXVKdmbUuBlg%3D%3D";
		spec += "&pageNo="+pageNo;
		spec += "&numOfRows="+numOfRows;
		spec += "&MobileOS="+MobileOS;
		spec += "&MobileApp="+MobileApp;
		spec += "&arrange="+arrange;
		spec += "&keyword="+keyword;
		
		// XML을 String으로 반환
		result = apiSerializer.receiveToString(spec);
		
		return result;
	}
}
