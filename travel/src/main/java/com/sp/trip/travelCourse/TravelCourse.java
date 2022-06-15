package com.sp.trip.travelCourse;

import java.util.List;


public class TravelCourse {
	private String userId; 
	
	// 추천 코스
	private int courseNum;
	private String subject;
	private String content;
	private String reg_date;
	private int hitCount;
	private int cityNum;
	private String cityName;
	private int themeNum;
	private String period;
	private String hastag;
	
	// 코스 상세 List
	private List<Integer> courseSeq; // 코스순서
	private List<String> placeNames;
	private List<String>  addresss;
	private List<String>  longitudes; // 위도
	private List<String>  latitudes; // 경도
	private List<String>  detailContents;
	
	// 코스 상세 
	private int courseDetailNum;
	private int course_seq; // 순서
	private String placeName;
	private String  address;
	private String  longitude; // 위도
	private String  latitude; // 경도
	private String  detailContent;
	
	
	
	
	
	// 코스 이미지
	private List<Integer> imageFileNum;
	private List<String> saveFilename;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getCourseNum() {
		return courseNum;
	}
	public void setCourseNum(int courseNum) {
		this.courseNum = courseNum;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public int getHitCount() {
		return hitCount;
	}
	public void setHitCount(int hitCount) {
		this.hitCount = hitCount;
	}
	public int getCityNum() {
		return cityNum;
	}
	public void setCityNum(int cityNum) {
		this.cityNum = cityNum;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public int getThemeNum() {
		return themeNum;
	}
	public void setThemeNum(int themeNum) {
		this.themeNum = themeNum;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public String getHastag() {
		return hastag;
	}
	public void setHastag(String hastag) {
		this.hastag = hastag;
	}
	public List<Integer> getcourseSeq() {
		return courseSeq;
	}
	public void setcourseSeq(List<Integer> courseSeq) {
		this.courseSeq = courseSeq;
	}
	public List<String> getPlaceNames() {
		return placeNames;
	}
	public void setPlaceNames(List<String> placeNames) {
		this.placeNames = placeNames;
	}
	public List<String> getAddresss() {
		return addresss;
	}
	public void setAddresss(List<String> addresss) {
		this.addresss = addresss;
	}
	public List<String> getLongitudes() {
		return longitudes;
	}
	public void setLongitudes(List<String> longitudes) {
		this.longitudes = longitudes;
	}
	public List<String> getLatitudes() {
		return latitudes;
	}
	public void setLatitudes(List<String> latitudes) {
		this.latitudes = latitudes;
	}
	public List<String> getDetailContents() {
		return detailContents;
	}
	public void setDetailContents(List<String> detailContents) {
		this.detailContents = detailContents;
	}
	public int getCourseDetailNum() {
		return courseDetailNum;
	}
	public void setCourseDetailNum(int courseDetailNum) {
		this.courseDetailNum = courseDetailNum;
	}
	public int getCourse_seq() {
		return course_seq;
	}
	public void setCourse_seq(int course_seq) {
		this.course_seq = course_seq;
	}
	public String getPlaceName() {
		return placeName;
	}
	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getDetailContent() {
		return detailContent;
	}
	public void setDetailContent(String detailContent) {
		this.detailContent = detailContent;
	}
	
	public List<Integer> getImageFileNum() {
		return imageFileNum;
	}
	public void setImageFileNum(List<Integer> imageFileNum) {
		this.imageFileNum = imageFileNum;
	}
	public List<String> getSaveFilename() {
		return saveFilename;
	}
	public void setSaveFilename(List<String> saveFilename) {
		this.saveFilename = saveFilename;
	}
	
}
