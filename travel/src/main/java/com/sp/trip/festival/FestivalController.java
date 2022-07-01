package com.sp.trip.festival;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.trip.common.APISerializer;
import com.sp.trip.common.MyUtil;

@Controller("festival.festivalController")
@RequestMapping(value = "/festival/*")
public class FestivalController {
	@Autowired
	private FestivalService service;
	
	@Autowired
	private APISerializer apiSerializer;
	
	@Autowired
	private MyUtil myUtil;
	
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list() {
		return ".festival.festivalList";
	}
	
	@RequestMapping(value = "calendar", method = RequestMethod.GET)
	public String calendar() {
		return ".festival.festivalCalendar";
	}
	
	@RequestMapping(value = "readCity", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> readCity(@RequestParam String areaCode) {
		
		Festival dto = service.readCity(areaCode);
		
		int cityNum = dto.getNum();
		String cityName = dto.getCityName();
		String logoImg = dto.getLogoImg();
		String cityInfo = dto.getCityInfo();
		
		Map<String, Object> model = new HashMap<>();
		
		model.put("cityNum", cityNum);
		model.put("cityName", cityName);
		model.put("areaCode", areaCode);
		model.put("logoImg", logoImg);
		model.put("cityInfo", cityInfo);
		
		return model;
	}
	
	
	// AJAX - XML로 응답
	@RequestMapping(value = "requestSigungu", produces = "application/xml; charset=utf-8")
	@ResponseBody
	public String Sigungu(
			HttpServletRequest req,
			@RequestParam int areaCode
			) throws Exception {
		String result = "";
		try {
			
	 		int numOfRows = 25;
	 		int pageNo = 1;
	 		
	 		String spec = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaCode";
	 		spec += "?serviceKey=OXE%2BqFWcBW9SYgR6lvlpIlG%2BXPlSHFJ8mMf5dz6gQwfKrl9ONXPiN9pDLFtJoxAQJrP0W%2F3axVjSVae5y8yjPA%3D%3D" ;
	 		spec += "&numOfRows="+ numOfRows;
	 		spec += "&pageNo="+ pageNo;
	 		spec += "&MobileOS=ETC";
	 		spec += "&MobileApp=travel";
	 		spec += "&areaCode="+areaCode;
	 		
	 		result = apiSerializer.receiveXmlToJson(spec);
	 		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	@RequestMapping(value = "requestFestival", produces = "application/xml; charset=utf-8")
	@ResponseBody
	public String Festival(
			HttpServletRequest req,
			@RequestParam String areaCode,
			@RequestParam int count
			) throws Exception {
		String result = "";
		try {
			
	 		int numOfRows = count;
	 		int pageNo = 1;
	 		
	 		String spec = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival";
	 		spec += "?serviceKey=OXE%2BqFWcBW9SYgR6lvlpIlG%2BXPlSHFJ8mMf5dz6gQwfKrl9ONXPiN9pDLFtJoxAQJrP0W%2F3axVjSVae5y8yjPA%3D%3D" ;
	 		spec += "&numOfRows="+ numOfRows;
	 		spec += "&pageNo="+ pageNo;
	 		spec += "&arrange=P";
	 		spec += "&listYN=Y";
	 		spec += "&MobileOS=ETC";
	 		spec += "&MobileApp=travel";
	 		spec += "&eventStartDate=20220101";
	 		spec += "&eventEndDate=20221231";
	 		if(!areaCode.equals("NULL")) {
	 			spec += "&areaCode="+areaCode;
	 		}
	 		
	 		result = apiSerializer.receiveXmlToJson(spec);
	 		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@RequestMapping("festivalList")
	@ResponseBody
	public Map<String, Object> festivalList(
			HttpServletRequest req,
			@RequestParam String sort,
			@RequestParam String month,
			@RequestParam String areaCode,
			@RequestParam int pageNum
			) throws Exception {
		
		Map<String, Object> model=new HashMap<>();
		String result = "";
		try {
			
	 		int numOfRows = 5;
	 		int pageNo = pageNum;
	 		String arrange = sort;
	 		
	 		String eventStartDate = "20220101";
	 		String eventEndDate = "20221231";
	 		if(!month.equalsIgnoreCase("All")) {
	 			eventStartDate = "2022"+month+"01";
	 			eventEndDate = "2022"+month+"31";
	 		}
	 		
	 		String spec = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival";
	 		spec += "?serviceKey=OXE%2BqFWcBW9SYgR6lvlpIlG%2BXPlSHFJ8mMf5dz6gQwfKrl9ONXPiN9pDLFtJoxAQJrP0W%2F3axVjSVae5y8yjPA%3D%3D" ;
	 		spec += "&numOfRows="+ numOfRows;
	 		spec += "&pageNo="+ pageNo;
	 		spec += "&arrange="+ arrange;
	 		spec += "&listYN=Y";
	 		spec += "&MobileOS=ETC";
	 		spec += "&MobileApp=travel";
	 		spec += "&eventStartDate="+eventStartDate;
	 		spec += "&eventEndDate="+eventEndDate;
	 		if(!areaCode.equalsIgnoreCase("All")) {
	 			spec += "&areaCode="+areaCode;
	 		}
	 		
	 		result = apiSerializer.receiveXmlToJson(spec);
	 		
	 		JSONObject job = new JSONObject(result);
	 		JSONArray items = job.getJSONObject("response").getJSONObject("body").getJSONObject("items").getJSONArray("item");
	 		
	 		int total_page = 0;
	 		
	 		String eventstartdate;
	 		String eventenddate;
	 		
	 		List<String> eventstartdates = new ArrayList<String>();
	 		List<String> eventenddates = new ArrayList<String>();
	 		List<String> firstimages = new ArrayList<String>();
	 		List<String> titles = new ArrayList<String>();
	 		List<String> addr1s = new ArrayList<String>();
	 		List<String> statuses = new ArrayList<String>();
	 		List<String> contentids = new ArrayList<String>();
	 		List<String> contenttypeids = new ArrayList<String>();
	 		
	 		int totalCnt = job.getJSONObject("response").getJSONObject("body").getInt("totalCount");
	 		for(int index = 0; index < items.length(); index++) {
	 			JSONObject ob = items.getJSONObject(index);
	 			
	 			
	 			// 진행 상태 보기
	 			eventstartdate = Integer.toString(ob.getInt("eventstartdate"));
	 			eventenddate = Integer.toString(ob.getInt("eventenddate"));
	 			
	 			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd"); 
	 			Date now = new Date();
	 			String formatedNow = sdf.format(now);
	 			
	 			Date startdate = sdf.parse(eventstartdate);
	 			Date enddate = sdf.parse(eventenddate);
	 			Date nowdate = sdf.parse(formatedNow);
	 			
	 			if(startdate.after(nowdate)) {
	 				statuses.add("진행전");
	 			} else if(enddate.before(nowdate)) {
	 				statuses.add("종료");
	 			} else if(startdate.before(nowdate) && enddate.after(nowdate)) {
	 				statuses.add("진행중");
	 			} else if(startdate.equals(nowdate) || enddate.equals(nowdate)) {
	 				statuses.add("진행중");
	 			}
	 			
	 			// 리스트에 add
	 	        eventstartdates.add(eventstartdate);
	 	        eventenddates.add(eventenddate);
	 			firstimages.add(ob.getString("firstimage"));
	 			titles.add(ob.getString("title"));
	 			contentids.add(Integer.toString(ob.getInt("contentid")));
	 			contenttypeids.add(Integer.toString(ob.getInt("contenttypeid")));
	 			
	 			try {
	 				addr1s.add(ob.getString("addr1"));
				} catch (Exception e) {
					addr1s.add("장소 정보가 존재하지 않습니다.");
				}
	 			
	 		}
	 		
	 		
	 		// 페이징 처리를 위한 변수들
	 		total_page = myUtil.pageCount(numOfRows, totalCnt);
	 		String url = "'"+sort + "', '" + month + "', '" + areaCode + "'";
	 		String paging = myUtil.pagingfestival(pageNum, total_page, url);
	 		
	 		model.put("paging", paging);
	 		model.put("total_page", total_page);
	 		model.put("totalCnt", totalCnt);
	 		model.put("state", "true");
	 		
	 		
	 		model.put("eventstartdates", eventstartdates);
	 		model.put("eventenddates", eventenddates);
	 		model.put("firstimages", firstimages);
	 		model.put("titles", titles);
	 		model.put("addr1s", addr1s);
	 		model.put("statuses", statuses);
	 		model.put("contentids", contentids);
	 		model.put("contenttypeids", contenttypeids);
	 		
		} catch (Exception e) {
			e.printStackTrace();
			model.put("state", "false");
		}
		return model;
	}
	
	// 축제 상세보기
	@RequestMapping(value = "fesDetail", method = RequestMethod.GET)
	public String fesDetail(
			@RequestParam int contentId,
			@RequestParam int contentTypeId,
			Model model) {
		
		String result = "";
		
		try {
			// 첫번째 API
			String spec = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon";
	 		spec += "?serviceKey=OXE%2BqFWcBW9SYgR6lvlpIlG%2BXPlSHFJ8mMf5dz6gQwfKrl9ONXPiN9pDLFtJoxAQJrP0W%2F3axVjSVae5y8yjPA%3D%3D" ;
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
	 		int areaCode = item.getInt("areacode");
	 		String firstimage = item.getString("firstimage");
	 		String firstimage2 = item.getString("firstimage2");
	 		String overview = item.getString("overview");
	 		String title = item.getString("title");
	 		String homepage = item.getString("homepage");

	 		
	 		// 두번째 API
	 		spec = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro";
	 		spec += "?serviceKey=OXE%2BqFWcBW9SYgR6lvlpIlG%2BXPlSHFJ8mMf5dz6gQwfKrl9ONXPiN9pDLFtJoxAQJrP0W%2F3axVjSVae5y8yjPA%3D%3D" ;
	 		spec += "&MobileOS=ETC";
	 		spec += "&MobileApp=travel";
	 		spec += "&contentId="+contentId;
	 		spec += "&contentTypeId="+contentTypeId;

	 		
	 		result = apiSerializer.receiveXmlToJson(spec);
	 		
	 		job = new JSONObject(result);
	 		item = job.getJSONObject("response").getJSONObject("body").getJSONObject("items").getJSONObject("item");
	 		
	 		String eventstartdate = Integer.toString(item.getInt("eventstartdate"));
	 		String eventenddate = Integer.toString(item.getInt("eventenddate"));

	 		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd"); 
 			Date now = new Date();
 			String formatedNow = sdf.format(now);
 			
 			Date startdate = sdf.parse(eventstartdate);
 			Date enddate = sdf.parse(eventenddate);
 			Date nowdate = sdf.parse(formatedNow);
 			
 			String status = "";
 			
 			if(startdate.after(nowdate)) {
 				status = "진행전";
 			} else if(enddate.before(nowdate)) {
 				status = "종료";
 			} else if(startdate.before(nowdate) && enddate.after(nowdate)) {
 				status = "진행중";
 			} else if(startdate.equals(nowdate) || enddate.equals(nowdate)) {
 				status = "진행중";
 			}
	 		
 			sdf = new SimpleDateFormat("yyyy.MM.dd"); 
 			eventstartdate = sdf.format(startdate);
 			eventenddate = sdf.format(enddate);
 			
 			
 			String eventplace = item.getString("eventplace");
 			String sponsor1 = item.getString("sponsor1");
 			String sponsor2 = "";
 			try {
 				sponsor2 = item.getString("sponsor2");
			} catch (Exception e) {
				sponsor2 = item.getString("sponsor1");
			}
 			
 			String sponsor1tel = item.getString("sponsor1tel");
 			
 			String[] addrStr = addr1.split("\\s+");
 			String sigungu = addrStr[0]+ " " + addrStr[1];
	 		
	 		model.addAttribute("addr", addr1);
	 		model.addAttribute("sigungu", sigungu);
	 		model.addAttribute("areacode", areaCode);
	 		model.addAttribute("firstimage", firstimage);
	 		model.addAttribute("firstimage2", firstimage2);
	 		model.addAttribute("overview", overview);
	 		model.addAttribute("title", title);
	 		model.addAttribute("homepage", homepage);
	 		
	 		model.addAttribute("eventstartdate", eventstartdate);
	 		model.addAttribute("eventenddate", eventenddate);
	 		model.addAttribute("status", status);
	 		model.addAttribute("eventplace", eventplace);
	 		model.addAttribute("sponsor1", sponsor1);
	 		model.addAttribute("sponsor2", sponsor2);
	 		model.addAttribute("sponsor1tel", sponsor1tel);
	 		
	 		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ".festival.festivalDetail";
	}
	
	
}