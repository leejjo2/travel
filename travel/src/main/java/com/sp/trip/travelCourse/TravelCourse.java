package com.sp.trip.travelCourse;

import java.util.List;

public class TravelCourse {
	private String userId; 
	
	// 관리자 추천 코스
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
	
	// 코스 상세
	private List<Integer> courseDetailNum;
	private List<Integer> course_seq; // 순서
	private List<String> placeName;
	private List<String>  address;
	private List<String>  longitude; // 위도
	private List<String>  latitude; // 경도
	private List<String>  detailContent;
	private int detailCityNum;
	private String detailCityName;
	
	
	
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
	public List<Integer> getCourseDetailNum() {
		return courseDetailNum;
	}
	public void setCourseDetailNum(List<Integer> courseDetailNum) {
		this.courseDetailNum = courseDetailNum;
	}
	public List<Integer> getCourse_seq() {
		return course_seq;
	}
	public void setCourse_seq(List<Integer> course_seq) {
		this.course_seq = course_seq;
	}
	public List<String> getPlaceName() {
		return placeName;
	}
	public void setPlaceName(List<String> placeName) {
		this.placeName = placeName;
	}
	public List<String> getAddress() {
		return address;
	}
	public void setAddress(List<String> address) {
		this.address = address;
	}
	public List<String> getLongitude() {
		return longitude;
	}
	public void setLongitude(List<String> longitude) {
		this.longitude = longitude;
	}
	public List<String> getLatitude() {
		return latitude;
	}
	public void setLatitude(List<String> latitude) {
		this.latitude = latitude;
	}
	public List<String> getDetailContent() {
		return detailContent;
	}
	public void setDetailContent(List<String> detailContent) {
		this.detailContent = detailContent;
	}
	public int getDetailCityNum() {
		return detailCityNum;
	}
	public void setDetailCityNum(int detailCityNum) {
		this.detailCityNum = detailCityNum;
	}
	public String getDetailCityName() {
		return detailCityName;
	}
	public void setDetailCityName(String detailCityName) {
		this.detailCityName = detailCityName;
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
