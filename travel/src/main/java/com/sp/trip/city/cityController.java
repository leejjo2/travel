package com.sp.trip.city;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	// 키워드 검색하기
	@RequestMapping(value = "searchKeyword", produces = "application/xml; charset=utf-8")
	public String searchKeyword(
			HttpServletRequest req
			) throws Exception {
		String result = "";
			try {
			
	 		int numOfRows = 25;
	 		int pageNo = 1;
	 		String keyword= "";
	 		
	 		String spec = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaCode";
	 		spec += "?ServiceKey=서비스키";
	 		spec += "&numOfRows="+ numOfRows;
	 		spec += "&pageNo="+ pageNo;
	 		spec += "&MobileOS=ETC";
	 		spec += "&MobileApp=AppTest";
	 		spec += "&keyword="+ keyword;
	 		
	 		
	 		result = apiSerializer.receiveXmlToJson(spec);
	 		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	// 지역 코드 구하기
	@RequestMapping(value = "requestAreacode", produces = "application/xml; charset=utf-8")
	@ResponseBody
	public String areacode(
			HttpServletRequest req,
			@RequestParam int areacode
			) throws Exception {
		String result = "";
		try {
			
	 		int numOfRows = 25;
	 		int pageNo = 1;
	 		
	 		String spec = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaCode";
	 		spec += "?ServiceKey=서비스키";
	 		spec += "&numOfRows="+ numOfRows;
	 		spec += "&pageNo="+ pageNo;
	 		spec += "&MobileOS=ETC";
	 		spec += "&MobileApp=travel";
	 		spec += "&areaCode="+areacode;
	 		
	 		result = apiSerializer.receiveXmlToJson(spec);
	 		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	// 지역 이름 구하기
	@RequestMapping(value = "readCity", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> readcity( 
			@RequestParam int cityNum
			,@RequestParam String cityName
			,@RequestParam String areacode) {

		
		Map<String, Object> model = new HashMap<>();
		
		model.put("cityNum", cityNum);
		model.put("cityName", cityName);
		model.put("areacode", areacode);
		
		return model;
	}
	
	// 지역 기반 리스트 구하기
	@RequestMapping(value = "areaBasedList", method = RequestMethod.GET, produces = "application/xml; charset=utf-8")
	@ResponseBody
	public String areaBasedList(HttpServletRequest req
								,@RequestParam int areacode) throws Exception {
		String result = "";
		
		String MobileOS = "ETC";
		String MobileApp = "AppTest";
		String arrange = "B";
		
		int numOfRows = 10;
		int pageNo = 1;
		
		String spec = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList";
		spec += "?ServiceKey=서비스키";
		spec += "&pageNo="+pageNo;
		spec += "&numOfRows="+numOfRows;
		spec += "&MobileOS="+MobileOS;
		spec += "&MobileApp="+MobileApp;
		spec += "&arrange="+arrange;
		spec += "&areaCode="+areacode;
		
		// XML을 String으로 반환
		result = apiSerializer.receiveToString(spec);
		
		return result;
	}
	
	// 축제 구하기
	@RequestMapping(value = "searchFestival", method = RequestMethod.GET, produces = "application/xml; charset=utf-8")
	@ResponseBody
	public String searchFestival(HttpServletRequest req,
			@RequestParam int areacode) throws Exception {
		String result = "";
		
		String MobileOS = "ETC";
		String MobileApp = "AppTest";
		
		int numOfRows = 10;
		int pageNo = 1;
		
		String spec = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival";
		spec += "?ServiceKey=서비스키";
		spec += "&pageNo="+pageNo;
		spec += "&numOfRows="+numOfRows;
		spec += "&MobileOS="+MobileOS;
		spec += "&MobileApp="+MobileApp;
		spec += "&areaCode="+areacode;
		
		// XML을 String으로 반환
		result = apiSerializer.receiveToString(spec);
		
		return result;
	}
	
	// 내 지역 리스트
	@RequestMapping(value = "locationBasedList", method = RequestMethod.GET, produces = "application/xml; charset=utf-8")
	@ResponseBody
	public String locationBasedList(HttpServletRequest req) throws Exception {
		String result = "";
		
		String MobileOS = "ETC";
		String MobileApp = "AppTest";
		String arrange = "B";
		String mapx = "126.981611";
		String mapy = "37.568477";
		String radious = "1000";
		
		
		int numOfRows = 10;
		int pageNo = 1;
		
		String spec = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/locationBasedList";
		spec += "?ServiceKey=서비스키";
		spec += "&pageNo="+pageNo;
		spec += "&numOfRows="+numOfRows;
		spec += "&MobileOS="+MobileOS;
		spec += "&MobileApp="+MobileApp;
		spec += "&arrange="+arrange;
		spec += "&mapx="+mapx;
		spec += "&mapy="+mapy;
		spec += "&radious="+radious;
		
		
		// XML을 String으로 반환
		result = apiSerializer.receiveToString(spec);
		
		return result;
	}
	
	// 지역 상세보기
	@RequestMapping(value = "localDetail", method = RequestMethod.GET)
	public String localDetail(@RequestParam int contentId,
			@RequestParam int contentTypeId,
			Model model) {
		
		String result = "";
		
		try {
			// 첫번째 API
			String spec = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon";
	 		spec += "?serviceKey=t5hhTD%2BtI3ygSFurlzc0GxMGmmEeDIp9pXphHT%2FXuq5Aw3bFiwsxFMuUs5FokAIKDn7kdbP2otYXVKdmbUuBlg%3D%3D" ;
	 		spec += "&MobileOS=ETC";
	 		spec += "&MobileApp=travel";
	 		spec += "&contentId="+contentId;
	 		spec += "&contentTypeId="+contentTypeId;
	 		spec += "&defaultYN=Y";
	 		spec += "&firstImageYN=Y";
	 		spec += "&areacodeYN=Y";
	 		spec += "&addrinfoYN=Y";
	 		spec += "&overviewYN=Y";
	 		
	 		result = apiSerializer.receiveXmlToJson(spec);
	 		
	 		JSONObject job = new JSONObject(result);
	 		JSONObject item = job.getJSONObject("response").getJSONObject("body").getJSONObject("items").getJSONObject("item");
			
	 		
	 		String addr1 = item.getString("addr1");
	 		String addr2 = item.getString("addr2");
	 		int areaCode = item.getInt("areacode");
	 		String firstimage = item.getString("firstimage");
	 		String firstimage2 = item.getString("firstimage2");
	 		String overview = item.getString("overview");
	 		String title = item.getString("title");
	 		String homepage = item.getString("homepage");
	 		
	 		model.addAttribute("addr1", addr1);
	 		model.addAttribute("addr2", addr2);
	 		model.addAttribute("areacode", areaCode);
	 		model.addAttribute("firstimage", firstimage);
	 		model.addAttribute("firstimage2", firstimage2);
	 		model.addAttribute("overview", overview);
	 		model.addAttribute("title", title);
	 		model.addAttribute("homepage", homepage);
	
		} catch (Exception e) {
			e.printStackTrace();
		}	
	 		
		return ".city.localDetail";
	}
}
